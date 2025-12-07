__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1BD83AA24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD83AA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 216) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1BD83AAF4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = "y";
  v7 = *(v0 + 208);
  if (v7 == 1)
  {
    v6 = "HEADER_STOREPICKUP_OPTIONS";
  }

  if (v7 == 2)
  {
    v6 = "HEADER_SERVICEPICKUP_OPTIONS";
  }

  if (v7 == 3)
  {
    v8 = "HEADER_SHIPPING_OPTIONS";
  }

  else
  {
    v8 = v6;
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    (v8 | 0x8000000000000000), v12, v13, v14, v15, v16, v17, v18;

    (*(v2 + 8))(v5, v1);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD83AC90()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 208);
  if (v6 == 2)
  {
    v7 = 0x80000001BE1359F0;
  }

  else
  {
    v7 = 0xEE00454C5449545FLL;
  }

  if (v6 == 3)
  {
    v8 = 0x80000001BE1359D0;
  }

  else
  {
    v8 = v7;
  }

  (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v8, v12, v13, v14, v15, v16, v17, v18;

    (*(v2 + 8))(v5, v1);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD83AE54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[11];
  v17[10] = a1[10];
  v17[11] = v2;
  v3 = a1[13];
  v17[12] = a1[12];
  v17[13] = v3;
  v4 = a1[7];
  v17[6] = a1[6];
  v17[7] = v4;
  v5 = a1[9];
  v17[8] = a1[8];
  v17[9] = v5;
  v6 = a1[3];
  v17[2] = a1[2];
  v17[3] = v6;
  v7 = a1[5];
  v17[4] = a1[4];
  v17[5] = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a2[11];
  v18[10] = a2[10];
  v18[11] = v9;
  v10 = a2[13];
  v18[12] = a2[12];
  v18[13] = v10;
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  return sub_1BD83AEF8(v17, v18) & 1;
}

uint64_t sub_1BD83AEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v4;
  v5 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v5;
  v6 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v6;
  v7 = *(a2 + 16);
  v72[0] = *a2;
  v72[1] = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v72[4] = *(a2 + 64);
  v72[5] = v10;
  v72[2] = v8;
  v72[3] = v9;
  v11 = *&v73[0];
  v12 = *&v72[0];
  if (!*&v73[0])
  {
    if (!*&v72[0])
    {
      *&v62[40] = *(a1 + 40);
      *&v62[56] = *(a1 + 56);
      *&v62[72] = *(a1 + 72);
      v30 = *(a1 + 88);
      *v62 = 0;
      *&v62[88] = v30;
      *&v62[8] = *(a1 + 8);
      *&v62[24] = *(a1 + 24);
      sub_1BD0DE19C(v73, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
      sub_1BD0DE19C(v72, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
      sub_1BD0DE53C(v62, &qword_1EBD45FA8, &unk_1BE1002F0);
      goto LABEL_14;
    }

LABEL_7:
    *&v62[40] = *(a1 + 40);
    *&v62[56] = *(a1 + 56);
    *&v62[72] = *(a1 + 72);
    v20 = *(a1 + 88);
    *v62 = *&v73[0];
    *&v62[88] = v20;
    *&v62[96] = *&v72[0];
    *&v62[8] = *(a1 + 8);
    *&v62[24] = *(a1 + 24);
    v63 = *(a2 + 24);
    *&v62[104] = *(a2 + 8);
    v21 = *(a2 + 40);
    v22 = *(a2 + 56);
    v23 = *(a2 + 72);
    *&v67 = *(a2 + 88);
    v66 = v23;
    v65 = v22;
    v64 = v21;
    sub_1BD0DE19C(v73, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
    sub_1BD0DE19C(v72, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
    v24 = &unk_1EBD55548;
    v25 = &unk_1BE0FC878;
LABEL_8:
    v26 = v62;
LABEL_10:
    sub_1BD0DE53C(v26, v24, v25);
    goto LABEL_11;
  }

  if (!*&v72[0])
  {
    goto LABEL_7;
  }

  *&v62[40] = *(a2 + 40);
  *&v62[56] = *(a2 + 56);
  *&v62[72] = *(a2 + 72);
  v13 = *(a2 + 88);
  *v62 = *&v72[0];
  *&v62[88] = v13;
  *&v62[8] = *(a2 + 8);
  *&v62[24] = *(a2 + 24);
  sub_1BD0DE19C(v73, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
  sub_1BD0DE19C(v72, &v74, &qword_1EBD45FA8, &unk_1BE1002F0);
  if ((sub_1BD3FE0F0(v11, v12) & 1) == 0)
  {
    sub_1BD0DE53C(v62, &qword_1EBD45FA8, &unk_1BE1002F0);
    v77 = *(a1 + 40);
    v78 = *(a1 + 56);
    v79 = *(a1 + 72);
    v27 = *(a1 + 88);
    v74 = v11;
    *&v80 = v27;
    v75 = *(a1 + 8);
    v76 = *(a1 + 24);
    v26 = &v74;
    v24 = &qword_1EBD45FA8;
    v25 = &unk_1BE1002F0;
    goto LABEL_10;
  }

  v14 = *(a1 + 56);
  v82[2] = *(a1 + 40);
  v82[3] = v14;
  v82[4] = *(a1 + 72);
  v83 = *(a1 + 88);
  v15 = *(a1 + 24);
  v82[0] = *(a1 + 8);
  v82[1] = v15;
  v16 = *(a2 + 56);
  v84[2] = *(a2 + 40);
  v84[3] = v16;
  v84[4] = *(a2 + 72);
  v85 = *(a2 + 88);
  v17 = *(a2 + 24);
  v84[0] = *(a2 + 8);
  v84[1] = v17;
  v18 = sub_1BD5C795C(v82, v84);
  sub_1BD0DE53C(v62, &qword_1EBD45FA8, &unk_1BE1002F0);
  v77 = *(a1 + 40);
  v78 = *(a1 + 56);
  v79 = *(a1 + 72);
  v19 = *(a1 + 88);
  v74 = v11;
  *&v80 = v19;
  v75 = *(a1 + 8);
  v76 = *(a1 + 24);
  sub_1BD0DE53C(&v74, &qword_1EBD45FA8, &unk_1BE1002F0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v31 = *(a1 + 176);
  v71[4] = *(a1 + 160);
  v71[5] = v31;
  v71[6] = *(a1 + 192);
  v32 = *(a1 + 112);
  v71[0] = *(a1 + 96);
  v71[1] = v32;
  v33 = *(a1 + 144);
  v71[2] = *(a1 + 128);
  v71[3] = v33;
  v34 = *(a2 + 112);
  v70[0] = *(a2 + 96);
  v70[1] = v34;
  v35 = *(a2 + 128);
  v36 = *(a2 + 144);
  v37 = *(a2 + 192);
  v70[5] = *(a2 + 176);
  v70[6] = v37;
  v38 = *(a2 + 160);
  v70[3] = v36;
  v70[4] = v38;
  v70[2] = v35;
  v39 = *&v71[0];
  if (*&v71[0])
  {
    if (*&v70[0])
    {
      *v53 = *&v70[0];
      *&v53[8] = *(a2 + 104);
      *&v53[24] = *(a2 + 120);
      *&v53[40] = *(a2 + 136);
      *&v53[104] = *(a2 + 200);
      *&v53[88] = *(a2 + 184);
      *&v53[72] = *(a2 + 168);
      *&v53[56] = *(a2 + 152);
      *v62 = *v53;
      *&v62[16] = *&v53[16];
      *&v62[80] = *&v53[80];
      *&v62[96] = *&v53[96];
      *&v62[48] = *&v53[48];
      *&v62[64] = *&v53[64];
      *&v62[32] = *&v53[32];
      v40 = *(a1 + 104);
      v41 = *(a1 + 120);
      v77 = *(a1 + 136);
      v76 = v41;
      v75 = v40;
      v42 = *(a1 + 152);
      v43 = *(a1 + 168);
      v44 = *(a1 + 200);
      v80 = *(a1 + 184);
      v79 = v43;
      v78 = v42;
      v81 = v44;
      v74 = *&v71[0];
      sub_1BD0DE19C(v71, &v54, &qword_1EBD4C950, &qword_1BE0CA3D0);
      sub_1BD0DE19C(v70, &v54, &qword_1EBD4C950, &qword_1BE0CA3D0);
      v45 = sub_1BD514E48(&v74, v62);
      sub_1BD0DE53C(v53, &qword_1EBD4C950, &qword_1BE0CA3D0);
      v54 = v39;
      v58 = *(a1 + 152);
      v59 = *(a1 + 168);
      v60 = *(a1 + 184);
      v61 = *(a1 + 200);
      v55 = *(a1 + 104);
      v56 = *(a1 + 120);
      v57 = *(a1 + 136);
      sub_1BD0DE53C(&v54, &qword_1EBD4C950, &qword_1BE0CA3D0);
      if ((v45 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (*&v70[0])
  {
LABEL_19:
    *&v62[56] = *(a1 + 152);
    *&v62[72] = *(a1 + 168);
    *&v62[88] = *(a1 + 184);
    v46 = *(a1 + 200);
    *v62 = *&v71[0];
    *&v62[104] = v46;
    *&v62[112] = *&v70[0];
    *&v62[8] = *(a1 + 104);
    *&v62[24] = *(a1 + 120);
    *&v62[40] = *(a1 + 136);
    v47 = *(a2 + 104);
    v48 = *(a2 + 120);
    v65 = *(a2 + 136);
    v64 = v48;
    v63 = v47;
    v49 = *(a2 + 152);
    v50 = *(a2 + 168);
    v51 = *(a2 + 184);
    v69 = *(a2 + 200);
    v68 = v51;
    v67 = v50;
    v66 = v49;
    sub_1BD0DE19C(v71, &v74, &qword_1EBD4C950, &qword_1BE0CA3D0);
    sub_1BD0DE19C(v70, &v74, &qword_1EBD4C950, &qword_1BE0CA3D0);
    v24 = &unk_1EBD55550;
    v25 = &unk_1BE0FC880;
    goto LABEL_8;
  }

  *&v62[56] = *(a1 + 152);
  *&v62[72] = *(a1 + 168);
  *&v62[88] = *(a1 + 184);
  v52 = *(a1 + 200);
  *v62 = 0;
  *&v62[104] = v52;
  *&v62[8] = *(a1 + 104);
  *&v62[24] = *(a1 + 120);
  *&v62[40] = *(a1 + 136);
  sub_1BD0DE19C(v71, &v74, &qword_1EBD4C950, &qword_1BE0CA3D0);
  sub_1BD0DE19C(v70, &v74, &qword_1EBD4C950, &qword_1BE0CA3D0);
  sub_1BD0DE53C(v62, &qword_1EBD4C950, &qword_1BE0CA3D0);
LABEL_21:
  if (*(a1 + 208) == *(a2 + 208))
  {
    v28 = sub_1BD84252C(*(a1 + 216), *(a2 + 216));
    return v28 & 1;
  }

LABEL_11:
  v28 = 0;
  return v28 & 1;
}

void sub_1BD83B564(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentRequest];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shippingType];

    v9 = a1;
    sub_1BD6D4E94(v9, v34);
    v10 = v9;
    sub_1BE048964();
    sub_1BD514FE8(v10, a2, v35);
    v11 = [v10 paymentRequest];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 requiredShippingContactFields];

      type metadata accessor for PKContactField(0);
      sub_1BD231AF0();
      v14 = sub_1BE052A34();

      a2, v15, v16, v17, v18, v19, v20, v21;
      v24 = v34[2];
      v25 = v34[3];
      v26 = v34[4];
      v27 = v34[5];
      v22 = v34[0];
      v23 = v34[1];
      v32 = v35[5];
      v33 = v35[6];
      v30 = v35[2];
      v31 = v35[3];
      v28 = v35[0];
      v29 = v35[1];
      *(a3 + 160) = v35[4];
      *(a3 + 176) = v32;
      *(a3 + 192) = v33;
      *(a3 + 128) = v30;
      *(a3 + 144) = v31;
      *(a3 + 96) = v28;
      *(a3 + 112) = v29;
      *(a3 + 64) = v26;
      *(a3 + 80) = v27;
      *(a3 + 32) = v24;
      *(a3 + 48) = v25;
      *a3 = v22;
      *(a3 + 16) = v23;
      *(a3 + 208) = v8;
      *(a3 + 216) = v14;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AuthenticatorModel(uint64_t a1)
{
  result = qword_1EBD363E8;
  if (!qword_1EBD363E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD83B748(uint64_t a1)
{
  sub_1BD83F988(319, &unk_1EBD368E0, type metadata accessor for PKAuthenticatorPolicy, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1BD83F988(319, &qword_1EBD368B8, type metadata accessor for PKAuthenticatorCoachingState, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1BD83F988(319, &unk_1EBD368A0, type metadata accessor for PKAuthenticatorEvaluationStateChangeEvent, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1BD83F988(319, &qword_1EBD36928, MEMORY[0x1E69BC990], MEMORY[0x1E695C070]);
        if (v4 <= 0x3F)
        {
          sub_1BD83F8D4();
          if (v5 <= 0x3F)
          {
            sub_1BD83F924(319);
            if (v6 <= 0x3F)
            {
              sub_1BD83F988(319, &qword_1EBD36A28, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

__n128 sub_1BD83BA6C@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v24);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v19 = v24[0];
  result = v24[1];
  v21 = v24[5];
  v20 = v24[6];
  v22 = v24[3];
  v23 = v24[2];
  *(a1 + 64) = v24[4];
  *(a1 + 80) = v21;
  *(a1 + 96) = v20;
  *a1 = v19;
  *(a1 + 16) = result;
  *(a1 + 32) = v23;
  *(a1 + 48) = v22;
  return result;
}

void sub_1BD83BB10(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD83BB88()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD83BBFC()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v0 + qword_1EBDAADA8 + 32) paymentRequest];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result requestType];

  if (v8 == 13 && (sub_1BE04CA64() & 1) != 0)
  {
    (*(v2 + 104))(v5, *MEMORY[0x1E69B8068], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v9 = result;
      v10 = sub_1BE04B6F4();

      (*(v2 + 8))(v5, v1);
      return v10;
    }

    goto LABEL_9;
  }

  return 0;
}

uint64_t sub_1BD83BD94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v57 = *(a1 + 8);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (v3 + qword_1EBDAADA8);
  v9 = *(v3 + qword_1EBDAADA8);
  v10 = *(v3 + qword_1EBDAADA8 + 32);
  v53 = *(v3 + qword_1EBDAADA8 + 24);
  v11 = *(v3 + qword_1EBDAADA8 + 40);
  v12 = *(a1 + 16);
  *v8 = *a1;
  v8[1] = v12;
  v8[2] = *(a1 + 32);
  v13 = v5;
  sub_1BD0DE19C(&v57, v58, &qword_1EBD3D490, &unk_1BE0D42B0);
  v52 = v6;
  v14 = v6;
  v15 = v3;
  v51 = v14;
  v16 = v7;
  sub_1BE048964();
  v11, v17, v18, v19, v20, v21, v22, v23;

  swift_unknownObjectRelease();
  v24 = sub_1BD84038C(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v58[0] = v24;
  sub_1BE048964();
  sub_1BE04D8C4();
  v25 = *(v3 + qword_1EBDAADC0);
  v26 = v8[1];
  v58[0] = *v8;
  v58[1] = v26;
  v59 = v8[2];
  v27 = *&v58[0];
  v28 = v59;
  v60 = *(&v58[0] + 1);
  v61 = *(&v26 + 1);
  v29 = *(&v59 + 1);
  sub_1BE048964();
  v30 = v27;
  sub_1BD0DE19C(&v60, v56, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v61, v56, &qword_1EBD40150, &qword_1BE0C12A0);
  v31 = v28;
  sub_1BE048964();
  sub_1BDA74FEC(v58, v15, a2, a3);

  sub_1BD0DE53C(&v60, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v61, &qword_1EBD40150, &qword_1BE0C12A0);
  v25, v32, v33, v34, v35, v36, v37, v38;
  v29, v39, v40, v41, v42, v43, v44, v45;

  if (*(a1 + 16) == 7)
  {
    if (v52)
    {
      objc_opt_self();
      v46 = swift_dynamicCastObjCClass();
      if (v46)
      {
        v47 = v46;
        v48 = qword_1EBD36FA0;
        v49 = v51;
        if (v48 != -1)
        {
          swift_once();
        }

        [v47 kind];
        sub_1BD6CF234();
      }
    }
  }

  else
  {
    if (qword_1EBD36418 != -1)
    {
      swift_once();
    }

    sub_1BD6CF234();
  }

  return sub_1BE04CAF4();
}

uint64_t sub_1BD83C0A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v108 = a2;
  v109 = a4;
  v106 = a3;
  v110 = a1;
  v6 = sub_1BE051F54();
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE051FA4();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1BE051FC4();
  v99 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v95 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v92 - v13;
  v116 = sub_1BE04AFE4();
  v98 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v96 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v92 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v92 - v18;
  v20 = sub_1BE051F44();
  v115 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04C7B4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v92 - v26;
  v28 = swift_allocObject();
  v97 = v5;
  swift_weakInit();
  v29 = *(v23 + 16);
  v29(v27, v110, v22);
  v107 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29(v107, v27, v22);
  v30 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v31 = swift_allocObject();
  v32 = v108;
  v31[2] = v28;
  v31[3] = v32;
  v33 = v106;
  v31[4] = v106;
  v34 = *(v23 + 32);
  v110 = v31;
  v34(v31 + v30, v27, v22);
  sub_1BD0DE19C(v109, v19, &unk_1EBD45E40, &unk_1BE0D5BB0);
  v35 = v115;
  LODWORD(v27) = (*(v115 + 48))(v19, 1, v20);
  sub_1BD0D44B8(v32, v33);
  if (v27 == 1)
  {
    sub_1BE048964();
    sub_1BD0DE53C(v19, &unk_1EBD45E40, &unk_1BE0D5BB0);
    v36 = v32;
    v37 = v107;
    sub_1BD83ECA4(v28, v36, v33, v107);
    v28, v38, v39, v40, v41, v42, v43, v44;
    v110, v45, v46, v47, v48, v49, v50, v51;
    return (*(v23 + 8))(v37, v22);
  }

  else
  {
    (*(v23 + 8))(v107, v22);
    v53 = *(v35 + 32);
    v54 = v111;
    v92 = v20;
    v53(v111, v19, v20);
    v55 = v112;
    sub_1BE04AFD4();
    v56 = v98;
    v57 = *(v98 + 16);
    v58 = v93;
    v59 = v116;
    v57(v93, v55, v116);
    (*(v56 + 56))(v58, 0, 1, v59);
    v60 = qword_1EBD36428;
    v61 = v97;
    swift_beginAccess();
    sub_1BD12651C(v58, v61 + v60);
    swift_endAccess();
    v62 = v95;
    sub_1BE051FB4();
    MEMORY[0x1BFB3F070](v62, v54);
    v109 = *(v99 + 8);
    v109(v62, v114);
    sub_1BD14BE3C();
    v108 = sub_1BE052D54();
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = v96;
    v65 = v116;
    v57(v96, v55, v116);
    v66 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v67 = (v94 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    (*(v56 + 32))(v68 + v66, v64, v65);
    v69 = (v68 + v67);
    v70 = v110;
    *v69 = sub_1BD83F9F4;
    v69[1] = v70;
    aBlock[4] = sub_1BD83FA5C;
    v118 = v68;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_189;
    v71 = _Block_copy(aBlock);
    v72 = v118;
    sub_1BE048964();
    v72, v73, v74, v75, v76, v77, v78, v79;
    v80 = v100;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD8405B0(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v81 = v102;
    v82 = v105;
    sub_1BE053664();
    v83 = v113;
    v84 = v108;
    MEMORY[0x1BFB3FD90](v113, v80, v81, v71);
    _Block_release(v71);
    v70, v85, v86, v87, v88, v89, v90, v91;

    (*(v104 + 8))(v81, v82);
    (*(v101 + 8))(v80, v103);
    v109(v83, v114);
    (*(v56 + 8))(v112, v116);
    return (*(v115 + 8))(v111, v92);
  }
}

void sub_1BD83CA74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v6 = v5;
  v111 = a5;
  v11 = sub_1BE04BD74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v108 = v12;
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v109 = a4;
    v16 = v15;
    sub_1BE04D8B4(v113);
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
    v16, v24, v25, v26, v27, v28, v29, v30;
    v31 = *(&v113[0] + 1);
    v107 = *&v113[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v113[0] = a1;
    *(&v113[0] + 1) = a2;
    sub_1BE048964();
    sub_1BE04D8C4();
    v32 = *(v6 + qword_1EBDAADC0);
    v12 = v108;
    v33 = swift_getKeyPath();
    v34 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v113);
    v33, v35, v36, v37, v38, v39, v40, v41;
    v34, v42, v43, v44, v45, v46, v47, v48;
    v49 = v31;
    a4 = v109;
    sub_1BDA74F1C(v107, v49, *&v113[0], *(&v113[0] + 1));
    v32, v50, v51, v52, v53, v54, v55, v56;
  }

  v57 = qword_1EBDAADC0;
  v58 = *(v6 + qword_1EBDAADC0);
  if (*(v58 + 225) != 1 || (v59 = sub_1BE04CB34(), v58 = *(v6 + v57), (v59 & 1) == 0) || *(v58 + 60) != 1)
  {
    if ((*(v58 + 225) & 1) == 0 && (sub_1BE04CB34() & 1) == 0 && *(*(v6 + v57) + 60) == 1)
    {
      v84 = [*(v6 + qword_1EBDAADA8 + 32) paymentRequest];
      if (!v84)
      {
        goto LABEL_19;
      }

      v85 = v84;
      v86 = [v84 _isAMPPayment];

      if (v86)
      {
        sub_1BE04CB64();
      }
    }

    if ((v111 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v113[0] = a4;
      sub_1BE048964();
      sub_1BE04D8C4();
    }

    v87 = *(v6 + v57);
    v88 = *(v6 + qword_1EBDAADA8 + 16);
    v113[0] = *(v6 + qword_1EBDAADA8);
    v113[1] = v88;
    v114 = *(v6 + qword_1EBDAADA8 + 32);
    v89 = *&v113[0];
    v90 = v114;
    v115 = *(&v113[0] + 1);
    v116[0] = *(&v88 + 1);
    v91 = *(&v114 + 1);
    sub_1BE048964();
    v92 = v89;
    sub_1BD0DE19C(&v115, v112, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(v116, v112, &qword_1EBD40150, &qword_1BE0C12A0);
    v83 = v90;
    sub_1BE048964();
    sub_1BDA74FEC(v113, v6, 0, 0);

    sub_1BD0DE53C(&v115, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(v116, &qword_1EBD40150, &qword_1BE0C12A0);
    v87, v93, v94, v95, v96, v97, v98, v99;
    v91, v100, v101, v102, v103, v104, v105, v106;
    goto LABEL_17;
  }

  v60 = *MEMORY[0x1E69BBBC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 40) = v62;
  v63 = v110;
  (*(v12 + 104))(v110, *MEMORY[0x1E69B8068], v11);
  v64 = v60;
  v65 = PKPassKitBundle();
  if (v65)
  {
    v66 = v65;
    v67 = sub_1BE04B6F4();
    v69 = v68;

    (*(v12 + 8))(v63, v11);
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v67;
    *(inited + 56) = v69;
    v70 = sub_1BD1AACF8(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
    v71 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v72 = sub_1BE052224();
    v70, v73, v74, v75, v76, v77, v78, v79;
    v80 = [v71 initWithDomain:v64 code:-2012 userInfo:v72];

    v81 = *(v6 + qword_1EBDAADA8);
    v82 = v80;
    v83 = sub_1BE04A844();

    [v81 didEncounterError_];
LABEL_17:

    return;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

double sub_1BD83D050@<D0>(_OWORD *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v21);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  result = *v21;
  v19 = v21[1];
  v20 = v21[2];
  *a1 = v21[0];
  a1[1] = v19;
  a1[2] = v20;
  return result;
}

char *sub_1BD83D0D4(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v5 = v4;
  v118 = a4;
  v110[0] = a3;
  v119 = a2;
  v117 = a1;
  v110[1] = *v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0, &qword_1BE0B7530);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = v110 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8, &qword_1BE0FCA98);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = v110 - v7;
  v122 = sub_1BE04BD74();
  v127 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v126 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0, &qword_1BE0FCA90);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = v110 - v9;
  v10 = sub_1BE04C7B4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v121 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v110 - v14;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0, &unk_1BE0FCA80);
  v16 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v18 = v110 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598, &qword_1BE0FCA78);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v110 - v21;
  v23 = qword_1EBD36400;
  *&v130 = 2;
  type metadata accessor for PKAuthenticatorPolicy(0);
  sub_1BE04D874();
  v24 = v19;
  v25 = v122;
  (*(v20 + 32))(v5 + v23, v22, v24);
  v26 = qword_1EBD36448;
  *&v130 = 0;
  type metadata accessor for PKAuthenticatorCoachingState(0);
  sub_1BE04D874();
  (*(v16 + 32))(v5 + v26, v18, v120);
  v27 = qword_1EBD36438;
  (*(v11 + 104))(v15, *MEMORY[0x1E69BC988], v10);
  (*(v11 + 16))(v121, v15, v10);
  v28 = v123;
  sub_1BE04D874();
  v29 = v15;
  v30 = v126;
  v31 = v10;
  v32 = v5;
  (*(v11 + 8))(v29, v31);
  v33 = v127;
  (*(v124 + 32))(v5 + v27, v28, v125);
  (*(v33 + 104))(v30, *MEMORY[0x1E69B8068], v25);
  result = PKPassKitBundle();
  if (result)
  {
    v35 = result;
    v36 = qword_1EBD36410;
    v37 = sub_1BE04B6F4();
    v39 = v38;

    (*(v33 + 8))(v30, v25);
    v130 = 0uLL;
    v131 = 6uLL;
    v132 = 0uLL;
    v133 = 0;
    v134 = v37;
    v135 = v39;
    v136 = 0;
    v137 = 1;
    v139 = 0;
    v140 = 0;
    v138 = 0;
    v40 = v111;
    sub_1BE04D874();
    (*(v112 + 32))(v5 + v36, v40, v113);
    v41 = qword_1EBD55568;
    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55590, &qword_1BE0B7128);
    v42 = v114;
    sub_1BE04D874();
    (*(v115 + 32))(v5 + v41, v42, v116);
    *(v5 + qword_1EBD55570) = 0;
    v43 = (v5 + qword_1EBDAADB0);
    *v43 = 0;
    v43[1] = 0;
    v44 = qword_1EBD36428;
    v45 = sub_1BE04AFE4();
    (*(*(v45 - 8) + 56))(v5 + v44, 1, 1, v45);
    IsAvailable = PKUserIntentIsAvailable();
    v47 = 3;
    if (!IsAvailable)
    {
      v47 = 0;
    }

    v48 = (v5 + qword_1EBD55580);
    *v48 = v47;
    v48[1] = 0;
    v49 = v117;
    v51 = *v117;
    v50 = *(v117 + 8);
    v52 = *(v117 + 32);
    v141 = *(v117 + 24);
    v142 = v50;
    v53 = *(v117 + 40);
    v54 = (v5 + qword_1EBDAADA8);
    v55 = *(v117 + 32);
    v54[1] = *(v117 + 16);
    v54[2] = v55;
    *v54 = *v49;
    if (v118)
    {
      v56 = objc_opt_self();
      v57 = v51;
      sub_1BD0DE19C(&v142, &v130, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v141, &v130, &qword_1EBD40150, &qword_1BE0C12A0);
      v58 = v52;
      v59 = v52;
      v60 = v53;
      sub_1BE048964();
      v61 = [v56 userIntentStyle];
      v62 = v119;
    }

    else
    {
      v63 = v51;
      sub_1BD0DE19C(&v142, &v130, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v141, &v130, &qword_1EBD40150, &qword_1BE0C12A0);
      v58 = v52;
      v64 = v52;
      v60 = v53;
      sub_1BE048964();
      v62 = v119;
      v61 = v110[0];
    }

    *(v32 + qword_1EBDAADB8) = v61;
    v65 = *v48;
    v66 = v48[1];
    swift_beginAccess();
    v128 = v65;
    v129 = v66;
    type metadata accessor for PKAuthenticatorEvaluationStateChangeEvent(0);
    sub_1BE04D874();
    swift_endAccess();
    if (v62 == 2)
    {
      v67 = sub_1BE04CA94();
    }

    else
    {
      v67 = v62;
    }

    type metadata accessor for GlyphManager();
    swift_allocObject();
    *(v32 + qword_1EBDAADC0) = sub_1BDA74A50(v49, v67 & 1);
    v68 = v51;
    sub_1BD0DE19C(&v142, &v130, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v141, &v130, &qword_1EBD40150, &qword_1BE0C12A0);
    v69 = v58;
    v70 = v60;
    sub_1BE048964();
    v71 = sub_1BE04CC24();
    v72 = *&v71[qword_1EBDAADC0];
    v73 = swift_allocObject();
    swift_weakInit();
    v75 = v72[12];
    v74 = v72[13];
    v72[12] = sub_1BD840520;
    v72[13] = v73;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BD0D4744(v75, v74, v76, v77, v78, v79, v80, v81);
    v72, v82, v83, v84, v85, v86, v87, v88;
    v73, v89, v90, v91, v92, v93, v94, v95;
    sub_1BD83DE78();

    sub_1BD0DE53C(&v142, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v141, &qword_1EBD40150, &qword_1BE0C12A0);
    v71, v96, v97, v98, v99, v100, v101, v102;
    v70, v103, v104, v105, v106, v107, v108, v109;

    return v71;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD83DB64(__int128 *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD83DBD8(a1, a2 & 1);
    v6, v7, v8, v9, v10, v11, v12, v13;
  }
}

uint64_t sub_1BD83DBD8(__int128 *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-v5];
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-v13];
  v15 = *(v8 + 104);
  v15(&v22[-v13], *MEMORY[0x1E69BC988], v7, v12);
  if (a2)
  {
    (v15)(v10, *MEMORY[0x1E69BC980], v7);
  }

  else
  {
    (*(v8 + 16))(v10, v14, v7);
  }

  v16 = sub_1BE051F44();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_1BD83C0A8(v10, 0, 0, v6);
  sub_1BD0DE53C(v6, &unk_1EBD45E40, &unk_1BE0D5BB0);
  v17 = *(v8 + 8);
  v17(v10, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = a1[5];
  v27 = a1[4];
  v28 = v18;
  v29 = a1[6];
  v19 = a1[1];
  v23 = *a1;
  v24 = v19;
  v20 = a1[3];
  v25 = a1[2];
  v26 = v20;
  sub_1BE048964();
  sub_1BD146D60(a1, v22);
  sub_1BE04D8C4();
  return (v17)(v14, v7);
}

uint64_t sub_1BD83DE78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240, &unk_1BE0E8410);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v79 = &v53 - v1;
  v2 = sub_1BE052D34();
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555D0, &qword_1BE0FCAF0);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555D8, &qword_1BE0FCAF8);
  v6 = *(v5 - 8);
  v68 = v5;
  v69 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v53 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555E0, &qword_1BE0FCB00);
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v65 = &v53 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555E8, &qword_1BE0FCB08);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555F0, &qword_1BE0FCB10);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v53 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555F8, &unk_1BE0FCB18);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v53 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  MEMORY[0x1EEE9AC00](v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55608, &qword_1BE0FCB28);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - v19;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55610, &qword_1BE0FCB30);
  MEMORY[0x1EEE9AC00](v56);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55618, &qword_1BE0FCB38);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v22 = &v53 - v21;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55620, &qword_1BE0FCB40);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = &v53 - v23;
  sub_1BE04CBA4();
  v24 = MEMORY[0x1E695C068];
  sub_1BD0DE4F4(&unk_1EBD36958, &qword_1EBD55608, &qword_1BE0FCB28, MEMORY[0x1E695C068]);
  sub_1BE04D8F4();
  (*(v18 + 8))(v20, v17);
  sub_1BE04CAD4();
  v53 = v15;
  sub_1BE04CA84();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0, &qword_1BE0FCA90);
  sub_1BE04D884();
  swift_endAccess();
  v25 = MEMORY[0x1E695BC80];
  sub_1BD0DE4F4(&qword_1EBD369B0, &qword_1EBD55610, &qword_1BE0FCB30, MEMORY[0x1E695BC80]);
  v54 = v24;
  sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, v24);
  sub_1BD0DE4F4(&qword_1EBD36970, &qword_1EBD555F8, &unk_1BE0FCB18, v24);
  sub_1BE04D7B4();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = sub_1BD840528;
  v27[3] = v26;
  sub_1BD0DE4F4(&qword_1EBD369B8, &qword_1EBD55618, &qword_1BE0FCB38, MEMORY[0x1E695BC78]);
  v28 = v55;
  v29 = v58;
  sub_1BE04D8F4();
  v27, v30, v31, v32, v33, v34, v35, v36;
  (*(v59 + 8))(v22, v29);
  v37 = sub_1BE04CC14();
  sub_1BD0DE4F4(&qword_1EBD369A0, &qword_1EBD55620, &qword_1BE0FCB40, v25);
  v38 = v60;
  sub_1BE04D964();
  (*(v61 + 8))(v28, v38);
  v37(v82, 0);
  sub_1BE04CA84();
  sub_1BE04CBE4();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8, &qword_1BE0FCA98);
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD0DE4F4(&qword_1EBD36968, &qword_1EBD555D0, &qword_1BE0FCAF0, v54);
  v39 = v64;
  sub_1BE04D7A4();
  sub_1BD0DE4F4(&unk_1EBD369C0, &qword_1EBD555D8, &qword_1BE0FCAF8, MEMORY[0x1E695BC70]);
  v40 = v65;
  v41 = v68;
  sub_1BE04D904();
  (*(v69 + 8))(v39, v41);
  v42 = v72;
  sub_1BE052D24();
  sub_1BD14BE3C();
  v43 = sub_1BE052D54();
  v82[0] = v43;
  v44 = sub_1BE052D14();
  v45 = v79;
  (*(*(v44 - 8) + 56))(v79, 1, 1, v44);
  sub_1BD0DE4F4(&qword_1EBD36988, &qword_1EBD555E0, &qword_1BE0FCB00, MEMORY[0x1E695BD60]);
  sub_1BD8405B0(&qword_1EBD35EA0, sub_1BD14BE3C, MEMORY[0x1E69E8028]);
  v46 = v70;
  v47 = v73;
  sub_1BE04D934();
  sub_1BD0DE53C(v45, &unk_1EBD4D240, &unk_1BE0E8410);

  (*(v80 + 8))(v42, v81);
  (*(v75 + 8))(v40, v47);
  sub_1BD0DE4F4(&unk_1EBD36978, &qword_1EBD555E8, &qword_1BE0FCB08, MEMORY[0x1E695BE50]);
  v48 = v71;
  v49 = v74;
  sub_1BE04D944();
  (*(v76 + 8))(v46, v49);
  v50 = sub_1BE04CBC4();
  sub_1BD0DE4F4(&unk_1EBD36990, &qword_1EBD555F0, &qword_1BE0FCB10, MEMORY[0x1E695BD38]);
  v51 = v77;
  sub_1BE04D964();
  (*(v78 + 8))(v48, v51);
  return v50(v82, 0);
}

uint64_t sub_1BD83EB9C(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 & 1) == 0 || (a2)
    {
      result, v9, v10, v11, v12, v13, v14, v15;
      return 0;
    }

    v16 = result;
    v17 = result + qword_1EBDAADA8;
    if ([*(result + qword_1EBDAADA8 + 32) fundingMode] == 2)
    {
      v25 = *(v17 + 32);
      v26 = [v25 selectedPaymentOffer];

      v16, v27, v28, v29, v30, v31, v32, v33;
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      v16, v18, v19, v20, v21, v22, v23, v24;
    }

    if (a3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1BD83ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31[-v15];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = sub_1BE04AFE4();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = qword_1EBD36428;
    swift_beginAccess();
    sub_1BD12651C(v16, v18 + v20);
    swift_endAccess();
    v21 = (v18 + qword_1EBDAADB0);
    v22 = *(v18 + qword_1EBDAADB0);
    v23 = *(v18 + qword_1EBDAADB0 + 8);
    *v21 = a2;
    v21[1] = a3;
    sub_1BD0D44B8(a2, a3);
    sub_1BD0D4744(v22, v23, v24, v25, v26, v27, v28, v29);
    v30 = *(v8 + 16);
    v30(v13, a4, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v30(v10, v13, v7);
    sub_1BE04D8C4();
    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

void sub_1BD83EF20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1BE04AFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v51 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39AD0, &qword_1BE0B9600);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39980, &qword_1BE0BF3C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v49[1] = a4;
    v50 = a3;
    v21 = qword_1EBD36428;
    swift_beginAccess();
    (*(v8 + 16))(v18, a2, v7);
    (*(v8 + 56))(v18, 0, 1, v7);
    v22 = *(v10 + 48);
    sub_1BD0DE19C(v20 + v21, v12, &qword_1EBD39980, &qword_1BE0BF3C0);
    sub_1BD0DE19C(v18, &v12[v22], &qword_1EBD39980, &qword_1BE0BF3C0);
    v23 = *(v8 + 48);
    if (v23(v12, 1, v7) == 1)
    {
      sub_1BD0DE53C(v18, &qword_1EBD39980, &qword_1BE0BF3C0);
      if (v23(&v12[v22], 1, v7) == 1)
      {
        v31 = sub_1BD0DE53C(v12, &qword_1EBD39980, &qword_1BE0BF3C0);
        goto LABEL_10;
      }

      v20, v24, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      sub_1BD0DE19C(v12, v15, &qword_1EBD39980, &qword_1BE0BF3C0);
      if (v23(&v12[v22], 1, v7) != 1)
      {
        v39 = v51;
        (*(v8 + 32))(v51, &v12[v22], v7);
        sub_1BD8405B0(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v40 = sub_1BE052334();
        v41 = *(v8 + 8);
        v41(v39, v7);
        sub_1BD0DE53C(v18, &qword_1EBD39980, &qword_1BE0BF3C0);
        v41(v15, v7);
        v31 = sub_1BD0DE53C(v12, &qword_1EBD39980, &qword_1BE0BF3C0);
        if ((v40 & 1) == 0)
        {
LABEL_11:
          v20, v42, v43, v44, v45, v46, v47, v48;
          return;
        }

LABEL_10:
        v50(v31);
        goto LABEL_11;
      }

      v20, v32, v33, v34, v35, v36, v37, v38;
      sub_1BD0DE53C(v18, &qword_1EBD39980, &qword_1BE0BF3C0);
      (*(v8 + 8))(v15, v7);
    }

    sub_1BD0DE53C(v12, &unk_1EBD39AD0, &qword_1BE0B9600);
  }
}

uint64_t sub_1BD83F3A4()
{
  v1 = qword_1EBD36400;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598, &qword_1BE0FCA78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD36448;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0, &unk_1BE0FCA80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD36430;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800, &unk_1BE0CDFB8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD36438;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0, &qword_1BE0FCA90);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD36410;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8, &qword_1BE0FCA98);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD55568;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0, &qword_1BE0B7530);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  *(v0 + qword_1EBDAADC0), v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v0 + qword_1EBDAADA8);
  v21 = *(v0 + qword_1EBDAADA8 + 24);
  v22 = *(v0 + qword_1EBDAADA8 + 32);
  *(v0 + qword_1EBDAADA8 + 40), v23, v24, v25, v26, v27, v28, v29;

  swift_unknownObjectRelease();
  sub_1BD0D4744(*(v0 + qword_1EBDAADB0), *(v0 + qword_1EBDAADB0 + 8), v30, v31, v32, v33, v34, v35);
  return sub_1BD0DE53C(v0 + qword_1EBD36428, &qword_1EBD39980, &qword_1BE0BF3C0);
}

uint64_t sub_1BD83F60C()
{
  v0 = sub_1BE04CC44();
  v1 = qword_1EBD36400;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55598, &qword_1BE0FCA78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD36448;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555A0, &unk_1BE0FCA80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_1EBD36430;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42800, &unk_1BE0CDFB8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = qword_1EBD36438;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B0, &qword_1BE0FCA90);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = qword_1EBD36410;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD555B8, &qword_1BE0FCA98);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = qword_1EBD55568;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD555C0, &qword_1BE0B7530);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  *(v0 + qword_1EBDAADC0), v13, v14, v15, v16, v17, v18, v19;
  v20 = *(v0 + qword_1EBDAADA8);
  v21 = *(v0 + qword_1EBDAADA8 + 24);
  v22 = *(v0 + qword_1EBDAADA8 + 32);
  *(v0 + qword_1EBDAADA8 + 40), v23, v24, v25, v26, v27, v28, v29;

  swift_unknownObjectRelease();
  sub_1BD0D4744(*(v0 + qword_1EBDAADB0), *(v0 + qword_1EBDAADB0 + 8), v30, v31, v32, v33, v34, v35);
  sub_1BD0DE53C(v0 + qword_1EBD36428, &qword_1EBD39980, &qword_1BE0BF3C0);
  return v0;
}

uint64_t sub_1BD83F880()
{
  sub_1BD83F60C();

  return swift_deallocClassInstance();
}

void sub_1BD83F8D4()
{
  if (!qword_1EBD36920)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD36920);
    }
  }
}

void sub_1BD83F924(uint64_t a1)
{
  if (!qword_1EBD55588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55590, &qword_1BE0B7128);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD55588);
    }
  }
}

void sub_1BD83F988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BD83F9F4()
{
  v1 = *(sub_1BE04C7B4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1BD83ECA4(v2, v3, v4, v5);
}

void sub_1BD83FA5C()
{
  v1 = *(sub_1BE04AFE4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_1BD83EF20(v3, v0 + v2, v5, v6);
}

void sub_1BD83FAF0()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = qword_1EBD55570;
  v7 = *&v1[qword_1EBD55570];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *&v1[qword_1EBD55570] = v9;
    sub_1BE04D084();
    sub_1BE048964();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *&v1[v6];
      v1, v13, v14, v15, v16, v17, v18, v19;
      _os_log_impl(&dword_1BD026000, v10, v11, "Increasing physical button hint suppression count. New Value: %ld", v12, 0xCu);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    else
    {

      v1, v20, v21, v22, v23, v24, v25, v26;
    }

    (*(v3 + 8))(v5, v2);
    v27 = *&v1[qword_1EBDAADC0];
    v28 = *&v1[qword_1EBDAADA8 + 16];
    v50[0] = *&v1[qword_1EBDAADA8];
    v50[1] = v28;
    v51 = *&v1[qword_1EBDAADA8 + 32];
    v29 = *&v50[0];
    v30 = v51;
    v52 = *(&v50[0] + 1);
    v53 = *(&v28 + 1);
    v31 = *(&v51 + 1);
    sub_1BE048964();
    v32 = v29;
    sub_1BD0DE19C(&v52, v49, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v53, v49, &qword_1EBD40150, &qword_1BE0C12A0);
    v33 = v30;
    sub_1BE048964();
    sub_1BDA74FEC(v50, v1, 0, 0);

    sub_1BD0DE53C(&v52, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v53, &qword_1EBD40150, &qword_1BE0C12A0);
    v27, v34, v35, v36, v37, v38, v39, v40;
    v31, v41, v42, v43, v44, v45, v46, v47;
  }
}

void sub_1BD83FD74()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = qword_1EBD55570;
  v7 = *&v1[qword_1EBD55570];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *&v1[qword_1EBD55570] = v9;
    sub_1BE04D084();
    sub_1BE048964();
    v10 = sub_1BE04D204();
    v11 = sub_1BE052C54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *&v1[v6];
      v1, v13, v14, v15, v16, v17, v18, v19;
      _os_log_impl(&dword_1BD026000, v10, v11, "Decreasing physical button hint suppression count. New Value: %ld", v12, 0xCu);
      MEMORY[0x1BFB45F20](v12, -1, -1);
    }

    else
    {

      v1, v20, v21, v22, v23, v24, v25, v26;
    }

    (*(v3 + 8))(v5, v2);
    v27 = *&v1[qword_1EBDAADC0];
    v28 = *&v1[qword_1EBDAADA8 + 16];
    v50[0] = *&v1[qword_1EBDAADA8];
    v50[1] = v28;
    v51 = *&v1[qword_1EBDAADA8 + 32];
    v29 = *&v50[0];
    v30 = v51;
    v52 = *(&v50[0] + 1);
    v53 = *(&v28 + 1);
    v31 = *(&v51 + 1);
    sub_1BE048964();
    v32 = v29;
    sub_1BD0DE19C(&v52, v49, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v53, v49, &qword_1EBD40150, &qword_1BE0C12A0);
    v33 = v30;
    sub_1BE048964();
    sub_1BDA74FEC(v50, v1, 0, 0);

    sub_1BD0DE53C(&v52, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v53, &qword_1EBD40150, &qword_1BE0C12A0);
    v27, v34, v35, v36, v37, v38, v39, v40;
    v31, v41, v42, v43, v44, v45, v46, v47;
  }
}

void sub_1BD83FFF8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BE04CB84();
  sub_1BE04D084();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v3 & 1;
    _os_log_impl(&dword_1BD026000, v8, v9, "Setting physicalButtonHidden: %{BOOL}d", v10, 8u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(v2 + qword_1EBDAADC0);
  v12 = *(v2 + qword_1EBDAADA8 + 16);
  v34[0] = *(v2 + qword_1EBDAADA8);
  v34[1] = v12;
  v35 = *(v2 + qword_1EBDAADA8 + 32);
  v13 = *&v34[0];
  v14 = v35;
  v36 = *(&v34[0] + 1);
  v37 = *(&v12 + 1);
  v15 = *(&v35 + 1);
  sub_1BE048964();
  v16 = v13;
  sub_1BD0DE19C(&v36, v33, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v37, v33, &qword_1EBD40150, &qword_1BE0C12A0);
  v17 = v14;
  sub_1BE048964();
  sub_1BDA74FEC(v34, v2, 0, 0);

  sub_1BD0DE53C(&v36, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v37, &qword_1EBD40150, &qword_1BE0C12A0);
  v11, v18, v19, v20, v21, v22, v23, v24;
  v15, v25, v26, v27, v28, v29, v30, v31;
}

uint64_t sub_1BD840250()
{
  result = sub_1BD1123AC(&unk_1F3B8DEF0);
  qword_1EBD36420 = result;
  return result;
}

uint64_t sub_1BD840278()
{
  result = sub_1BD1123C0(&unk_1F3B8DF40);
  qword_1EBD55558 = result;
  return result;
}

uint64_t sub_1BD8402A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55630, &qword_1BE0FCBE0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55638, &qword_1BE0FCBE8) + 36));
  *v7 = sub_1BD840624;
  v7[1] = v5;
  v7[2] = 0;
  v7[3] = 0;
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55640, &unk_1BE0FCBF0) + 36));
  *v8 = 0;
  v8[1] = 0;
  v8[2] = sub_1BD840628;
  v8[3] = v5;
  return swift_retain_n();
}

uint64_t sub_1BD84038C(void *a1)
{
  result = [a1 paymentRequest];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  v4 = [result requestType];

  result = [a1 paymentRequest];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = [result useLocationBasedAuthorization];

  v7 = [a1 mode];
  v8 = v7;
  if (v7 <= 2)
  {
    result = 2;
    switch(v8)
    {
      case 0:
        return result;
      case 1:
        v9 = [a1 praguePolicyRequired];
        v10 = [a1 pinRequired];
        v11 = v6 == 0;
        if (v9)
        {
          v12 = 5;
          if (v6)
          {
            v12 = 7;
          }

          v13 = v10 == 0;
          v14 = 6;
LABEL_19:
          if (v13)
          {
            return v12;
          }

          else
          {
            return v14;
          }
        }

LABEL_16:
        v12 = 2;
        if (!v11)
        {
          v12 = 4;
        }

        v13 = v10 == 0;
        v14 = 3;
        goto LABEL_19;
      case 2:
        return result;
    }

LABEL_15:
    v10 = sub_1BE053994();
    __break(1u);
    goto LABEL_16;
  }

  if ((v7 - 3) >= 2)
  {
    goto LABEL_15;
  }

  if (v4 == 6)
  {
    return 8;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1BD840530@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55628, &qword_1BE0FCB48);
  result = v5(v6, v7, v8, &a1[*(v9 + 80)]);
  *a2 = result;
  return result;
}

uint64_t sub_1BD8405B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD84062C()
{
  result = qword_1EBD55648;
  if (!qword_1EBD55648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55640, &unk_1BE0FCBF0);
    sub_1BD8406B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55648);
  }

  return result;
}

unint64_t sub_1BD8406B8()
{
  result = qword_1EBD55650;
  if (!qword_1EBD55650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55638, &qword_1BE0FCBE8);
    sub_1BD0DE4F4(&qword_1EBD55658, &qword_1EBD55630, &qword_1BE0FCBE0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55650);
  }

  return result;
}

__n128 sub_1BD840770@<Q0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v25);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v36 = v25[12];
  v32 = v25[6];
  v33 = v25[7];
  v34 = v25[8];
  v35 = v25[9];
  v28 = v25[2];
  v29 = v25[3];
  v30 = v25[4];
  v31 = v25[5];
  v26 = v25[0];
  v27 = v25[1];
  v19 = v25[11];
  *(a2 + 160) = v25[10];
  *(a2 + 176) = v19;
  *(a2 + 192) = v36;
  v20 = v33;
  *(a2 + 96) = v32;
  *(a2 + 112) = v20;
  v21 = v35;
  *(a2 + 128) = v34;
  *(a2 + 144) = v21;
  v22 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v22;
  v23 = v31;
  *(a2 + 64) = v30;
  *(a2 + 80) = v23;
  result = v27;
  *a2 = v26;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BD840860(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[11];
  v17[10] = a1[10];
  v17[11] = v3;
  v17[12] = a1[12];
  v4 = a1[7];
  v17[6] = a1[6];
  v17[7] = v4;
  v5 = a1[9];
  v17[8] = a1[8];
  v17[9] = v5;
  v6 = a1[3];
  v17[2] = a1[2];
  v17[3] = v6;
  v7 = a1[5];
  v17[4] = a1[4];
  v17[5] = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[11];
  v16[23] = a1[10];
  v16[24] = v9;
  v16[25] = a1[12];
  v10 = a1[7];
  v16[19] = a1[6];
  v16[20] = v10;
  v11 = a1[9];
  v16[21] = a1[8];
  v16[22] = v11;
  v12 = a1[3];
  v16[15] = a1[2];
  v16[16] = v12;
  v13 = a1[5];
  v16[17] = a1[4];
  v16[18] = v13;
  v14 = a1[1];
  v16[13] = *a1;
  v16[14] = v14;
  sub_1BE048964();
  sub_1BD843620(v17, v16);
  return sub_1BE04D8C4();
}

__n128 sub_1BD840954@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v24);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v35 = v24[12];
  v31 = v24[6];
  v32 = v24[7];
  v33 = v24[8];
  v34 = v24[9];
  v27 = v24[2];
  v28 = v24[3];
  v29 = v24[4];
  v30 = v24[5];
  v25 = v24[0];
  v26 = v24[1];
  v18 = v24[11];
  *(a1 + 160) = v24[10];
  *(a1 + 176) = v18;
  *(a1 + 192) = v35;
  v19 = v32;
  *(a1 + 96) = v31;
  *(a1 + 112) = v19;
  v20 = v34;
  *(a1 + 128) = v33;
  *(a1 + 144) = v20;
  v21 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v21;
  v22 = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v22;
  result = v26;
  *a1 = v25;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BD840A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD8434FC(v5, v7) & 1;
}

__n128 sub_1BD840A84@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  v18 = v21;
  result = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v18;
  return result;
}

char *sub_1BD840B14(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v110 = sub_1BE04B0F4();
  v112 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v4 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556A8, &qword_1BE0FCCD0);
  v5 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v7 = &v109 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556B0, &unk_1BE0FCCD8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v109 - v10;
  v12 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__configuration;
  LOWORD(v114) = 0;
  v13 = MEMORY[0x1E69E7CD0];
  *(&v114 + 1) = MEMORY[0x1E69E7CD0];
  LOWORD(v115) = 1;
  BYTE2(v115) = 0;
  *(&v115 + 1) = MEMORY[0x1E69E7CD0];
  *&v116 = 0;
  sub_1BE04D874();
  v14 = v11;
  v15 = v8;
  v17 = v110;
  v16 = v111;
  (*(v9 + 32))(&v2[v12], v14, v15);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BE053704())
  {
    sub_1BD1120F4(MEMORY[0x1E69E7CC0]);
    v13 = v108;
  }

  *&v2[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_cancellables] = v13;
  v18 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__originalAddress;
  *&v114 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393C8, "\b6\r");
  sub_1BE04D874();
  (*(v5 + 32))(&v2[v18], v7, v109);
  v19 = *(v112 + 16);
  v19(v4, v16, v17);
  if (qword_1EBD36F10 != -1)
  {
    swift_once();
  }

  sub_1BD4F8008(v4, qword_1EBDAB6C0, &v114);
  swift_beginAccess();
  v113[10] = v124;
  v113[11] = v125;
  v113[12] = v126;
  v113[6] = v120;
  v113[7] = v121;
  v113[8] = v122;
  v113[9] = v123;
  v113[2] = v116;
  v113[3] = v117;
  v113[4] = v118;
  v113[5] = v119;
  v113[0] = v114;
  v113[1] = v115;
  sub_1BE04D874();
  swift_endAccess();
  v19(v4, v16, v17);
  type metadata accessor for PostalAddressEditingModel(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel] = sub_1BD209A98(v4);
  sub_1BD841418();
  v20 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel;
  sub_1BD843B08(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel, &unk_1BE0C1D08);
  v21 = sub_1BE04D814();
  *&v113[0] = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = sub_1BD843610;
  v23[3] = v22;
  sub_1BE04D864();
  sub_1BE048964();
  v24 = sub_1BE04D954();
  v21, v25, v26, v27, v28, v29, v30, v31;
  v23, v32, v33, v34, v35, v36, v37, v38;
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v24, v39, v40, v41, v42, v43, v44, v45;
  *&v113[0] = *(*&v2[v20] + OBJC_IVAR____TtC9PassKitUI25PostalAddressEditingModel__countryCodeDidChangePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DAA8, &qword_1BE0C1EB0);
  sub_1BD0DE4F4(&qword_1EBD556B8, &qword_1EBD3DAA8, &qword_1BE0C1EB0, MEMORY[0x1E695BF88]);
  v46 = sub_1BE04D8E4();
  *&v113[0] = v46;
  v47 = swift_allocObject();
  swift_weakInit();
  v2, v48, v49, v50, v51, v52, v53, v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556C0, &qword_1BE0FCCE8);
  sub_1BD0DE4F4(&qword_1EBD556C8, &qword_1EBD556C0, &qword_1BE0FCCE8, MEMORY[0x1E695BED8]);
  v55 = sub_1BE04D954();
  v46, v56, v57, v58, v59, v60, v61, v62;
  v47, v63, v64, v65, v66, v67, v68, v69;
  swift_beginAccess();
  sub_1BE04D7D4();
  swift_endAccess();
  v55, v70, v71, v72, v73, v74, v75, v76;
  v77 = sub_1BD20958C();
  v78 = [v77 ISOCountryCode];

  v79 = sub_1BE052434();
  v81 = v80;

  KeyPath = swift_getKeyPath();
  v83 = swift_getKeyPath();
  v84 = sub_1BE04D8A4();
  v86 = *(v85 + 16);
  *(v85 + 8) = v79;
  *(v85 + 16) = v81;
  v86, v85, v87, v88, v89, v90, v91, v92;
  v84(v113, 0);
  KeyPath, v93, v94, v95, v96, v97, v98, v99;
  v83, v100, v101, v102, v103, v104, v105, v106;
  (*(v112 + 8))(v111, v110);
  return v2;
}

void sub_1BD841280(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for AddressEditingModel(0);
    sub_1BD843B08(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel, &unk_1BE0FCC94);
    v3 = sub_1BE04D814();
    v2, v4, v5, v6, v7, v8, v9, v10;
    sub_1BE04D854();
    v3, v11, v12, v13, v14, v15, v16, v17;
  }
}

void sub_1BD841334(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    KeyPath = swift_getKeyPath();
    v7 = swift_getKeyPath();
    sub_1BE048C84();
    v8 = sub_1BE04D8A4();
    v10 = *(v9 + 16);
    *(v9 + 8) = v3;
    *(v9 + 16) = v2;
    v10, v9, v11, v12, v13, v14, v15, v16;
    v8(v38, 0);
    v5, v17, v18, v19, v20, v21, v22, v23;
    KeyPath, v24, v25, v26, v27, v28, v29, v30;
    v7, v31, v32, v33, v34, v35, v36, v37;
  }
}

void sub_1BD841418()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  v266[0] = v285;
  v266[1] = v286;
  v267 = v287;
  sub_1BD10D558(v266);
  v16 = v266[0];
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = sub_1BE04D8A4();
  *(v20 + 104) = v16;
  v19(&v285, 0);
  v17, v21, v22, v23, v24, v25, v26, v27;
  v18, v28, v29, v30, v31, v32, v33, v34;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v35, v37, v38, v39, v40, v41, v42, v43;
  v36, v44, v45, v46, v47, v48, v49, v50;
  v268[0] = v285;
  v268[1] = v286;
  v269 = v287;
  sub_1BD10D558(v268);
  v51 = BYTE1(v268[0]);
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = sub_1BE04D8A4();
  *(v55 + 105) = v51;
  v54(&v285, 0);
  v52, v56, v57, v58, v59, v60, v61, v62;
  v53, v63, v64, v65, v66, v67, v68, v69;
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v70, v72, v73, v74, v75, v76, v77, v78;
  v71, v79, v80, v81, v82, v83, v84, v85;
  v270[0] = v285;
  v270[1] = v286;
  v271 = v287;
  v86 = *(&v285 + 1);
  sub_1BE048C84();
  sub_1BD10D558(v270);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v285 = v86;
  sub_1BE048964();
  sub_1BE04D8C4();
  v87 = swift_getKeyPath();
  v88 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v87, v89, v90, v91, v92, v93, v94, v95;
  v88, v96, v97, v98, v99, v100, v101, v102;
  v272 = v285;
  v273 = v286;
  v274 = v287;
  sub_1BD10D558(&v272);
  LOBYTE(v1) = v273;
  v103 = swift_getKeyPath();
  v104 = swift_getKeyPath();
  v105 = sub_1BE04D8A4();
  *(v106 + 192) = v1;
  v105(&v285, 0);
  v103, v107, v108, v109, v110, v111, v112, v113;
  v104, v114, v115, v116, v117, v118, v119, v120;
  v121 = swift_getKeyPath();
  v122 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v121, v123, v124, v125, v126, v127, v128, v129;
  v122, v130, v131, v132, v133, v134, v135, v136;
  v275 = v285;
  v276 = v286;
  v277 = v287;
  sub_1BD10D558(&v275);
  v137 = BYTE1(v276);
  v138 = swift_getKeyPath();
  v139 = swift_getKeyPath();
  v140 = sub_1BE04D8A4();
  *(v141 + 193) = v137;
  v140(&v285, 0);
  v138, v142, v143, v144, v145, v146, v147, v148;
  v139, v149, v150, v151, v152, v153, v154, v155;
  v156 = swift_getKeyPath();
  v157 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v156, v158, v159, v160, v161, v162, v163, v164;
  v157, v165, v166, v167, v168, v169, v170, v171;
  v278 = v285;
  v279 = v286;
  v280 = v287;
  sub_1BD10D558(&v278);
  v172 = BYTE2(v279);
  v173 = swift_getKeyPath();
  v174 = swift_getKeyPath();
  v175 = sub_1BE04D8A4();
  *(v176 + 194) = v172;
  v175(&v285, 0);
  v173, v177, v178, v179, v180, v181, v182, v183;
  v174, v184, v185, v186, v187, v188, v189, v190;
  v191 = swift_getKeyPath();
  v192 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v191, v193, v194, v195, v196, v197, v198, v199;
  v192, v200, v201, v202, v203, v204, v205, v206;
  v281[0] = v285;
  v281[1] = v286;
  v282 = v287;
  v207 = *(&v286 + 1);
  sub_1BE048C84();
  sub_1BD10D558(v281);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v285 = v207;
  sub_1BE048964();
  sub_1BE04D8C4();
  v208 = swift_getKeyPath();
  v209 = swift_getKeyPath();
  sub_1BE04D8B4(&v285);
  v208, v210, v211, v212, v213, v214, v215, v216;
  v209, v217, v218, v219, v220, v221, v222, v223;
  v224 = v287;
  v284 = v287;
  v283[0] = v285;
  v283[1] = v286;
  v225 = v287;
  sub_1BD10D558(v283);
  v226 = swift_getKeyPath();
  v227 = swift_getKeyPath();
  v228 = sub_1BE04D8A4();
  v230 = *v229;
  *v229 = v224;

  v228(&v285, 0);
  v226, v231, v232, v233, v234, v235, v236, v237;
  v227, v238, v239, v240, v241, v242, v243, v244;
  v245 = swift_getKeyPath();
  v246 = swift_getKeyPath();
  sub_1BE04D8B4(v264);
  v245, v247, v248, v249, v250, v251, v252, v253;
  v246, v254, v255, v256, v257, v258, v259, v260;
  v261 = v265;
  v287 = v265;
  v285 = v264[0];
  v286 = v264[1];
  v262 = v265;
  sub_1BD10D558(&v285);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v264[0] = v261;
  sub_1BE048964();
  v263 = v262;
  sub_1BE04D8C4();
  sub_1BD20AA3C();
}

uint64_t sub_1BD841AF0()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD841B64()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(v115);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  v16 = *&v115[0];
  if (*&v115[0])
  {
    [*&v115[0] mutableCopy];
    sub_1BE053624();
    swift_unknownObjectRelease();
    sub_1BD0E5E8C(0, &qword_1EBD4DF70, 0x1E695CF18);
    swift_dynamicCast();
    v17 = *&v114[0];
    [v17 setContactSource_];
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  }

  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(v114);
  v18, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v115[10] = v114[10];
  v115[11] = v114[11];
  v115[12] = v114[12];
  v115[6] = v114[6];
  v115[7] = v114[7];
  v115[8] = v114[8];
  v115[9] = v114[9];
  v115[2] = v114[2];
  v115[3] = v114[3];
  v115[4] = v114[4];
  v115[5] = v114[5];
  v115[0] = v114[0];
  v115[1] = v114[1];
  sub_1BD4F7884(v114);
  sub_1BD4FBC18(v115);
  v34 = sub_1BE052404();
  [v17 setGivenName_];

  v35 = sub_1BE052404();
  [v17 setFamilyName_];

  v36 = sub_1BE052404();
  [v17 setPhoneticGivenName_];

  v37 = sub_1BE052404();
  [v17 setPhoneticFamilyName_];

  v38 = sub_1BE052404();
  [v17 setOrganizationName_];

  sub_1BD4F82D4(v114);
  v39 = swift_getKeyPath();
  v40 = swift_getKeyPath();
  sub_1BE04D8B4(&v113);
  v39, v41, v42, v43, v44, v45, v46, v47;
  v40, v48, v49, v50, v51, v52, v53, v54;
  v55 = v113;
  if (!v113)
  {
    goto LABEL_14;
  }

  v56 = [v113 postalAddresses];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v57 = sub_1BE052744();

  if (!(v57 >> 62))
  {
    result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  result = sub_1BE053704();
  if (!result)
  {
LABEL_13:
    v57, v58, v59, v60, v61, v62, v63, v64;
LABEL_14:
    v77 = 0;
    goto LABEL_15;
  }

LABEL_7:
  if ((v57 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x1BFB40900](0, v57);
  }

  else
  {
    if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v66 = *(v57 + 32);
  }

  v74 = v66;
  v57, v67, v68, v69, v70, v71, v72, v73;
  v75 = [v74 label];

  if (!v75)
  {
    goto LABEL_14;
  }

  sub_1BE052434();
  v77 = v76;

LABEL_15:
  v78 = sub_1BD20958C();
  if (v77)
  {
    v79 = sub_1BE052404();
    v77, v80, v81, v82, v83, v84, v85, v86;
  }

  else
  {
    v79 = 0;
  }

  v87 = [objc_allocWithZone(MEMORY[0x1E695CEE0]) initWithLabel:v79 value:v78];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1BE0B7020;
  *(v88 + 32) = v87;
  v89 = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v90 = sub_1BE052724();
  v88, v91, v92, v93, v94, v95, v96, v97;
  [v17 setPostalAddresses_];

  v98 = sub_1BD20958C();
  LOBYTE(v90) = v99;

  sub_1BD6B04D8(v90);
  v101 = v100;
  v102 = sub_1BE052404();
  v101, v103, v104, v105, v106, v107, v108, v109;
  [v17 setValueSource_];

  v110 = sub_1BD20958C();
  v112 = v111;

  [v17 setFormattingConstrained_];
  return v17;
}

uint64_t sub_1BD84208C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__contactInformationEditingModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556D8, &qword_1BE0FCEA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__configuration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556B0, &unk_1BE0FCCD8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  *(v0 + OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_cancellables), v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtC9PassKitUI19AddressEditingModel__originalAddress;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556A8, &qword_1BE0FCCD0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddressEditingModel(uint64_t a1)
{
  result = qword_1EBD55680;
  if (!qword_1EBD55680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD842240(uint64_t a1)
{
  sub_1BD540F14(319, &qword_1EBD55690, &type metadata for ContactInformationEditingModel);
  if (v1 <= 0x3F)
  {
    sub_1BD540F14(319, &qword_1EBD55698, &type metadata for AddressEditingConfiguration);
    if (v2 <= 0x3F)
    {
      sub_1BD84237C(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD84237C(uint64_t a1)
{
  if (!qword_1EBD556A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393C8, "\b6\r");
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD556A0);
    }
  }
}

uint64_t sub_1BD8423F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AddressEditingModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD842430(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD8424B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD84252C(uint64_t result, uint64_t a2)
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
  v64 = v8;
  v65 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v66 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_1BE052434();
      v15 = v14;
      sub_1BE053D04();
      v67 = v13;
      sub_1BE052524();
      v16 = sub_1BE053D64();
      v15, v17, v18, v19, v20, v21, v22, v23;
      v24 = -1 << *(a2 + 32);
      v25 = v16 & ~v24;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        break;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = sub_1BE052434();
        v29 = v28;
        v31 = sub_1BE052434();
        v32 = v27;
        v33 = v30;
        if (v32 == v31 && v29 == v30)
        {

          v29, v50, v51, v52, v53, v54, v55, v56;
          v33, v57, v58, v59, v60, v61, v62, v63;
          goto LABEL_24;
        }

        v35 = sub_1BE053B84();
        v29, v36, v37, v38, v39, v40, v41, v42;
        v33, v43, v44, v45, v46, v47, v48, v49;
        if (v35)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v64;
      result = v65;
      v7 = v66;
      if (!v66)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
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
      v66 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD842760(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 56;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
      v10 = a2 + 56;
      v62 = v9;
      if (v8)
      {
        while (1)
        {
          v11 = __clz(__rbit64(v8));
          v12 = (v8 - 1) & v8;
LABEL_13:
          v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
          sub_1BE053D04();
          sub_1BD251514(v15);
          v17 = v16;
          sub_1BE052524();
          v17, v18, v19, v20, v21, v22, v23, v24;
          v25 = sub_1BE053D64();
          v26 = -1 << *(a2 + 32);
          v27 = v25 & ~v26;
          if (((*(v10 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            break;
          }

          v64 = v12;
          v28 = ~v26;
          while (1)
          {
            v29 = sub_1BE052434();
            v31 = v30;
            v33 = sub_1BE052434();
            v39 = v32;
            if (v29 == v33 && v31 == v32)
            {
              break;
            }

            v40 = sub_1BE053B84();
            v31, v41, v42, v43, v44, v45, v46, v47;
            v39, v48, v49, v50, v51, v52, v53, v54;
            if (v40)
            {
              goto LABEL_21;
            }

            v27 = (v27 + 1) & v28;
            if (((*(v10 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              return;
            }
          }

          v31, v32, v33, v34, v35, v36, v37, v38;
          v39, v55, v56, v57, v58, v59, v60, v61;
LABEL_21:
          v9 = v62;
          v3 = a1;
          v8 = v64;
          if (!v64)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v13 = v4;
        while (1)
        {
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return;
          }

          v14 = *(v5 + 8 * v4);
          ++v13;
          if (v14)
          {
            v11 = __clz(__rbit64(v14));
            v12 = (v14 - 1) & v14;
            goto LABEL_13;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1BD842AA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1BD843B08(&qword_1EBD3A360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v26 = sub_1BE052284();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1BD843B08(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v31 = sub_1BE052334();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BD842E54(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1BD8433F8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    sub_1BE04D7F4();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_1EBD597F0;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v32 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      sub_1BD843B08(&qword_1EBD597F0, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      sub_1BE048964();
      v21 = sub_1BE052284();
      v29 = -1 << *(a2 + 32);
      v30 = v21 & ~v29;
      if (((*(v15 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v31 = ~v29;
      sub_1BD843B08(&qword_1EBD39850, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      while ((sub_1BE052334() & 1) == 0)
      {
        v30 = (v30 + 1) & v31;
        if (((*(v15 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v20, v22, v23, v24, v25, v26, v27, v28;
      v14 = (v10 + 63) >> 6;
      v12 = v32;
      v5 = &qword_1EBD597F0;
      v16 = a1;
      if (!v32)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
    v20, v22, v23, v24, v25, v26, v27, v28;
  }
}

uint64_t sub_1BD843148(uint64_t result, uint64_t a2)
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
  v29 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1BE053D04();
    sub_1BE048C84();
    sub_1BE052524();
    v16 = sub_1BE053D64();
    v24 = -1 << *(a2 + 32);
    v25 = v16 & ~v24;
    if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_23:
      v14, v17, v18, v19, v20, v21, v22, v23;
      return 0;
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(a2 + 48) + 16 * v25);
      v17 = v27[1];
      v28 = *v27 == v15 && v17 == v14;
      if (v28 || (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v9 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v14, v17, v18, v19, v20, v21, v22, v23;
    result = v29;
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

void sub_1BD843300(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD843380(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

void sub_1BD8433F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1BE053704())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      sub_1BE048964();
      v13 = sub_1BE053754();
      v12, v14, v15, v16, v17, v18, v19, v20;
      if ((v13 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BD8434FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]))
  {
    return 0;
  }

  sub_1BD842760(*(a1 + 1), *(a2 + 1));
  if ((v5 & 1) != 0 && ((a1[16] ^ a2[16]) & 1) == 0 && ((a1[17] ^ a2[17]) & 1) == 0 && ((a1[18] ^ a2[18]) & 1) == 0)
  {
    sub_1BD842760(*(a1 + 3), *(a2 + 3));
    if (v6)
    {
      v7 = *(a1 + 4);
      v8 = *(a2 + 4);
      if (v7)
      {
        if (v8)
        {
          sub_1BD0E5E8C(0, &qword_1EBD3E6C8, 0x1E69B8730);
          v9 = v8;
          v10 = v7;
          v11 = sub_1BE053074();

          if (v11)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1BD84367C(void *a1)
{
  [a1 copy];
  sub_1BE053624();
  swift_unknownObjectRelease();
  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  swift_dynamicCast();
  v2 = [a1 valueSource];
  [v62 setValueSource_];

  [v62 setFormattingConstrained_];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v67[0] = v62;
  v3 = v62;
  sub_1BE048964();
  sub_1BE04D8C4();
  v4 = v3;
  sub_1BD539BE0(v4, v61);
  v64 = v61[2];
  v65 = v61[3];
  v66 = v61[4];
  v62 = v61[0];
  v63 = v61[1];
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = sub_1BE04D8A4();
  v9 = v8;
  v10 = *(v8 + 40);
  v11 = *(v8 + 56);
  v12 = *(v8 + 88);
  v67[3] = *(v8 + 72);
  v67[4] = v12;
  v67[1] = v10;
  v67[2] = v11;
  v67[0] = *(v8 + 24);
  v13 = v65;
  *(v8 + 88) = v66;
  *(v8 + 72) = v13;
  v14 = v64;
  v15 = v62;
  *(v8 + 40) = v63;
  *(v8 + 56) = v14;
  *(v8 + 24) = v15;
  sub_1BD4F8278(v61, &v59);
  sub_1BD843A44(v67);
  sub_1BD843AAC(v61, v9 + 112);
  v7(v60, 0);
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v6, v23, v24, v25, v26, v27, v28, v29;
  v30 = [v4 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0, &qword_1BE0C38A0);
  v31 = sub_1BE052744();

  if (v31 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }

LABEL_8:
    v31, v32, v33, v34, v35, v36, v37, v38;
    v48 = 0;
    goto LABEL_9;
  }

  if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1BFB40900](0, v31);
  }

  else
  {
    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v39 = *(v31 + 32);
  }

  v47 = v39;
  v31, v40, v41, v42, v43, v44, v45, v46;
  v48 = [v47 value];

LABEL_9:
  v49 = [v4 valueSource];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1BE052434();
    v53 = v52;

    v54 = v53;
    v55 = v51;
  }

  else
  {
    v55 = sub_1BE052434();
  }

  v56 = sub_1BD6B9D24(v55, v54);
  if (v48)
  {
    v57 = v48;
  }

  else
  {
    v57 = [objc_allocWithZone(MEMORY[0x1E695CF60]) init];
  }

  if (v56 == 10)
  {
    v56 = 6;
  }

  v58 = v48;
  sub_1BD209980(v57, v56, [v4 formattingConstrained]);
}

uint64_t sub_1BD843A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556D0, &qword_1BE0FCD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD843B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ListRowGestureActionsModifier(uint64_t a1)
{
  result = qword_1EBD556E0;
  if (!qword_1EBD556E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD843BC4(uint64_t a1)
{
  sub_1BD45C2C0(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BD45C2C0(319, &qword_1EBD40448, &qword_1EBD40450, &qword_1BE0D7250, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD843CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ListRowGestureActionsModifier(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  v16 = *(v15 + 24);
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  sub_1BD0D44B8(a1, a2);
  sub_1BD0D44B8(a3, a4);
  MEMORY[0x1BFB3E0D0](v14, a5, v12, a6);
  return sub_1BD84578C(v14);
}

void *sub_1BD843DE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556F0, &qword_1BE0FCF20);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD556F8, &qword_1BE0FCF28);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55700, &qword_1BE0FCF30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  if (PKOsloDefaultsManagementEnabled() && (v14 = sub_1BD844360(), (v14 & 1) == 0) && (*v2 || v2[2]))
  {
    v36 = v34;
    MEMORY[0x1EEE9AC00](v14);
    v34[-2] = v2;
    v40 = v8;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55708, &qword_1BE0FCF38);
    v34[1] = a1;
    v22 = v21;
    v34[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55718, &unk_1BE0FCF40);
    v23 = sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708, &qword_1BE0FCF38, MEMORY[0x1E697FDF8]);
    v39 = v7;
    v24 = v23;
    v25 = sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718, &unk_1BE0FCF40, MEMORY[0x1E6981F48]);
    v35 = v4;
    v26 = v25;
    v37 = v24;
    v38 = v22;
    v27 = v34[0];
    v28 = sub_1BE0509F4();
    v36 = v34;
    MEMORY[0x1EEE9AC00](v28);
    v34[-2] = v2;
    v43 = v22;
    v44 = v27;
    v29 = v27;
    v45 = v24;
    v46 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v35;
    sub_1BE0508B4();
    (*(v41 + 8))(v6, v31);
    v33 = v39;
    v32 = v40;
    (*(v40 + 16))(v13, v10, v39);
    swift_storeEnumTagMultiPayload();
    v43 = v31;
    v44 = v29;
    v45 = OpaqueTypeConformance2;
    v46 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v32 + 8))(v10, v33);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55708, &qword_1BE0FCF38);
    (*(*(v15 - 8) + 16))(v13, a1, v15);
    swift_storeEnumTagMultiPayload();
    v16 = sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708, &qword_1BE0FCF38, MEMORY[0x1E697FDF8]);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55718, &unk_1BE0FCF40);
    v18 = sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718, &unk_1BE0FCF40, MEMORY[0x1E6981F48]);
    v43 = v15;
    v44 = v17;
    v45 = v16;
    v46 = v18;
    v19 = swift_getOpaqueTypeConformance2();
    v43 = v4;
    v44 = v17;
    v45 = v19;
    v46 = v18;
    swift_getOpaqueTypeConformance2();
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD844360()
{
  v0 = sub_1BE051AD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v27 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  type metadata accessor for ListRowGestureActionsModifier(0);
  sub_1BD70A2C8(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD40450, &qword_1BE0D7250);
    v19 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v18);
    sub_1BD0DE53C(v8, &qword_1EBD40520, &qword_1BE0D70B0);
    v19 = 0;
  }

  v20 = *(v1 + 56);
  v20(v17, v19, 1, v0);
  (*(v1 + 104))(v14, *MEMORY[0x1E697D708], v0);
  v20(v14, 0, 1, v0);
  v21 = *(v3 + 48);
  sub_1BD0DE19C(v17, v5, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE19C(v14, &v5[v21], &qword_1EBD40530, &unk_1BE0C80F0);
  v22 = *(v1 + 48);
  if (v22(v5, 1, v0) != 1)
  {
    sub_1BD0DE19C(v5, v11, &qword_1EBD40530, &unk_1BE0C80F0);
    if (v22(&v5[v21], 1, v0) != 1)
    {
      v24 = v28;
      (*(v1 + 32))(v28, &v5[v21], v0);
      sub_1BD84559C();
      v23 = sub_1BE052334();
      v25 = *(v1 + 8);
      v25(v24, v0);
      sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
      sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
      v25(v11, v0);
      sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
      return v23 & 1;
    }

    sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v1 + 8))(v11, v0);
    goto LABEL_9;
  }

  sub_1BD0DE53C(v14, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v17, &qword_1EBD40530, &unk_1BE0C80F0);
  if (v22(&v5[v21], 1, v0) != 1)
  {
LABEL_9:
    sub_1BD0DE53C(v5, &qword_1EBD40528, &unk_1BE0CE330);
    v23 = 0;
    return v23 & 1;
  }

  sub_1BD0DE53C(v5, &qword_1EBD40530, &unk_1BE0C80F0);
  v23 = 1;
  return v23 & 1;
}

id sub_1BD844888()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD844A4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD844BB8@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42[1] = a3;
  v47 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728, &qword_1BE10CE30);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55730, &unk_1BE0FCF50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44CD8, &unk_1BE0D2ED0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v44 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - v21;
  if (a1[2])
  {
    v42[0] = a1[3];
    sub_1BE048964();
    sub_1BE04E194();
    v23 = sub_1BE04E1D4();
    (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BE0516F4();
    (*(v15 + 32))(v22, v17, v14);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v42 - v21, 1, 1, v14);
  }

  v24 = *a1;
  if (*a1)
  {
    v25 = a1[1];
    sub_1BD0D44B8(v24, v25);
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    v26 = v43;
    sub_1BE051704();
    v27 = sub_1BE051434();
    sub_1BD0D4744(v24, v25, v28, v29, v30, v31, v32, v33);
    KeyPath = swift_getKeyPath();
    v35 = (v26 + *(v48 + 36));
    *v35 = KeyPath;
    v35[1] = v27;
    sub_1BD84552C(v26, v10);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v45 + 56))(v10, v36, 1, v48);
  v37 = v44;
  sub_1BD0DE19C(v22, v44, &qword_1EBD44CD8, &unk_1BE0D2ED0);
  v38 = v46;
  sub_1BD0DE19C(v10, v46, &qword_1EBD55730, &unk_1BE0FCF50);
  v39 = v47;
  sub_1BD0DE19C(v37, v47, &qword_1EBD44CD8, &unk_1BE0D2ED0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55738, &unk_1BE0FCF60);
  sub_1BD0DE19C(v38, v39 + *(v40 + 48), &qword_1EBD55730, &unk_1BE0FCF50);
  sub_1BD0DE53C(v10, &qword_1EBD55730, &unk_1BE0FCF50);
  sub_1BD0DE53C(v22, &qword_1EBD44CD8, &unk_1BE0D2ED0);
  sub_1BD0DE53C(v38, &qword_1EBD55730, &unk_1BE0FCF50);
  return sub_1BD0DE53C(v37, &qword_1EBD44CD8, &unk_1BE0D2ED0);
}

id sub_1BD845120()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B8068], v0, v2);
  result = PKPassKitBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_1BE04B6F4();
    v9 = v8;

    (*(v1 + 8))(v4, v0);
    v10[0] = v7;
    v10[1] = v9;
    sub_1BD0DDEBC();
    return sub_1BE051624();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD8452E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD845450@<X0>(uint64_t *a2@<X8>)
{
  v3 = PKPassKitUIBundle();
  result = sub_1BE0515F4();
  *a2 = result;
  return result;
}

uint64_t sub_1BD84552C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55728, &qword_1BE10CE30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD84559C()
{
  result = qword_1EBD40538;
  if (!qword_1EBD40538)
  {
    sub_1BE051AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD40538);
  }

  return result;
}

unint64_t sub_1BD8455F4()
{
  result = qword_1EBD55740;
  if (!qword_1EBD55740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55748, &qword_1BE0FCFA8);
    sub_1BD0DE4F4(&qword_1EBD55710, &qword_1EBD55708, &qword_1BE0FCF38, MEMORY[0x1E697FDF8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD556F0, &qword_1BE0FCF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55718, &unk_1BE0FCF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD55708, &qword_1BE0FCF38);
    sub_1BD0DE4F4(&qword_1EBD55720, &qword_1EBD55718, &unk_1BE0FCF40, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55740);
  }

  return result;
}

uint64_t sub_1BD84578C(uint64_t a1)
{
  v2 = type metadata accessor for ListRowGestureActionsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD8457EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1BE048964();
  v4(a2);

  v3, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD845840()
{
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v1 = 0;
  }

  else
  {
    v1 = PKRunningInLockScreenPlugin() ^ 1;
  }

  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles) = v1;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled) = 2;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext) = 0;
  *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken) = -1;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

id ExpressTogglesPaymentPassDetailSectionController.__allocating_init(with:viewStyle:expressPassController:delegate:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v10 = 0;
  }

  else
  {
    v10 = PKRunningInLockScreenPlugin() ^ 1;
  }

  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] = v10;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] = MEMORY[0x1E69E7CC0];
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled] = 2;
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled] = 2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext] = 0;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken] = -1;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] = a1;
  swift_unknownObjectWeakAssign();
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] = a2;
  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController] = a3;
  v11 = a1;
  v12 = a3;
  v13 = [v11 areCredentialsStoredInKML];
  v14 = 0;
  v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass] = v13;
  if (v13)
  {
    v14 = [v11 supportedRadioTechnologies];
  }

  *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] = v14;
  v17.receiver = v9;
  v17.super_class = v4;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  return v15;
}

id ExpressTogglesPaymentPassDetailSectionController.init(with:viewStyle:expressPassController:delegate:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_1BD84BDF0(a1, a2, a3, a4);

  return v7;
}

id ExpressTogglesPaymentPassDetailSectionController.__deallocating_deinit()
{
  v1 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1BD845DA8()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051FA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController) existingExpressPassConfigurationForPass_];
  v12 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (v13 == 2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v11)
  {
    v14 = [v11 isNFCExpressEnabled];
    if (v14 == *(v0 + v12))
    {
      v15 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v15 = 0;
    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  *(v1 + v12) = v14;
  v15 = 1;
LABEL_7:
  swift_endAccess();
  v16 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17 == 2)
  {
LABEL_19:
    __break(1u);
    return;
  }

  if (v11)
  {
    v18 = [v11 isUWBExpressEnabled];
    if (v18 == *(v1 + v16))
    {
      goto LABEL_14;
    }

LABEL_13:
    *(v1 + v16) = v18;
    swift_endAccess();
LABEL_15:
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v30 = sub_1BE052D54();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1BD84CDD8;
    v32 = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_109_2;
    v20 = _Block_copy(aBlock);
    v32, v21, v22, v23, v24, v25, v26, v27;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    sub_1BE053664();
    v28 = v30;
    MEMORY[0x1BFB3FDF0](0, v10, v5, v20);
    _Block_release(v20);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v17)
  {
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

LABEL_14:
  swift_endAccess();
  if (v15)
  {
    goto LABEL_15;
  }
}

void sub_1BD846164(uint64_t a1)
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch);
    if (v10)
    {
      v11 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v12 = v9[v11];
      if (v12 == 2)
      {
        __break(1u);
        goto LABEL_27;
      }

      [v10 setOn_];
    }

    v13 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
    if (v13)
    {
      v14 = [v13 detailTextLabel];
      if (v14)
      {
        v15 = v14;
        v16 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        swift_beginAccess();
        v17 = v9[v16];
        if (v17 == 2)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        (*(v2 + 104))(v7, *MEMORY[0x1E69B80D8], v1);
        v18 = PKPassKitBundle();
        if (!v18)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v19 = v18;
        if (v17)
        {
          v20 = "EXPRESS_MODE_STATE_OFF";
        }

        else
        {
          v20 = "CH_AUTHENTICATION_REASON";
        }

        sub_1BE04B6F4();
        v22 = v21;
        (v20 | 0x8000000000000000), v21, v23, v24, v25, v26, v27, v28;

        (*(v2 + 8))(v7, v1);
        v29 = sub_1BE052404();
        v22, v30, v31, v32, v33, v34, v35, v36;
        [v15 setText_];
      }
    }

    v37 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch];
    if (!v37)
    {
LABEL_16:
      v40 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
      if (!v40 || (v41 = [v40 detailTextLabel]) == 0)
      {
LABEL_24:

        return;
      }

      v42 = v41;
      v43 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
      swift_beginAccess();
      v44 = v9[v43];
      if (v44 != 2)
      {
        (*(v2 + 104))(v4, *MEMORY[0x1E69B80D8], v1);
        v45 = PKPassKitBundle();
        if (v45)
        {
          v46 = v45;
          if (v44)
          {
            v47 = "EXPRESS_MODE_STATE_OFF";
          }

          else
          {
            v47 = "CH_AUTHENTICATION_REASON";
          }

          sub_1BE04B6F4();
          v49 = v48;
          (v47 | 0x8000000000000000), v48, v50, v51, v52, v53, v54, v55;

          (*(v2 + 8))(v4, v1);
          v56 = sub_1BE052404();
          v49, v57, v58, v59, v60, v61, v62, v63;
          [v42 setText_];

          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v38 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v39 = v9[v38];
    if (v39 != 2)
    {
      [v37 setOn_];
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1BD846650()
{
  if ([v0 currentSegment] || !*(*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v0 allSectionIdentifiers];
  v3 = sub_1BE052744();

  return v3;
}

uint64_t sub_1BD846708(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = sub_1BE051F54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051FA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken;
  swift_beginAccess();
  if (*(v2 + v12) == -1)
  {
    v56 = [objc_opt_self() defaultCenter];
    [v56 addObserver:v2 selector:sel_expressPassDidChange name:@"PKExpressPassesViewControllerExpressPassChangedNotification" object:0];
    sub_1BE052434();
    v57 = a2;
    v58 = v8;
    v14 = v13;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v55 = sub_1BE052D54();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = sub_1BD84C060;
    v65 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1BD8457EC;
    v63 = &block_descriptor_6_1;
    v16 = _Block_copy(&aBlock);
    v65, v17, v18, v19, v20, v21, v22, v23;
    v24 = sub_1BE0524D4();
    v25 = v14;
    v8 = v58;
    v25, v26, v27, v28, v29, v30, v31, v32;
    swift_beginAccess();
    v33 = (v2 + v12);
    v34 = v55;
    notify_register_dispatch((v24 + 32), v33, v55, v16);
    swift_endAccess();
    _Block_release(v16);

    v35 = v24;
    a2 = v57;
    v35, v36, v37, v38, v39, v40, v41, v42;
  }

  sub_1BD847FB0();
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v43 = sub_1BE052D54();
  v44 = swift_allocObject();
  v44[2] = v59;
  v44[3] = a2;
  v64 = sub_1BD214190;
  v65 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1BD126964;
  v63 = &block_descriptor_190;
  v45 = _Block_copy(&aBlock);
  v46 = v65;
  sub_1BE048964();
  v46, v47, v48, v49, v50, v51, v52, v53;
  sub_1BE051F74();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v11, v7, v45);
  _Block_release(v45);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_1BD846B6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1BD845DA8();
  }
}

void sub_1BD846C4C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport;
  v10 = *(v8 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v10 == 2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  if (v10)
  {
    v11 = sub_1BD1D99EC(0, 1, 1, MEMORY[0x1E69E7CC0], a5, a6, a7, a8);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1BD1D99EC((v12 > 1), v13 + 1, 1, v11, a5, a6, a7, a8);
    }

    *(v11 + 2) = v13 + 1;
    v11[v13 + 32] = 0;
    v10 = *(v8 + v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v10 == 2)
  {
    goto LABEL_26;
  }

  if ((v10 & 0x100) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1BD1D99EC(0, *(v11 + 2) + 1, 1, v11, a5, a6, a7, a8);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    v14 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v11 = sub_1BD1D99EC((v15 > 1), v16 + 1, 1, v11, a5, a6, a7, a8);
    }

    *(v11 + 2) = v14;
    v11[v16 + 32] = 1;
    goto LABEL_16;
  }

  v14 = *(v11 + 2);
  if (v14)
  {
LABEL_16:
    if ((*(v8 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BD1D99EC(0, v14 + 1, 1, v11, a5, a6, a7, a8);
      }

      v18 = *(v11 + 2);
      v17 = *(v11 + 3);
      if (v18 >= v17 >> 1)
      {
        v11 = sub_1BD1D99EC((v17 > 1), v18 + 1, 1, v11, a5, a6, a7, a8);
      }

      *(v11 + 2) = v18 + 1;
      v11[v18 + 32] = 2;
    }
  }

  v19 = *(v8 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes);
  *(v8 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes) = v11;

  v19, a2, a3, a4, a5, a6, a7, a8;
}

void sub_1BD846FA4(uint64_t a1)
{
  v3 = sub_1BE04D324();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v84 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch;
  v21 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch];
  if (v21)
  {
    v22 = v21;
    return;
  }

  v93 = a1;
  v23 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
  if (v23)
  {
    v23;
    v24 = 0;
    return;
  }

  v89 = v15;
  v90 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText;
  v88 = v16;
  v92 = v3;
  v25 = v15;
  v26 = [*&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isHomeKeyPass];
  v85 = v4;
  if (!v26)
  {
    v36 = *(v25 + 104);
    v87 = *MEMORY[0x1E69B80D8];
    v86 = v36;
    v36(v10);
    v37 = PKPassKitBundle();
    if (v37)
    {
      v33 = v37;
      v38 = v25;
      v29 = v6;
      v91 = sub_1BE04B6F4();
      v35 = v39;
      v19 = v10;
      v31 = v92;
LABEL_15:

      v44 = *(v38 + 8);
      v42 = v38 + 8;
      v43 = v44;
      v44(v19, v7);
      if (v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] != 1)
      {
        v92 = v42;
        v58 = [v1 primaryTextColor];
        if (!v58)
        {
          v58 = [objc_opt_self() labelColor];
        }

        v59 = [v1 value1CellWithTextColor:v58 forTableView:v93];

        v60 = *&v1[v90];
        *&v1[v90] = v59;
        v57 = v59;

        v61 = v1;
        MEMORY[0x1BFB3FD30]();
        sub_1BE048C84();
        sub_1BE04D304();
        v62 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        swift_beginAccess();
        v70 = v61[v62];
        if (v70 != 2)
        {
          v35, v63, v64, v65, v66, v67, v68, v69;
          v71 = v88;
          v86(v88, v87, v7);
          v72 = PKPassKitBundle();
          if (v72)
          {
            v73 = v72;
            if (v70)
            {
              v74 = "EXPRESS_MODE_STATE_OFF";
            }

            else
            {
              v74 = "CH_AUTHENTICATION_REASON";
            }

            sub_1BE04B6F4();
            (v74 | 0x8000000000000000), v75, v76, v77, v78, v79, v80, v81;

            v43(v71, v7);
            sub_1BE04D2B4();
            v94[3] = v31;
            v94[4] = MEMORY[0x1E69DC110];
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
            v83 = v85;
            (*(v85 + 16))(boxed_opaque_existential_1, v29, v31);
            MEMORY[0x1BFB3FD10](v94);
            (*(v83 + 8))(v29, v31);
            goto LABEL_26;
          }

          goto LABEL_31;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v45 = sub_1BE052404();
      v46 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v54 = v1[v46];
      if (v54 != 2)
      {
        v35, v47, v48, v49, v50, v51, v52, v53;
        v55 = [v1 settingsTableCellWithTitle:v45 action:sel_nfcExpressAccessSwitchChanged_ setOn:v54 & 1 enabled:1];

        v56 = *&v1[v20];
        *&v1[v20] = v55;
        v57 = v55;

LABEL_26:
        PKAccessibilityIDSet(v57, *MEMORY[0x1E69B97B0]);

        return;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v27 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport];
  if (v27 == 2)
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = v25;
  v29 = v6;
  v30 = *(v25 + 104);
  v31 = v92;
  v87 = *MEMORY[0x1E69B80D8];
  v86 = v30;
  if ((v27 & 0x100) == 0)
  {
    v30(v13);
    v32 = PKPassKitBundle();
    if (!v32)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v33 = v32;
    v91 = sub_1BE04B6F4();
    v35 = v34;
    v19 = v13;
    goto LABEL_14;
  }

  v30(v19);
  v40 = PKPassKitBundle();
  if (v40)
  {
    v33 = v40;
    v91 = sub_1BE04B6F4();
    v35 = v41;
LABEL_14:
    v38 = v28;
    goto LABEL_15;
  }

LABEL_33:
  __break(1u);
}

void sub_1BD847618(void *a1)
{
  v3 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = [a1 isOn];
  v6 = v5;
  if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    if ((v5 & 1) == 0)
    {
      [*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass) isCarKeyPass];
    }

    sub_1BD848C20(v1, v6, 0);
  }
}

void sub_1BD847720(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04D324();
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch;
  v14 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch];
  if (v14)
  {
    v15 = v14;
    return;
  }

  v16 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText;
  v17 = *&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
  if (v17)
  {
    v17;
    v18 = 0;
    return;
  }

  v66 = v9;
  v67 = v8;
  v19 = [*&v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isHomeKeyPass];
  v68 = v4;
  if (v19)
  {
    v20 = sub_1BE052404();
    v21 = PKLocalizedHomeKitUWBString(v20);

    if (v21)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v22 = sub_1BE052404();
  v21 = PKLocalizedCredentialString(v22);

  if (!v21)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_9:
  sub_1BE052434();
  v24 = v23;

  if (v1[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] == 1)
  {
    v25 = sub_1BE052404();
    v26 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v34 = v1[v26];
    if (v34 != 2)
    {
      v24, v27, v28, v29, v30, v31, v32, v33;
      v35 = [v1 settingsTableCellWithTitle:v25 action:sel_uwbExpressAccessSwitchChanged_ setOn:v34 & 1 enabled:1];

      v36 = *&v1[v13];
      *&v1[v13] = v35;
      v37 = v35;

LABEL_20:
      PKAccessibilityIDSet(v37, *MEMORY[0x1E69B9D80]);

      return;
    }

    goto LABEL_22;
  }

  v38 = [v1 primaryTextColor];
  if (!v38)
  {
    v38 = [objc_opt_self() labelColor];
  }

  v39 = [v1 value1CellWithTextColor:v38 forTableView:a1];

  v40 = *&v1[v16];
  *&v1[v16] = v39;
  v37 = v39;

  v41 = v1;
  MEMORY[0x1BFB3FD30]();
  sub_1BE048C84();
  sub_1BE04D304();
  v42 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  v50 = v41[v42];
  if (v50 == 2)
  {
    goto LABEL_23;
  }

  v24, v43, v44, v45, v46, v47, v48, v49;
  v51 = v68;
  (*(v68 + 104))(v6, *MEMORY[0x1E69B80D8], v3);
  v52 = PKPassKitBundle();
  if (v52)
  {
    v53 = v52;
    if (v50)
    {
      v54 = "EXPRESS_MODE_STATE_OFF";
    }

    else
    {
      v54 = "CH_AUTHENTICATION_REASON";
    }

    sub_1BE04B6F4();
    (v54 | 0x8000000000000000), v55, v56, v57, v58, v59, v60, v61;

    (*(v51 + 8))(v6, v3);
    sub_1BE04D2B4();
    v62 = v67;
    v69[3] = v67;
    v69[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
    v64 = v66;
    (*(v66 + 16))(boxed_opaque_existential_1, v12, v62);
    MEMORY[0x1BFB3FD10](v69);
    (*(v64 + 8))(v12, v62);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

id sub_1BD847C70(uint64_t a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    sub_1BE04B6F4();
    v11 = v10;

    (*(v4 + 8))(v7, v3);
    v12 = sub_1BE052404();
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = [v1 linkCellWithText:v12 forTableView:a1];

    PKAccessibilityIDSet(v20, *MEMORY[0x1E69B9DD8]);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD847F30(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_1BE052404();
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1BD847FB0()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = PKIsPad();
  if (v5)
  {
    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 0;
    sub_1BD846C4C(v5, v6, v7, v8, v9, v10, v11, v12);
    v13 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
    swift_beginAccess();
    v0[v13] = 0;
    v14 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v14] = 0;
    return;
  }

  v15 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController];
  v16 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass];
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v16;
  }

  v19 = [v15 isExpressModeSupportedForPass_];

  if (v19)
  {
    if ([v16 isHomeKeyPass])
    {
      v20 = *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 1;
      v21 = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] >> 1) & 1;
    }

    else if ([v16 isCarKeyPass])
    {
      v21 = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 2uLL) >> 1;
      LOWORD(v20) = (*&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] & 2) == 0;
    }

    else
    {
      LOBYTE(v21) = 0;
      LOWORD(v20) = 1;
    }

    v35 = [v15 existingExpressPassConfigurationForPass_];
    v43 = v35;
    if (v21)
    {
      v44 = 256;
    }

    else
    {
      v44 = 0;
    }

    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = v44 | v20;
    sub_1BD846C4C(v35, v36, v37, v38, v39, v40, v41, v42);
    if (v43)
    {
      v45 = [v43 isNFCExpressEnabled];
      v46 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v0[v46] = v45;
      v47 = [v43 isUWBExpressEnabled];
    }

    else
    {
      v48 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
      swift_beginAccess();
      v47 = 0;
      v0[v48] = 0;
    }

    v49 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v49] = v47;
  }

  else
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v16;
    }

    v24 = [v15 hasEligibleExpressUpgradeRequestForPass_];

    *&v0[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = v24;
    sub_1BD846C4C(v25, v26, v27, v28, v29, v30, v31, v32);
    v33 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
    swift_beginAccess();
    v0[v33] = 0;
    v34 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
    swift_beginAccess();
    v0[v34] = 0;
  }

  sub_1BE04D1E4();
  v50 = v0;
  v51 = sub_1BE04D204();
  v52 = sub_1BE052C54();
  if (os_log_type_enabled(v51, v52))
  {
    v85 = v2;
    v86 = v1;
    v53 = v19;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v87 = v55;
    *v54 = 67110658;
    *(v54 + 4) = v50[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass];
    *(v54 + 8) = 2080;
    v56 = PKRadioTechnologiesToString();
    if (v56)
    {
      v57 = v56;
      v58 = sub_1BE052434();
      v60 = v59;

      v61 = sub_1BD123690(v58, v60, &v87);
      v60, v62, v63, v64, v65, v66, v67, v68;
      *(v54 + 10) = v61;
      *(v54 + 18) = 1024;
      *(v54 + 20) = v53;
      *(v54 + 24) = 1024;
      v69 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport;
      v70 = *&v50[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport];

      if (v70 != 2)
      {
        *(v54 + 26) = v70 & 1;

        *(v54 + 30) = 1024;
        v71 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
        swift_beginAccess();
        v72 = v50[v71];

        if (v72 != 2)
        {
          *(v54 + 32) = v72 & 1;

          *(v54 + 36) = 1024;
          v73 = *&v50[v69];

          v74 = v86;
          if (v73 != 2)
          {
            *(v54 + 38) = (v73 >> 8) & 1;

            *(v54 + 42) = 1024;
            v75 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
            swift_beginAccess();
            v76 = v50[v75];

            if (v76 != 2)
            {
              *(v54 + 44) = v76 & 1;

              _os_log_impl(&dword_1BD026000, v51, v52, "ExpressTogglesPaymentPassDetailSectionController: Updated for express info (credentialed: %{BOOL}d, radio technology supported: %s, express supported: %{BOOL}d, nfc supported: %{BOOL}d, nfc enabled: %{BOOL}d, uwb supported: %{BOOL}d, uwb enabled: %{BOOL}d", v54, 0x30u);
              __swift_destroy_boxed_opaque_existential_0(v55, v77, v78, v79, v80, v81, v82, v83);
              MEMORY[0x1BFB45F20](v55, -1, -1);
              MEMORY[0x1BFB45F20](v54, -1, -1);

              (*(v85 + 8))(v4, v74);
              return;
            }

            goto LABEL_34;
          }

LABEL_33:

          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

LABEL_32:

        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  (*(v2 + 8))(v4, v1);
}

void sub_1BD8485B4(char a1, void *a2)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  }

  else
  {
    v9 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  }

  v10 = &v2[v9];
  swift_beginAccess();
  v11 = *v10;
  v12 = [a2 isOn];
  v13 = v12;
  if (v11 != 2 && ((v12 ^ v11) & 1) == 0)
  {
    return;
  }

  if ((v12 & 1) != 0 || ![*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] isCarKeyPass] || (a1 & 1) == 0)
  {
    sub_1BD848C20(v2, v13, a1 & 1);
    return;
  }

  if (*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] == 2)
  {
    v14 = sub_1BE052404();
    v15 = PKLocalizedCredentialString(v14);

    if (v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  if (*&v2[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] != 2)
  {
    goto LABEL_16;
  }

  v16 = sub_1BE052404();
  v15 = PKLocalizedCredentialString(v16);

  if (!v15)
  {
    __break(1u);
LABEL_16:
    v17 = sub_1BE052404();
    v15 = PKLocalizedCredentialString(v17);

    if (!v15)
    {
      __break(1u);
      return;
    }
  }

LABEL_17:
  sub_1BE052434();
  v19 = v18;

  v20 = sub_1BE052404();
  v21 = PKLocalizedCredentialString(v20);

  if (v21)
  {
    sub_1BE052434();
    v23 = v22;

    v21 = sub_1BE052404();
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  v31 = sub_1BE052404();
  v19, v32, v33, v34, v35, v36, v37, v38;
  v39 = [objc_opt_self() alertControllerWithTitle:v21 message:v31 preferredStyle:1];

  PKApplyDefaultIconToAlertController();
  v40 = sub_1BE052404();
  v41 = PKLocalizedCredentialString(v40);

  if (v41)
  {
    sub_1BE052434();
    v43 = v42;

    v44 = swift_allocObject();
    *(v44 + 16) = v2;
    *(v44 + 24) = 256;
    v45 = v2;
    v46 = sub_1BE052404();
    v43, v47, v48, v49, v50, v51, v52, v53;
    v54 = sub_1BD84CE70;
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v2;
    *(v44 + 24) = 256;
    v55 = v2;
    v46 = 0;
    v54 = sub_1BD84CCF8;
  }

  v102 = v54;
  v103 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v99 = 1107296256;
  v100 = sub_1BD198918;
  v101 = &block_descriptor_60_3;
  v56 = _Block_copy(&aBlock);
  v103, v57, v58, v59, v60, v61, v62, v63;
  v64 = objc_opt_self();
  v65 = [v64 actionWithTitle:v46 style:0 handler:v56];
  _Block_release(v56);

  [v39 addAction_];
  (*(v6 + 104))(v8, *MEMORY[0x1E69B80D0], v5);
  sub_1BE04B714();
  v67 = v66;
  (*(v6 + 8))(v8, v5);
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = 0;
  sub_1BE048964();
  v70 = sub_1BE052404();
  v67, v71, v72, v73, v74, v75, v76, v77;
  v102 = sub_1BD84CD08;
  v103 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v99 = 1107296256;
  v100 = sub_1BD198918;
  v101 = &block_descriptor_67_2;
  v78 = _Block_copy(&aBlock);
  v103, v79, v80, v81, v82, v83, v84, v85;
  v86 = [v64 actionWithTitle:v70 style:1 handler:v78];
  _Block_release(v78);
  v68, v87, v88, v89, v90, v91, v92, v93;

  [v39 addAction_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v95 = Strong;
    v96 = [Strong navigationController];

    if (v96)
    {
      [v96 presentViewController:v39 animated:1 completion:0];
    }
  }
}

void sub_1BD848C20(uint64_t a1, char a2, int a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  v13 = PKPaymentSetupContextForViewStyle(*(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle));
  v14 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch);
  if (v14)
  {
    [v14 setUserInteractionEnabled_];
  }

  v15 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch);
  if (v15)
  {
    [v15 setUserInteractionEnabled_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong willToggleExpress];
  }

  if ((a2 & 1) == 0 || v13 == 4)
  {
    sub_1BD84C068(a2 & 1, a3 & 1, 0, 0xF000000000000000);
  }

  else
  {
    v88 = v9;
    v84 = v13;
    v85 = a3;
    if (a3)
    {
      v18 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
      [v18 isHomeKeyPass];
      v19 = *MEMORY[0x1E69B80D8];
      v83 = v7;
      v20 = (v7 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v21 = v7[13];
      v21(v12, v19, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      v23 = [v18 localizedDescription];
      v24 = sub_1BE052434();
      v26 = v25;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      v86 = v20;
      v87 = v21;
      v40 = sub_1BE04B714();
      v41 = v33;
      v7 = v83;
    }

    else
    {
      v27 = *MEMORY[0x1E69B80D8];
      v28 = v7[13];
      v86 = (v7 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v87 = v28;
      v28(v12, v27, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1BE0B69E0;
      v29 = [*(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass) localizedDescription];
      v30 = sub_1BE052434();
      v32 = v31;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1BD110550();
      *(v22 + 32) = v30;
      *(v22 + 40) = v32;
      v40 = sub_1BE04B714();
      v41 = v33;
    }

    v22, v33, v34, v35, v36, v37, v38, v39;
    v42 = v7[1];
    v42(v12, v6);
    v43 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
    v44 = *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext);
    *(a1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext) = v43;
    v83 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CC38, &unk_1BE0FD0E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B6CA0;
    *(inited + 32) = 2;
    *(inited + 40) = v40;
    *(inited + 48) = v41;
    *(inited + 56) = 1021;
    v46 = v88;
    v87(v88, *MEMORY[0x1E69B80D0], v6);
    v47 = PKPassKitBundle();
    if (v47)
    {
      v48 = v47;
      v49 = sub_1BE04B6F4();
      v51 = v50;

      v42(v46, v6);
      *(inited + 64) = v49;
      *(inited + 72) = v51;
      v52 = sub_1BD1AB678(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD557F0, &qword_1BE0BFE80);
      swift_arrayDestroy();
      v53 = sub_1BD1A854C(v52);
      v52, v54, v55, v56, v57, v58, v59, v60;
      v61 = sub_1BE052224();
      v53, v62, v63, v64, v65, v66, v67, v68;
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      v71 = v83;
      *(v70 + 16) = v83;
      *(v70 + 24) = v69;
      *(v70 + 32) = v85 & 1;
      *(v70 + 40) = v84;
      aBlock[4] = sub_1BD84CD14;
      v90 = v70;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD1AA864;
      aBlock[3] = &block_descriptor_78_1;
      v72 = _Block_copy(aBlock);
      v73 = v90;
      v74 = v71;
      v73, v75, v76, v77, v78, v79, v80, v81;
      [v74 evaluatePolicy:2 options:v61 reply:v72];
      _Block_release(v72);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD849258(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v32 = a6;
  v31 = a5;
  v10 = sub_1BE051F54();
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1BE051FA4();
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v33 = sub_1BE052D54();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = v31;
  *(v16 + 56) = v32;
  aBlock[4] = sub_1BD84CD24;
  v37 = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_84_1;
  v17 = _Block_copy(aBlock);
  v18 = v37;
  sub_1BE048C84();
  v19 = a2;
  v20 = a3;
  sub_1BE048964();
  v18, v21, v22, v23, v24, v25, v26, v27;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v28 = v33;
  MEMORY[0x1BFB3FDF0](0, v15, v12, v17);
  _Block_release(v17);

  (*(v35 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v34);
}

void sub_1BD849530(uint64_t a1, uint64_t a2, id a3, uint64_t a4, char a5)
{
  v6 = 0;
  v7 = 0xF000000000000000;
  if (a1 && !a2)
  {
    v8 = [a3 externalizedContext];
    if (v8)
    {
      v9 = v8;
      v6 = sub_1BE04AAC4();
      v7 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1BD84C068(1, a5 & 1, v6, v7);
    sub_1BD030220(v6, v7, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    sub_1BD030220(v6, v7, v12, v13, v14, v15, v16, v17);
  }
}

void sub_1BD84960C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 setOn_];
    }
  }
}

void sub_1BD84969C(char a1, char a2, uint64_t a3)
{
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BE051FA4();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  *(v14 + 25) = a1;
  aBlock[4] = sub_1BD84CDC8;
  v32 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_105_2;
  v15 = _Block_copy(aBlock);
  v16 = v32;
  sub_1BE048964();
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v30);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext;
    v27 = *(Strong + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext);
    if (v27)
    {
      [v27 invalidate];
      v28 = *&v25[v26];
      *&v25[v26] = 0;

      v25 = v28;
    }
  }
}

void sub_1BD849998(uint64_t a1, char a2, int a3)
{
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v67 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  v69 = a3;
  v14 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  v13[v14] = a2 & 1;
  v15 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch;
  [*&v13[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] setOn_];
  v16 = *&v13[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText];
  if (v16)
  {
    v17 = [v16 detailTextLabel];
    if (v17)
    {
      v18 = v17;
      v68 = v15;
      (*(v6 + 104))(v11, *MEMORY[0x1E69B80D8], v5);
      v19 = PKPassKitBundle();
      if (!v19)
      {
        __break(1u);
        goto LABEL_25;
      }

      v20 = v19;
      if (a2)
      {
        v21 = "EXPRESS_MODE_STATE_OFF";
      }

      else
      {
        v21 = "CH_AUTHENTICATION_REASON";
      }

      sub_1BE04B6F4();
      v23 = v22;
      (v21 | 0x8000000000000000), v22, v24, v25, v26, v27, v28, v29;

      (*(v6 + 8))(v11, v5);
      v30 = sub_1BE052404();
      v23, v31, v32, v33, v34, v35, v36, v37;
      [v18 setText_];

      v15 = v68;
    }
  }

  v38 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  v39 = v69;
  v13[v38] = v69 & 1;
  v40 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch;
  [*&v13[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] setOn_];
  v41 = *&v13[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText];
  if (v41)
  {
    v42 = [v41 detailTextLabel];
    if (v42)
    {
      v43 = v42;
      v68 = v15;
      (*(v6 + 104))(v8, *MEMORY[0x1E69B80D8], v5);
      v44 = PKPassKitBundle();
      if (v44)
      {
        v45 = v44;
        if (v39)
        {
          v46 = "EXPRESS_MODE_STATE_OFF";
        }

        else
        {
          v46 = "CH_AUTHENTICATION_REASON";
        }

        sub_1BE04B6F4();
        v48 = v47;
        (v46 | 0x8000000000000000), v47, v49, v50, v51, v52, v53, v54;

        (*(v6 + 8))(v8, v5);
        v55 = sub_1BE052404();
        v48, v56, v57, v58, v59, v60, v61, v62;
        [v43 setText_];

        v15 = v68;
        goto LABEL_16;
      }

LABEL_25:
      __break(1u);
      return;
    }
  }

LABEL_16:
  v63 = *&v13[v40];
  if (v63)
  {
    [v63 setUserInteractionEnabled_];
  }

  v64 = *&v13[v15];
  if (v64)
  {
    [v64 setUserInteractionEnabled_];
  }

  v65 = swift_unknownObjectWeakLoadStrong();
  if (v65)
  {
    v66 = v65;
    [v65 didFinishTogglingExpress];

    v13 = v66;
  }
}

void sub_1BD849DA4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, id), uint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v214 = Strong;
  v213 = a4;
  if (a1 && (sub_1BD6CC9C0(a3, a1) & 1) != 0)
  {
    sub_1BE052434();
    v14 = v13;
    v15 = sub_1BE052404();
    v16 = *MEMORY[0x1E69BB730];
    v17 = *MEMORY[0x1E69BAC28];
    v18 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
    v19 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle);
    v20 = v15;
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v24 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69BA680]];
    [v24 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
    v25 = MEMORY[0x1E69BB0C8];
    if (v19 != 2)
    {
      v25 = MEMORY[0x1E69BB0F8];
    }

    [v24 setObject:*v25 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
    v26 = v24;
    v27 = v23;
    v28 = v27;
    if (!v23 || !v24)
    {
LABEL_234:

      if ([0 count])
      {
        v220 = MEMORY[0x1E69E9820];
        v221 = 3221225472;
        v222 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
        v223 = &unk_1E80106A8;
        v224 = v26;
        v197 = v26;
        [0 enumerateKeysAndObjectsUsingBlock:&v220];
      }

      [MEMORY[0x1E69B8540] beginSubjectReporting:v21];
      [MEMORY[0x1E69B8540] subject:v21 sendEvent:v26];
      [MEMORY[0x1E69B8540] endSubjectReporting:v21];

      v14, v198, v199, v200, v201, v202, v203, v204;
      v213([a3 isNFCExpressEnabled], objc_msgSend(a3, sel_isUWBExpressEnabled));
      goto LABEL_237;
    }

    v29 = [v27 passType];
    v30 = MEMORY[0x1E69BB3A8];
    v215 = v20;
    v219 = v14;
    if (v29 == -1)
    {
      v31 = @"any";
      v77 = @"any";
    }

    else if (v29 == 1)
    {
      v31 = @"payment";
      v76 = @"payment";
    }

    else if (v29)
    {
      v31 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v31 = @"barcode";
      v32 = @"barcode";
    }

    [v26 setObject:v31 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v78 = [v28 style];
    v79 = v28;
    v80 = [v79 secureElementPass];
    v81 = [v80 isIdentityPass];

    if (v81)
    {
      v82 = @"identity";
LABEL_68:
      v83 = v82;
      goto LABEL_69;
    }

    if (v78 > 5)
    {
      if (v78 <= 8)
      {
        if (v78 == 6)
        {
          v82 = @"payment";
        }

        else if (v78 == 7)
        {
          v82 = @"access";
        }

        else
        {
          v82 = @"healthPass";
        }

        goto LABEL_68;
      }

      if (v78 == 9)
      {
        goto LABEL_132;
      }

      if (v78 != 10)
      {
        if (v78 == 13)
        {
          v82 = @"numberOfPublicStyles";
          goto LABEL_68;
        }

LABEL_205:
        v82 = *v30;
LABEL_69:

        [v26 setObject:v82 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v84 = [v79 nfcPayload];
        v85 = PKAnalyticsReportSwitchToggleResultValue();
        [v26 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v86 = v79;
        v211 = v22;
        if ([v86 passType] == 1)
        {
          v87 = [v86 secureElementPass];
          v88 = [v87 cardType];
          if (v88 < 5)
          {
            v85 = **(&unk_1E80106C8 + v88);
          }
        }

        else
        {
          v85 = @"other";
          v89 = @"other";
        }

        [v26 setObject:v85 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v90 = v86;
        v91 = [v90 secureElementPass];
        if ([v91 isIdentityPass])
        {
          v92 = [v91 identityType];
          if (v92 <= 2)
          {
            if (v92 == 1)
            {
              v93 = MEMORY[0x1E69BA648];
              goto LABEL_130;
            }

            if (v92 == 2)
            {
              v93 = MEMORY[0x1E69BB2C8];
              goto LABEL_130;
            }
          }

          else
          {
            switch(v92)
            {
              case 3:
                goto LABEL_85;
              case 4:
                v93 = MEMORY[0x1E69BA8E0];
                goto LABEL_130;
              case 5:
LABEL_85:
                v93 = MEMORY[0x1E69BACB0];
LABEL_130:
                v98 = *v93;
                goto LABEL_131;
            }
          }

LABEL_102:
          v98 = *v30;
LABEL_131:
          v97 = v98;
          goto LABEL_216;
        }

        if (![v91 isAccessPass])
        {
          goto LABEL_102;
        }

        v94 = [v91 accessType];
        v95 = [v91 accessReportingType];
        v96 = v95;
        if (v94 <= 2)
        {
          switch(v94)
          {
            case 0:
              v173 = @"general";
              if (v95)
              {
                v173 = v95;
              }

              goto LABEL_210;
            case 1:
              v97 = @"hospitality";
              goto LABEL_214;
            case 2:
              v97 = @"corporate";
LABEL_214:
              v174 = v97;
              goto LABEL_215;
          }
        }

        else
        {
          if (v94 <= 4)
          {
            if (v94 == 3)
            {
              v97 = @"singlefamily";
            }

            else
            {
              v97 = @"cars";
            }

            goto LABEL_214;
          }

          if (v94 == 5)
          {
            v97 = @"multifamily";
            goto LABEL_214;
          }

          if (v94 == 6)
          {
            v97 = @"urbanmobility";
            goto LABEL_214;
          }
        }

        v173 = *v30;
LABEL_210:
        v97 = v173;
LABEL_215:

LABEL_216:
        [v26 setObject:v97 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

        v175 = v90;
        v176 = [v175 secureElementPass];
        v177 = [v176 devicePaymentApplications];
        [v177 count];

        v178 = PKAnalyticsReportSwitchToggleResultValue();

        [v26 setObject:v178 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
        v179 = v175;
        v180 = [v179 secureElementPass];
        v181 = *v30;
        v182 = [v180 organizationName];
        if ([v182 length])
        {
          v183 = [v180 cardType];
          if (v183 <= 4 && ((1 << v183) & 0x16) != 0)
          {
            v184 = v182;

            v181 = v184;
          }
        }

        [v26 setObject:v181 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
        v185 = [v179 secureElementPass];
        v186 = v185;
        if (v185)
        {
          [v185 devicePaymentApplications];
          v225 = 0u;
          v226 = 0u;
          v227 = 0u;
          v187 = v228 = 0u;
          v188 = [v187 countByEnumeratingWithState:&v225 objects:&v220 count:16];
          v209 = v28;
          if (v188)
          {
            v189 = v188;
            v190 = 0;
            v191 = *v226;
LABEL_224:
            v192 = 0;
            while (1)
            {
              if (*v226 != v191)
              {
                objc_enumerationMutation(v187);
              }

              v193 = *(*(&v225 + 1) + 8 * v192);
              if (v190)
              {
                if (v190 != [*(*(&v225 + 1) + 8 * v192) paymentType])
                {
                  break;
                }
              }

              v190 = [v193 paymentType];
              if (v189 == ++v192)
              {
                v189 = [v187 countByEnumeratingWithState:&v225 objects:&v220 count:16];
                if (!v189)
                {
                  goto LABEL_231;
                }

                goto LABEL_224;
              }
            }

            v194 = @"multiple";
            v195 = @"multiple";
          }

          else
          {
LABEL_231:

            v194 = PKPaymentMethodTypeToString();
          }

          [v26 setObject:v194 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          v196 = [v186 issuerCountryCode];
          [v26 setObject:v196 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

          v28 = v209;
        }

        v20 = v215;
        v14 = v219;
        v22 = v211;
        goto LABEL_234;
      }
    }

    else
    {
      if (v78 <= 2)
      {
        if (!v78)
        {
          v82 = @"coupon";
          goto LABEL_68;
        }

        if (v78 == 1)
        {
          v82 = @"giftCard";
          goto LABEL_68;
        }

        if (v78 != 2)
        {
          goto LABEL_205;
        }

LABEL_132:
        v82 = @"eventTicket";
        goto LABEL_68;
      }

      if (v78 == 3)
      {
        v82 = @"sportingEventTicketDeprecated";
        goto LABEL_68;
      }

      if (v78 != 4)
      {
        v82 = @"generic";
        goto LABEL_68;
      }
    }

    v82 = @"boardingPass";
    goto LABEL_68;
  }

  sub_1BE052434();
  v34 = v33;
  v35 = sub_1BE052404();
  v36 = *MEMORY[0x1E69BB730];
  v37 = *MEMORY[0x1E69BAC28];
  v38 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  v39 = *(v12 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle);
  v40 = v35;
  v41 = v36;
  v42 = v37;
  v43 = v38;
  v44 = v40;
  v45 = v43;
  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v46 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  v216 = v42;
  [v46 setObject:v42 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v47 = MEMORY[0x1E69BB0C8];
  if (v39 != 2)
  {
    v47 = MEMORY[0x1E69BB0F8];
  }

  [v46 setObject:*v47 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  v48 = v46;
  v49 = v45;
  v50 = v49;
  if (v45 && v46)
  {
    v51 = [v49 passType];
    v210 = a1;
    if (v51 == -1)
    {
      v52 = @"any";
      v55 = @"any";
    }

    else if (v51 == 1)
    {
      v52 = @"payment";
      v54 = @"payment";
    }

    else if (v51)
    {
      v52 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v52 = @"barcode";
      v53 = @"barcode";
    }

    [v48 setObject:v52 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v56 = [v50 style];
    v207 = v50;
    v57 = v50;
    v58 = [v57 secureElementPass];
    v59 = [v58 isIdentityPass];

    if (v59)
    {
      v60 = @"identity";
LABEL_25:
      v61 = v60;
      goto LABEL_26;
    }

    if (v56 > 5)
    {
      if (v56 <= 8)
      {
        if (v56 == 6)
        {
          v60 = @"payment";
        }

        else if (v56 == 7)
        {
          v60 = @"access";
        }

        else
        {
          v60 = @"healthPass";
        }

        goto LABEL_25;
      }

      if (v56 == 9)
      {
        goto LABEL_106;
      }

      if (v56 != 10)
      {
        if (v56 == 13)
        {
          v60 = @"numberOfPublicStyles";
          goto LABEL_25;
        }

LABEL_127:
        v60 = *MEMORY[0x1E69BB3A8];
LABEL_26:

        [v48 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v62 = [v57 nfcPayload];
        v63 = PKAnalyticsReportSwitchToggleResultValue();
        [v48 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v64 = v57;
        v206 = a7;
        if ([v64 passType] == 1)
        {
          v65 = [v64 secureElementPass];
          v66 = [v65 cardType];
          if (v66 < 5)
          {
            v62 = **(&unk_1E80106C8 + v66);
          }
        }

        else
        {
          v62 = @"other";
          v67 = @"other";
        }

        [v48 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v68 = v64;
        v69 = [v68 secureElementPass];
        if ([v69 isIdentityPass])
        {
          v70 = [v69 identityType];
          if (v70 <= 2)
          {
            if (v70 == 1)
            {
              v71 = MEMORY[0x1E69BA648];
              goto LABEL_105;
            }

            if (v70 == 2)
            {
              v71 = MEMORY[0x1E69BB2C8];
              goto LABEL_105;
            }
          }

          else
          {
            switch(v70)
            {
              case 3:
                goto LABEL_42;
              case 4:
                v71 = MEMORY[0x1E69BA8E0];
                goto LABEL_105;
              case 5:
LABEL_42:
                v71 = MEMORY[0x1E69BACB0];
LABEL_105:
                v75 = *v71;
                goto LABEL_147;
            }
          }

LABEL_55:
          v71 = MEMORY[0x1E69BB3A8];
          goto LABEL_105;
        }

        if (![v69 isAccessPass])
        {
          goto LABEL_55;
        }

        v72 = [v69 accessType];
        v73 = [v69 accessReportingType];
        v74 = v73;
        if (v72 <= 2)
        {
          switch(v72)
          {
            case 0:
              v99 = @"general";
              if (v73)
              {
                v99 = v73;
              }

              goto LABEL_141;
            case 1:
              v75 = @"hospitality";
              goto LABEL_145;
            case 2:
              v75 = @"corporate";
LABEL_145:
              v100 = v75;
              goto LABEL_146;
          }
        }

        else
        {
          if (v72 <= 4)
          {
            if (v72 == 3)
            {
              v75 = @"singlefamily";
            }

            else
            {
              v75 = @"cars";
            }

            goto LABEL_145;
          }

          if (v72 == 5)
          {
            v75 = @"multifamily";
            goto LABEL_145;
          }

          if (v72 == 6)
          {
            v75 = @"urbanmobility";
            goto LABEL_145;
          }
        }

        v99 = *MEMORY[0x1E69BB3A8];
LABEL_141:
        v75 = v99;
LABEL_146:

LABEL_147:
        [v48 setObject:v75 forKeyedSubscript:*MEMORY[0x1E69BAC88]];

        v101 = v68;
        v102 = [v101 secureElementPass];
        v103 = [v102 devicePaymentApplications];
        [v103 count];

        v104 = PKAnalyticsReportSwitchToggleResultValue();

        [v48 setObject:v104 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
        v105 = v101;
        v106 = [v105 secureElementPass];
        v107 = *MEMORY[0x1E69BB3A8];
        v108 = [v106 organizationName];
        if ([v108 length])
        {
          v109 = [v106 cardType];
          a1 = v210;
          if (v109 > 4 || ((1 << v109) & 0x16) == 0)
          {
            goto LABEL_152;
          }

          v110 = v108;

          v107 = v110;
        }

        a1 = v210;
LABEL_152:

        [v48 setObject:v107 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
        v111 = [v105 secureElementPass];
        v112 = v111;
        if (v111)
        {
          v205 = v44;
          [v111 devicePaymentApplications];
          v225 = 0u;
          v226 = 0u;
          v227 = 0u;
          v113 = v228 = 0u;
          v114 = [v113 countByEnumeratingWithState:&v225 objects:&v220 count:16];
          if (v114)
          {
            v115 = v114;
            v116 = 0;
            v117 = *v226;
LABEL_156:
            v118 = v34;
            v119 = 0;
            while (1)
            {
              if (*v226 != v117)
              {
                objc_enumerationMutation(v113);
              }

              v120 = *(*(&v225 + 1) + 8 * v119);
              if (v116)
              {
                if (v116 != [*(*(&v225 + 1) + 8 * v119) paymentType])
                {
                  break;
                }
              }

              v116 = [v120 paymentType];
              if (v115 == ++v119)
              {
                v115 = [v113 countByEnumeratingWithState:&v225 objects:&v220 count:16];
                v34 = v118;
                if (!v115)
                {
                  goto LABEL_163;
                }

                goto LABEL_156;
              }
            }

            v121 = @"multiple";
            v122 = @"multiple";

            v34 = v118;
          }

          else
          {
LABEL_163:

            v121 = PKPaymentMethodTypeToString();
          }

          [v48 setObject:v121 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
          v123 = [v112 issuerCountryCode];
          [v48 setObject:v123 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

          a1 = v210;
          a4 = v213;
          v44 = v205;
        }

        a7 = v206;
        v50 = v207;
        goto LABEL_166;
      }
    }

    else
    {
      if (v56 <= 2)
      {
        if (!v56)
        {
          v60 = @"coupon";
          goto LABEL_25;
        }

        if (v56 == 1)
        {
          v60 = @"giftCard";
          goto LABEL_25;
        }

        if (v56 != 2)
        {
          goto LABEL_127;
        }

LABEL_106:
        v60 = @"eventTicket";
        goto LABEL_25;
      }

      if (v56 == 3)
      {
        v60 = @"sportingEventTicketDeprecated";
        goto LABEL_25;
      }

      if (v56 != 4)
      {
        v60 = @"generic";
        goto LABEL_25;
      }
    }

    v60 = @"boardingPass";
    goto LABEL_25;
  }

LABEL_166:

  if ([0 count])
  {
    v220 = MEMORY[0x1E69E9820];
    v221 = 3221225472;
    v222 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
    v223 = &unk_1E80106A8;
    v224 = v48;
    v124 = v48;
    [0 enumerateKeysAndObjectsUsingBlock:&v220];
  }

  [MEMORY[0x1E69B8540] beginSubjectReporting:v41];
  [MEMORY[0x1E69B8540] subject:v41 sendEvent:v48];
  [MEMORY[0x1E69B8540] endSubjectReporting:v41];

  v34, v125, v126, v127, v128, v129, v130, v131;
  if (!a1)
  {
    v139 = 0;
    v140 = 0;
    v141 = 0;
LABEL_199:
    a4(v140, v139);

LABEL_237:
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD55800, 0x1E69B8848);
    sub_1BD84CD60();
    sub_1BE052A74();
    a1 = v220;
    v135 = v221;
    v136 = v222;
    v137 = v223;
    v138 = v224;
  }

  else
  {
    v142 = -1 << *(a1 + 32);
    v135 = (a1 + 56);
    v136 = ~v142;
    v143 = -v142;
    if (v143 < 64)
    {
      v144 = ~(-1 << v143);
    }

    else
    {
      v144 = -1;
    }

    v138 = (v144 & *(a1 + 56));
    sub_1BE048C84();
    v137 = 0;
  }

  v208 = v136;
  v145 = (v136 + 64) >> 6;
  v217 = v137;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_180;
  }

LABEL_177:
  if (!sub_1BE053744())
  {
LABEL_194:
    sub_1BD0D45FC(a1, v135, v208, v137, v138, v132, v133, v134);
    v139 = 0;
    v140 = 0;
    v141 = 0;
LABEL_198:
    a4 = v213;
    goto LABEL_199;
  }

  sub_1BD0E5E8C(0, &qword_1EBD55800, 0x1E69B8848);
  swift_dynamicCast();
  v141 = v225;
  v212 = v138;
  if (!v225)
  {
LABEL_195:
    v138 = v212;
LABEL_193:
    v137 = v217;
    goto LABEL_194;
  }

  while (1)
  {
    v148 = a1;
    v149 = a7;
    v150 = [v141 passUniqueIdentifier];
    v151 = sub_1BE052434();
    v153 = v152;

    if (v151 == a6 && v153 == v149)
    {
      v153, v154, a6, v155, v156, v157, v158, v159;
LABEL_197:
      sub_1BD0D45FC(v148, v135, v208, v217, v212, v169, v170, v171);
      v172 = [v141 isNFCExpressEnabled];
      v139 = [v141 isUWBExpressEnabled];
      v140 = v172;
      goto LABEL_198;
    }

    a7 = v149;
    v161 = sub_1BE053B84();
    v153, v162, v163, v164, v165, v166, v167, v168;
    if (v161)
    {
      goto LABEL_197;
    }

    a1 = v148;
    v217 = v137;
    if (v148 < 0)
    {
      goto LABEL_177;
    }

LABEL_180:
    v146 = v137;
    v147 = v138;
    if (!v138)
    {
      break;
    }

LABEL_184:
    v212 = v138;
    v138 = ((v147 - 1) & v147);
    v141 = *(*(a1 + 48) + ((v137 << 9) | (8 * __clz(__rbit64(v147)))));
    if (!v141)
    {
      goto LABEL_195;
    }
  }

  while (1)
  {
    v137 = v146 + 1;
    if (__OFADD__(v146, 1))
    {
      break;
    }

    if (v137 >= v145)
    {
      v138 = 0;
      goto LABEL_193;
    }

    v147 = *&v135[8 * v137];
    ++v146;
    if (v147)
    {
      goto LABEL_184;
    }
  }

  __break(1u);
}

void sub_1BD84B1E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD55800, 0x1E69B8848);
    sub_1BD84CD60();
    v2 = sub_1BE052A34();
  }

  sub_1BE048964();
  v4(v2);
  v3, v5, v6, v7, v8, v9, v10, v11;

  v2, v12, v13, v14, v15, v16, v17, v18;
}

void sub_1BD84B274(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v133 = a5;
  sub_1BE052434();
  v11 = v10;
  v12 = sub_1BE052404();
  v13 = *MEMORY[0x1E69BB730];
  v14 = *MEMORY[0x1E69BAC28];
  v15 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass];
  v132 = v9;
  v16 = *&v9[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle];
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v20 = v15;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v136 = v17;
  v22 = v17;
  v23 = v19;
  [v21 setObject:v22 forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v21 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v24 = MEMORY[0x1E69BB0C8];
  if (v16 != 2)
  {
    v24 = MEMORY[0x1E69BB0F8];
  }

  [v21 setObject:*v24 forKeyedSubscript:*MEMORY[0x1E69BB0E0]];
  v25 = v21;
  v26 = v20;
  v27 = v26;
  if (v20 && v21)
  {
    v130 = v11;
    v28 = [v26 passType];
    v29 = MEMORY[0x1E69BB3A8];
    v134 = a1;
    if (v28 == -1)
    {
      v30 = @"any";
      v33 = @"any";
    }

    else if (v28 == 1)
    {
      v30 = @"payment";
      v32 = @"payment";
    }

    else if (v28)
    {
      v30 = *MEMORY[0x1E69BB3A8];
    }

    else
    {
      v30 = @"barcode";
      v31 = @"barcode";
    }

    [v25 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69BACA8]];

    v34 = [v27 style];
    v35 = v27;
    v36 = [v35 secureElementPass];
    v37 = [v36 isIdentityPass];

    if (v37)
    {
      v38 = @"identity";
LABEL_15:
      v39 = v38;
      goto LABEL_16;
    }

    if (v34 > 5)
    {
      if (v34 <= 8)
      {
        if (v34 == 6)
        {
          v38 = @"payment";
        }

        else if (v34 == 7)
        {
          v38 = @"access";
        }

        else
        {
          v38 = @"healthPass";
        }

        goto LABEL_15;
      }

      if (v34 == 9)
      {
        goto LABEL_61;
      }

      if (v34 != 10)
      {
        if (v34 == 13)
        {
          v38 = @"numberOfPublicStyles";
          goto LABEL_15;
        }

LABEL_71:
        v38 = *v29;
LABEL_16:

        [v25 setObject:v38 forKeyedSubscript:*MEMORY[0x1E69BACA0]];
        v40 = [v35 nfcPayload];
        v41 = PKAnalyticsReportSwitchToggleResultValue();
        [v25 setObject:v41 forKeyedSubscript:*MEMORY[0x1E69BAC68]];

        v42 = v35;
        v129 = a4;
        if ([v42 passType] == 1)
        {
          v43 = [v42 secureElementPass];
          v44 = [v43 cardType];
          if (v44 < 5)
          {
            v40 = **(&unk_1E80106C8 + v44);
          }
        }

        else
        {
          v40 = @"other";
          v45 = @"other";
        }

        [v25 setObject:v40 forKeyedSubscript:*MEMORY[0x1E69BAC90]];
        v46 = v42;
        v47 = [v46 secureElementPass];
        if ([v47 isIdentityPass])
        {
          v48 = [v47 identityType];
          if (v48 <= 2)
          {
            if (v48 == 1)
            {
              v49 = MEMORY[0x1E69BA648];
              goto LABEL_59;
            }

            if (v48 == 2)
            {
              v49 = MEMORY[0x1E69BB2C8];
              goto LABEL_59;
            }
          }

          else
          {
            switch(v48)
            {
              case 3:
                goto LABEL_32;
              case 4:
                v49 = MEMORY[0x1E69BA8E0];
                goto LABEL_59;
              case 5:
LABEL_32:
                v49 = MEMORY[0x1E69BACB0];
LABEL_59:
                v54 = *v49;
                goto LABEL_60;
            }
          }

LABEL_45:
          v54 = *v29;
LABEL_60:
          v53 = v54;
LABEL_82:

          [v25 setObject:v53 forKeyedSubscript:*MEMORY[0x1E69BAC88]];
          v57 = v46;
          v58 = [v57 secureElementPass];
          v59 = [v58 devicePaymentApplications];
          [v59 count];

          v60 = PKAnalyticsReportSwitchToggleResultValue();

          [v25 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69BA4E0]];
          v61 = v57;
          v62 = [v61 secureElementPass];
          v63 = *v29;
          v64 = [v62 organizationName];
          if ([v64 length])
          {
            v65 = [v62 cardType];
            a1 = v134;
            v11 = v130;
            if (v65 <= 4 && ((1 << v65) & 0x16) != 0)
            {
              v66 = v64;

              v63 = v66;
              a1 = v134;
            }
          }

          else
          {
            a1 = v134;
            v11 = v130;
          }

          [v25 setObject:v63 forKeyedSubscript:*MEMORY[0x1E69BAA28]];
          v67 = [v61 secureElementPass];
          v68 = v67;
          if (v67)
          {
            v128 = v23;
            [v67 devicePaymentApplications];
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v69 = v147 = 0u;
            v70 = [v69 countByEnumeratingWithState:&v144 objects:&v139 count:16];
            if (v70)
            {
              v71 = v70;
              v72 = 0;
              v73 = *v145;
LABEL_91:
              v74 = 0;
              while (1)
              {
                if (*v145 != v73)
                {
                  objc_enumerationMutation(v69);
                }

                v75 = *(*(&v144 + 1) + 8 * v74);
                if (v72)
                {
                  if (v72 != [*(*(&v144 + 1) + 8 * v74) paymentType])
                  {
                    break;
                  }
                }

                v72 = [v75 paymentType];
                if (v71 == ++v74)
                {
                  v71 = [v69 countByEnumeratingWithState:&v144 objects:&v139 count:16];
                  v11 = v130;
                  if (!v71)
                  {
                    goto LABEL_98;
                  }

                  goto LABEL_91;
                }
              }

              v76 = @"multiple";
              v77 = @"multiple";

              v11 = v130;
            }

            else
            {
LABEL_98:

              v76 = PKPaymentMethodTypeToString();
            }

            [v25 setObject:v76 forKeyedSubscript:*MEMORY[0x1E69BAD40]];
            v78 = [v68 issuerCountryCode];
            [v25 setObject:v78 forKeyedSubscript:*MEMORY[0x1E69BAC78]];

            a1 = v134;
            v23 = v128;
          }

          a4 = v129;
          goto LABEL_101;
        }

        if (![v47 isAccessPass])
        {
          goto LABEL_45;
        }

        v50 = [v47 accessType];
        v51 = [v47 accessReportingType];
        v52 = v51;
        if (v50 <= 2)
        {
          switch(v50)
          {
            case 0:
              v55 = @"general";
              if (v51)
              {
                v55 = v51;
              }

              goto LABEL_76;
            case 1:
              v53 = @"hospitality";
              goto LABEL_80;
            case 2:
              v53 = @"corporate";
LABEL_80:
              v56 = v53;
              goto LABEL_81;
          }
        }

        else
        {
          if (v50 <= 4)
          {
            if (v50 == 3)
            {
              v53 = @"singlefamily";
            }

            else
            {
              v53 = @"cars";
            }

            goto LABEL_80;
          }

          if (v50 == 5)
          {
            v53 = @"multifamily";
            goto LABEL_80;
          }

          if (v50 == 6)
          {
            v53 = @"urbanmobility";
            goto LABEL_80;
          }
        }

        v55 = *v29;
LABEL_76:
        v53 = v55;
LABEL_81:

        goto LABEL_82;
      }
    }

    else
    {
      if (v34 <= 2)
      {
        if (!v34)
        {
          v38 = @"coupon";
          goto LABEL_15;
        }

        if (v34 == 1)
        {
          v38 = @"giftCard";
          goto LABEL_15;
        }

        if (v34 != 2)
        {
          goto LABEL_71;
        }

LABEL_61:
        v38 = @"eventTicket";
        goto LABEL_15;
      }

      if (v34 == 3)
      {
        v38 = @"sportingEventTicketDeprecated";
        goto LABEL_15;
      }

      if (v34 != 4)
      {
        v38 = @"generic";
        goto LABEL_15;
      }
    }

    v38 = @"boardingPass";
    goto LABEL_15;
  }

LABEL_101:

  if ([0 count])
  {
    v139 = MEMORY[0x1E69E9820];
    v140 = 3221225472;
    v141 = __PKAnalyticsReportExpressEnablementEvent_block_invoke;
    v142 = &unk_1E80106A8;
    v143 = v25;
    v79 = v25;
    [0 enumerateKeysAndObjectsUsingBlock:&v139];
  }

  [MEMORY[0x1E69B8540] beginSubjectReporting:v18];
  [MEMORY[0x1E69B8540] subject:v18 sendEvent:v25];
  [MEMORY[0x1E69B8540] endSubjectReporting:v18];

  v11, v80, v81, v82, v83, v84, v85, v86;
  if (!a1)
  {
LABEL_129:
    v125 = 0;
    v126 = 0;
    v98 = 0;
LABEL_130:
    v133(v126, v125);

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD0E5E8C(0, &qword_1EBD55800, 0x1E69B8848);
    sub_1BD84CD60();
    sub_1BE052A74();
    a1 = v139;
    v90 = v140;
    v91 = v141;
    v92 = v142;
    v93 = v143;
  }

  else
  {
    v94 = -1 << *(a1 + 32);
    v90 = (a1 + 56);
    v91 = ~v94;
    v95 = -v94;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v93 = (v96 & *(a1 + 56));
    sub_1BE048C84();
    v92 = 0;
  }

  v131 = v91;
  v97 = (v91 + 64) >> 6;
  v137 = v92;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_114;
  }

LABEL_111:
  if (!sub_1BE053744())
  {
LABEL_128:
    sub_1BD0D45FC(a1, v90, v131, v92, v93, v87, v88, v89);
    goto LABEL_129;
  }

  sub_1BD0E5E8C(0, &qword_1EBD55800, 0x1E69B8848);
  swift_dynamicCast();
  v98 = v144;
  v135 = v93;
  if (!v144)
  {
LABEL_132:
    v93 = v135;
LABEL_127:
    v92 = v137;
    goto LABEL_128;
  }

  while (1)
  {
    v101 = a1;
    v102 = a4;
    v103 = [v98 passUniqueIdentifier];
    v104 = sub_1BE052434();
    v106 = v105;

    if (v104 == a3 && v106 == v102)
    {
      v106, v107, a3, v108, v109, v110, v111, v112;
LABEL_134:
      sub_1BD0D45FC(v101, v90, v131, v137, v135, v122, v123, v124);
      v127 = [v98 isNFCExpressEnabled];
      v125 = [v98 isUWBExpressEnabled];
      v126 = v127;
      goto LABEL_130;
    }

    a4 = v102;
    v114 = sub_1BE053B84();
    v106, v115, v116, v117, v118, v119, v120, v121;
    if (v114)
    {
      goto LABEL_134;
    }

    a1 = v101;
    v137 = v92;
    if (v101 < 0)
    {
      goto LABEL_111;
    }

LABEL_114:
    v99 = v92;
    v100 = v93;
    if (!v93)
    {
      break;
    }

LABEL_118:
    v135 = v93;
    v93 = ((v100 - 1) & v100);
    v98 = *(*(a1 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v100)))));
    if (!v98)
    {
      goto LABEL_132;
    }
  }

  while (1)
  {
    v92 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v92 >= v97)
    {
      v93 = 0;
      goto LABEL_127;
    }

    v100 = *&v90[8 * v92];
    ++v99;
    if (v100)
    {
      goto LABEL_118;
    }
  }

  __break(1u);
}

id sub_1BD84BDF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  if (PKRunningInViewService())
  {
    v8 = 0;
  }

  else
  {
    v8 = PKRunningInLockScreenPlugin() ^ 1;
  }

  v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_showsToggles] = v8;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessSwitch] = 0;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessSwitch] = 0;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_nfcExpressAccessText] = 0;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_uwbExpressAccessText] = 0;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport] = 2;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled] = 2;
  v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled] = 2;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_authenticationContext] = 0;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressChangedNotificationToken] = -1;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass] = a1;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle] = a2;
  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController] = a3;
  v9 = a1;
  v10 = a3;
  v11 = [v9 areCredentialsStoredInKML];
  v12 = 0;
  v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isCredentialedPass] = v11;
  if (v11)
  {
    v12 = [v9 supportedRadioTechnologies];
  }

  *&v4[OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology] = v12;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for ExpressTogglesPaymentPassDetailSectionController();
  return objc_msgSendSuper2(&v14, sel_init);
}

id sub_1BD84BFB0(void *a1)
{
  result = [a1 secureElementPass];
  if (result)
  {
    v3 = result;
    if ([result isAccessPass])
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 areCredentialsStoredInKML];
    }

    if ([a1 activationState])
    {
      v5 = [v3 isShellPass];

      return (v5 & v4);
    }

    else
    {
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD84C068(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = *(v4 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressPassController);
  v11 = *(v4 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v11;
  }

  sub_1BE048964();
  v14 = [v10 isExpressModeSupportedForPass_];

  if (!v14)
  {
    sub_1BD84969C(0, 0, v9);
LABEL_36:

    return;
  }

  v98 = a4;
  v15 = [v10 existingExpressPassConfigurationForPass_];
  v23 = v15;
  if (!v15)
  {
    v25 = 0;
    v24 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

LABEL_15:
    v27 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
    if (a2)
    {
      if (v27 != 2)
      {
        v25 = 0;
        v24 &= v27;
        goto LABEL_21;
      }

      v9, v16, v17, v18, v19, v20, v21, v22;
      __break(1u);
    }

    else if (v27 != 2)
    {
      v24 = 0;
      v25 = v25 & ((v27 & 0x100) >> 8);
      goto LABEL_21;
    }

    v9, v16, v17, v18, v19, v20, v21, v22;
    __break(1u);
    goto LABEL_42;
  }

  v24 = [v15 isNFCExpressEnabled];
  v25 = [v23 isUWBExpressEnabled];
  if ((a1 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v98 >> 60 == 15 && *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) != 2)
  {
    v75 = v24;
    v47 = v25;
LABEL_35:
    sub_1BD84969C(v75, v47, v9);

    goto LABEL_36;
  }

  if ((a2 & 1) == 0)
  {
    v24 = 1;
    goto LABEL_21;
  }

  v26 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v26 == 2)
  {
LABEL_42:
    v9, v16, v17, v18, v19, v20, v21, v22;
    __break(1u);
    return;
  }

  if ((v26 & 1) == 0)
  {
    v24 = *(v5 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology) & 1;
  }

  v25 = 1;
LABEL_21:
  v28 = [v11 uniqueID];
  if (!v28)
  {
    if (v23)
    {
      v46 = [v23 isNFCExpressEnabled];
      v47 = [v23 isUWBExpressEnabled];
    }

    else
    {
      v47 = 0;
      v46 = 0;
    }

    v75 = v46;
    goto LABEL_35;
  }

  v36 = v28;
  v95 = a1;
  v9, v29, v30, v31, v32, v33, v34, v35;
  v96 = sub_1BE052434();
  v97 = v37;

  v38 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isNFCExpressEnabled;
  swift_beginAccess();
  *(v5 + v38) = v24 & 1;
  v39 = OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_isUWBExpressEnabled;
  swift_beginAccess();
  *(v5 + v39) = v25;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  if (v40)
  {
    v41 = v11;
  }

  v42 = [v10 expressModeSupportedForPass_];

  if (!v42)
  {
    goto LABEL_31;
  }

  v43 = [objc_allocWithZone(MEMORY[0x1E69B8848]) initWithPassInformation:v42 isNFCExpressEnabled:v24 & 1 isUWBExpressEnabled:v25];
  if (!v43)
  {

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1BE0B69E0;
    *(v48 + 32) = v96;
    *(v48 + 40) = v97;
    sub_1BE048C84();
    v49 = sub_1BE052724();
    v48, v50, v51, v52, v53, v54, v55, v56;
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v96;
    v58[4] = v97;
    v58[5] = sub_1BD84CD38;
    v58[6] = v9;
    v103 = sub_1BD84CD40;
    v104 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v100 = 1107296256;
    v101 = sub_1BD84B1E0;
    v102 = &block_descriptor_92;
    v59 = _Block_copy(&aBlock);
    v60 = v104;
    sub_1BE048964();
    v60, v61, v62, v63, v64, v65, v66, v67;
    [v10 disableExpressModeForPassesWithUniqueIdentifiers:v49 withCompletion:v59];
    v9, v68, v69, v70, v71, v72, v73, v74;

    _Block_release(v59);
    return;
  }

  v44 = v43;
  if (v98 >> 60 == 15)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1BE04AAB4();
  }

  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = swift_allocObject();
  v77[2] = v76;
  v77[3] = v44;
  v77[4] = sub_1BD84CD38;
  v77[5] = v9;
  v77[6] = v96;
  v77[7] = v97;
  v103 = sub_1BD84CD50;
  v104 = v77;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_1BD84B1E0;
  v102 = &block_descriptor_99_4;
  v78 = _Block_copy(&aBlock);
  v79 = v104;
  v80 = v44;
  sub_1BE048964();
  v79, v81, v82, v83, v84, v85, v86, v87;
  [v10 setExpressModeWithPassConfiguration:v80 requiresAuth:v95 & 1 credential:v45 completion:v78];
  v9, v88, v89, v90, v91, v92, v93, v94;

  _Block_release(v78);
}

void sub_1BD84C678(void *a1)
{
  v3 = sub_1BE04B3C4();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = sub_1BE04B3F4();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_rowTypes);
  if (v4 >= *(v5 + 16))
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v5 + v4 + 32) >= 2u)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      [Strong didSelectManageExpress];
    }
  }
}

void sub_1BD84C758()
{
  v1 = *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport);
  if (v1 == 2)
  {
    __break(1u);
  }

  else if (*(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_expressSupport) & 0x100) != 0 && (v1)
  {
    v2 = sub_1BE052404();
    v3 = PKLocalizedPaymentString(v2);

    if (v3)
    {
      sub_1BE052434();
    }
  }
}

uint64_t sub_1BD84C808()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  v7 = *(v3 + 104);
  v7(v6, *MEMORY[0x1E69B80D8], v2, v4);
  v8 = *(v0 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_pass);
  if (![v8 isAccessPass])
  {
    goto LABEL_7;
  }

  v9 = [v8 accessType];
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_39;
        }

        v10 = "EY_PASSIVE_ENTRY_FOOTER";
        v11 = 0xD00000000000001BLL;
        goto LABEL_8;
      }

LABEL_10:
      v12 = 0x80000001BE13C980;
      v11 = 0xD000000000000019;
      goto LABEL_11;
    }

LABEL_7:
    v10 = "Controller.swift";
    v11 = 0xD000000000000015;
LABEL_8:
    v12 = v10 | 0x8000000000000000;
LABEL_11:
    MEMORY[0x1BFB3F610](v11, v12);
LABEL_12:
    v13 = 1;
    v14 = 1;
    goto LABEL_13;
  }

  if ((v9 - 5) < 2)
  {
    goto LABEL_10;
  }

  if (v9 != 3)
  {
    if (v9 != 4)
    {
      goto LABEL_39;
    }

    v29 = *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology);
    v13 = v29 == 1;
    if (v29 == 1)
    {
      v30 = "CAR_KEY_PASSIVE_ENTRY_FOOTER";
      v31 = 0xD00000000000001BLL;
    }

    else
    {
      if ((v29 & 2) == 0)
      {
        v13 = 1;
LABEL_37:
        (*(v3 + 8))(v6, v2);
        (v7)(v6, *MEMORY[0x1E69B8038], v2);
        v14 = 0;
        goto LABEL_13;
      }

      v30 = "EXPRESS_ACCESS_FOOTER";
      v31 = 0xD00000000000001CLL;
    }

    MEMORY[0x1BFB3F610](v31, v30 | 0x8000000000000000);
    goto LABEL_37;
  }

  if ((*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_radioTechnology) & 2) == 0 || *(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) != 2)
  {
    v32 = 0xD000000000000019;
    v33 = 0x80000001BE13C980;
    goto LABEL_12;
  }

  MEMORY[0x1BFB3F610](0xD000000000000027, 0x80000001BE13C9A0);
  (*(v3 + 8))(v6, v2);
  (v7)(v6, *MEMORY[0x1E69B8030], v2);
  v13 = 0;
  v14 = 0;
LABEL_13:
  if (*(v1 + OBJC_IVAR___PKExpressTogglesPaymentPassDetailSectionController_viewStyle) == 2)
  {
    v15 = 0x48435441575FLL;
    v16 = 0xE600000000000000;
  }

  else
  {
    if (v14 && PKNearFieldLowPowerSupportIsAvailable())
    {
      MEMORY[0x1BFB3F610](0x4D45504C5FLL, 0xE500000000000000);
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    if (PKPearlIsAvailable())
    {
      v15 = 0x4449454341465FLL;
      v16 = 0xE700000000000000;
    }

    else
    {
      v15 = 0x44494843554F545FLL;
      v16 = 0xE800000000000000;
    }
  }

  MEMORY[0x1BFB3F610](v15, v16);
LABEL_22:
  v17 = v33;
  v18 = PKPassKitBundle();
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BE04B6F4();
    v17, v21, v22, v23, v24, v25, v26, v27;

    (*(v3 + 8))(v6, v2);
    return v20;
  }

  __break(1u);
LABEL_39:
  result = sub_1BE053994();
  __break(1u);
  return result;
}

unint64_t sub_1BD84CCA4()
{
  result = qword_1EBD557E0;
  if (!qword_1EBD557E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD557E0);
  }

  return result;
}

unint64_t sub_1BD84CD60()
{
  result = qword_1EBD55808;
  if (!qword_1EBD55808)
  {
    sub_1BD0E5E8C(255, &qword_1EBD55800, 0x1E69B8848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD55808);
  }

  return result;
}

void __PKAnalyticsReportExpressEnablementEvent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = a3;
  [v4 setObject:v6 forKeyedSubscript:v5];
}

void sub_1BD84CE98(unsigned __int8 a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v12 = 0xE900000000000064;
  v13 = 0x647261436E6FLL;
  v14 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  if (v8[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] > 1u)
  {
    if (v8[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] == 2)
    {
      v16 = 0x656572635366666FLL;
      v15 = 0xE90000000000006ELL;
      goto LABEL_9;
    }

    v17 = 0x43776F6C6562;
  }

  else
  {
    if (!v8[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state])
    {
      v15 = 0xE600000000000000;
      v16 = 0x647261436E6FLL;
      goto LABEL_9;
    }

    v17 = 0x4365766F6261;
  }

  v16 = v17 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
  v15 = 0xE900000000000064;
LABEL_9:
  v18 = 0x656572635366666FLL;
  v19 = 0xE90000000000006ELL;
  if (a1 != 2)
  {
    v18 = 0x726143776F6C6562;
    v19 = 0xE900000000000064;
  }

  if (a1)
  {
    v13 = 0x72614365766F6261;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v20 = v13;
  }

  else
  {
    v20 = v18;
  }

  if (a1 <= 1u)
  {
    v21 = v12;
  }

  else
  {
    v21 = v19;
  }

  if (v16 == v20 && v15 == v21)
  {
    v15, a2, v20, a4, a5, a6, a7, a8;
    v21, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_24;
  }

  v29 = a2;
  v30 = sub_1BE053B84();
  v15, v31, v32, v33, v34, v35, v36, v37;
  v21, v38, v39, v40, v41, v42, v43, v44;
  if ((v30 & 1) == 0)
  {
    [v8 layoutIfNeeded];
    v45 = *&v8[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    else
    {
      *&v8[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = v46;
      sub_1BD84DE38(v45 + 1, 1);
      if (!a3)
      {
        goto LABEL_32;
      }

      v21 = swift_allocObject();
      v21[2] = a3;
      v21[3] = a4;
      v30 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions;
      swift_beginAccess();
      a3 = *&v8[v30];
      sub_1BE048964();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v30] = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_29:
        v48 = a3[2];
        v49 = a3[3];
        v50 = v48 + 1;
        if (v48 >= v49 >> 1)
        {
          v82 = a3;
          v83 = a3[2];
          v84 = sub_1BD1D761C((v49 > 1), (v48 + 1), 1, v82);
          v48 = v83;
          a3 = v84;
        }

        a3[2] = v50;
        v51 = &a3[2 * v48];
        v51[4] = sub_1BD789540;
        v51[5] = v21;
        *&v8[v30] = a3;
        swift_endAccess();
LABEL_32:
        v8[v14] = a1;
        [v8 bounds];
        x = v89.origin.x;
        y = v89.origin.y;
        width = v89.size.width;
        height = v89.size.height;
        v56 = CGRectGetWidth(v89);
        v90.origin.x = x;
        v90.origin.y = y;
        v90.size.width = width;
        v90.size.height = height;
        v57 = CGRectGetWidth(v90);
        v58 = xmmword_1BE0FD0F0;
        v59 = xmmword_1BE0FD100;
        if (a1 > 1u)
        {
          v61 = v57;
          if (a1 != 2)
          {
            goto LABEL_39;
          }

          v91.origin.x = x;
          v91.origin.y = y;
          v91.size.width = width;
          v91.size.height = height;
          v61 = CGRectGetHeight(v91) * 1.2;
          v58 = xmmword_1BE0FD110;
        }

        else
        {
          v60 = v56 * 0.5;
          if (!a1)
          {
            v61 = v60 * 0.87;
            v58 = xmmword_1BE0FD110;
LABEL_39:
            v85 = v58;
            v86 = v59;
            v62 = swift_allocObject();
            *(v62 + 16) = v29 & 1;
            *(v62 + 24) = v8;
            *(v62 + 32) = v61;
            *(v62 + 40) = x;
            *(v62 + 48) = y;
            *(v62 + 56) = width;
            *(v62 + 64) = height;
            *(v62 + 88) = v85;
            *(v62 + 72) = v86;
            *(v62 + 104) = v46;
            v63 = swift_allocObject();
            *(v63 + 16) = sub_1BD84FA98;
            *(v63 + 24) = v62;
            aBlock[4] = sub_1BD640D80;
            v88 = v63;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1BD5B974C;
            aBlock[3] = &block_descriptor_36_4;
            v64 = _Block_copy(aBlock);
            v65 = v88;
            v66 = v8;
            v65, v67, v68, v69, v70, v71, v72, v73;
            v74 = v64;
            PKCATrackedLayoutPerform();

            _Block_release(v74);
            v62, v75, v76, v77, v78, v79, v80, v81;
            return;
          }

          v61 = v60 * 1.42;
        }

        v59 = xmmword_1BE0CF260;
        goto LABEL_39;
      }
    }

    a3 = sub_1BD1D761C(0, (a3[2] + 1), 1, a3);
    *&v8[v30] = a3;
    goto LABEL_29;
  }

LABEL_24:
  if (a3)
  {
    (a3)(0);
  }
}

void sub_1BD84D338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v6(a2, a3);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

uint64_t sub_1BD84D3A4()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xE600000000000000;
  v3 = 0xE90000000000006ELL;
  if (v1 != 2)
  {
    v3 = 0xE900000000000064;
  }

  if (v1)
  {
    v2 = 0xE900000000000064;
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

void sub_1BD84D470(uint64_t a1)
{
  v2 = 0xE600000000000000;
  v3 = 0xE90000000000006ELL;
  if (*v1 != 2)
  {
    v3 = 0xE900000000000064;
  }

  if (*v1)
  {
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_1BE052524();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD84D528(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xE600000000000000;
  v4 = 0xE90000000000006ELL;
  if (v2 != 2)
  {
    v4 = 0xE900000000000064;
  }

  if (v2)
  {
    v3 = 0xE900000000000064;
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

unint64_t sub_1BD84D5F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD84F9A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD84D620(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x647261436E6FLL;
  v4 = 0xE90000000000006ELL;
  v5 = 0x656572635366666FLL;
  if (*v1 != 2)
  {
    v5 = 0x726143776F6C6562;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x72614365766F6261;
    v2 = 0xE900000000000064;
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

char *sub_1BD84D6A8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] = 3;
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = 0;
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions] = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for ProvisioningCardReaderPhoneAnimationView.CombinedPhoneView()) init];
  v1[v4] = a1;
  v6 = [objc_allocWithZone(MEMORY[0x1E69BC7A0]) initWithMass:1.0 stiffness:80.0 damping:18.0];
  *&v1[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_springFactory] = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v8 = v6;
  LODWORD(v9) = 1050253722;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v8 setTiming_];

  v13 = [*&v1[v5] layer];
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 CGColor];

  [v13 setShadowColor_];
  v56.receiver = v1;
  v56.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView];
  v18 = v16;
  [v18 addSubview_];
  result = [v18 layoutIfNeeded];
  v20 = *&v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
  v21 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    *&v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex] = v21;
    sub_1BD84DE38(v20 + 1, 1);
    v18[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state] = a1;
    [v18 bounds];
    x = v57.origin.x;
    y = v57.origin.y;
    width = v57.size.width;
    height = v57.size.height;
    v26 = CGRectGetWidth(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v27 = CGRectGetWidth(v58);
    v28 = xmmword_1BE0FD0F0;
    v29 = xmmword_1BE0FD100;
    if (a1 > 1u)
    {
      v31 = v27;
      if (a1 != 2)
      {
        goto LABEL_9;
      }

      v59.origin.x = x;
      v59.origin.y = y;
      v59.size.width = width;
      v59.size.height = height;
      v31 = CGRectGetHeight(v59) * 1.2;
      v28 = xmmword_1BE0FD110;
    }

    else
    {
      v30 = v26 * 0.5;
      if (!a1)
      {
        v31 = v30 * 0.87;
        v28 = xmmword_1BE0FD110;
LABEL_9:
        v52 = v28;
        v53 = v29;
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = v18;
        *(v32 + 32) = v31;
        *(v32 + 40) = x;
        *(v32 + 48) = y;
        *(v32 + 56) = width;
        *(v32 + 64) = height;
        *(v32 + 88) = v52;
        *(v32 + 72) = v53;
        *(v32 + 104) = v21;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1BD84FA98;
        *(v33 + 24) = v32;
        aBlock[4] = sub_1BD640D80;
        v55 = v33;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD5B974C;
        aBlock[3] = &block_descriptor_50_3;
        v34 = _Block_copy(aBlock);
        v35 = v55;
        v36 = v18;
        v35, v37, v38, v39, v40, v41, v42, v43;
        v44 = v34;
        PKCATrackedLayoutPerform();

        _Block_release(v44);
        v32, v45, v46, v47, v48, v49, v50, v51;
        return v36;
      }

      v31 = v30 * 1.42;
    }

    v29 = xmmword_1BE0CF260;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1BD84DB94()
{
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state;
  v2 = v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_state];
  v3 = *&v0[OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex];
  [v0 layoutIfNeeded];
  v0[v1] = v2;
  [v0 bounds];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v8 = CGRectGetWidth(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v9 = CGRectGetWidth(v40);
  v10 = xmmword_1BE0FD0F0;
  v11 = xmmword_1BE0FD100;
  if (v2 > 1)
  {
    v13 = v9;
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v13 = CGRectGetHeight(v41) * 1.2;
    v10 = xmmword_1BE0FD110;
LABEL_7:
    v11 = xmmword_1BE0CF260;
    goto LABEL_8;
  }

  v12 = v8 * 0.5;
  if (v2)
  {
    v13 = v12 * 1.42;
    goto LABEL_7;
  }

  v13 = v12 * 0.87;
  v10 = xmmword_1BE0FD110;
LABEL_8:
  v34 = v10;
  v35 = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v0;
  *(v14 + 32) = v13;
  *(v14 + 40) = x;
  *(v14 + 48) = y;
  *(v14 + 56) = width;
  *(v14 + 64) = height;
  *(v14 + 88) = v34;
  *(v14 + 72) = v35;
  *(v14 + 104) = v3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BD84FA3C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1BD1839E8;
  v37 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD5B974C;
  aBlock[3] = &block_descriptor_191;
  v16 = _Block_copy(aBlock);
  v17 = v37;
  v18 = v0;
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26 = v16;
  PKCATrackedLayoutPerform();

  _Block_release(v26);
  v14, v27, v28, v29, v30, v31, v32, v33;
}

void sub_1BD84DE38(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionIndex);
  v6 = OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_transitionCompletions;
  swift_beginAccess();
  v14 = *(v2 + v6);
  *(v2 + v6) = MEMORY[0x1E69E7CC0];
  v15 = v14[2];
  if (v15)
  {
    v16 = (v5 == a1) | a2 & 1;
    v17 = v14 + 5;
    do
    {
      v19 = *(v17 - 1);
      v18 = *v17;
      v27 = v16;
      sub_1BE048964();
      v19(&v27);
      v18, v20, v21, v22, v23, v24, v25, v26;
      v17 += 2;
      --v15;
    }

    while (v15);
  }

  v14, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD84DF00(char a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11, double a12)
{
  angle = a10;
  v59[1] = *MEMORY[0x1E69E9840];
  Tracker = PKCATrackedLayoutGetTracker();
  if (a1)
  {
    v22 = *(a2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_springFactory);
  }

  else
  {
    v22 = 0;
  }

  v59[0] = 0;
  v60.origin.x = a5;
  v60.origin.y = a6;
  v60.size.width = a7;
  v60.size.height = a8;
  v23.n128_f64[0] = CGRectGetWidth(v60) + -100.0;
  PKFloatRoundToPixel(v23, v24);
  v26 = v25;
  v61.origin.x = a5;
  v61.origin.y = a6;
  v61.size.width = a7;
  v61.size.height = a8;
  Width = CGRectGetWidth(v61);
  v28.n128_u64[0] = 0x4000A113C68661AELL;
  v29.n128_f64[0] = (Width + -100.0) * 2.078651;
  PKFloatRoundToPixel(v29, v28);
  v31 = v30;
  v62.origin.x = a5;
  v62.origin.y = a6;
  v62.size.width = a7;
  v62.size.height = a8;
  v32 = CGRectGetWidth(v62);
  v63.origin.x = 0.0;
  v63.origin.y = a4;
  v63.size.width = v26;
  v63.size.height = v31;
  v33 = CGRectGetWidth(v63);
  v34.n128_u64[0] = 0.5;
  v35.n128_f64[0] = (v32 - v33) * 0.5;
  PKFloatRoundToPixel(v35, v34);
  v36 = *(a2 + OBJC_IVAR____TtC9PassKitUI40ProvisioningCardReaderPhoneAnimationView_phoneView);
  [v36 pkui:v22 setFrame:v59 withAdditiveAnimationFactory:? animation:?];
  if (v59[0])
  {
    v37 = v59[0];
    [Tracker trackAnimation_];
    v38 = [v36 layer];
  }

  CATransform3DMakeScale(&v58, a9, a9, 1.0);
  CATransform3DMakeRotation(&b, angle, 1.0, 0.0, 0.0);
  a = v58;
  CATransform3DConcat(&v55, &a, &b);
  [v36 pkui:&v55 setTransform:v22 withAdditiveAnimationFactory:v59 animation:?];
  if (v59[0])
  {
    v39 = v59[0];
    [Tracker trackAnimation_];
    v40 = [v36 layer];
  }

  [v36 pkui:v22 setShadowRadius:v59 withAdditiveAnimationFactory:a11 animation:*&angle];
  if (v59[0])
  {
    v41 = v59[0];
    [Tracker trackAnimation_];
    v42 = [v36 layer];
  }

  [v36 pkui:v22 setShadowOpacity:0 withAnimationFactory:a12 completion:?];
  if (Tracker)
  {
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = a3;
    *&a.m21 = sub_1BD84FA40;
    *&a.m22 = v44;
    *&a.m11 = MEMORY[0x1E69E9820];
    *&a.m12 = 1107296256;
    *&a.m13 = sub_1BD84D338;
    *&a.m14 = &block_descriptor_25_2;
    v45 = _Block_copy(&a);
    *&a.m22, v46, v47, v48, v49, v50, v51, v52;
    [Tracker addAbsoluteCompletion_];

    _Block_release(v45);
  }

  else
  {
    sub_1BD84DE38(a3, 0);
    Tracker = v22;
  }
}

void sub_1BD84E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD84DE38(a4, 0);
  }
}

char *sub_1BD84E4A0()
{
  v0 = 0xD000000000000012;
  ObjectType = swift_getObjectType();
  v158 = MEMORY[0x1E69E7CC0];
  v1 = 0x1E69DC000uLL;
  v2 = &selRef_hoursOfDay;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v4 = &selRef_setBankName_;
  [v3 setContentMode_];
  v5 = sub_1BE052404();
  v6 = PKUIImageNamed(v5);

  v7 = &selRef_setFPInfo_;
  [v3 setImage_];

  MEMORY[0x1BFB3F7A0]();
  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v146 = v3;
    sub_1BE0527C4();
    v8 = type metadata accessor for ProvisioningCardReaderPhoneAnimationView.PhoneGradientView();
    v9 = objc_allocWithZone(v8);
    v10 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    *&v9[v10] = [objc_allocWithZone(*(v1 + 2784)) v2[147]];
    v11 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v11 = 0;
    *(v11 + 1) = 0;
    v12 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v12 = v0;
    v12[1] = 0x80000001BE13CDA0;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4072700000000000;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FE0000000000000;
    v13 = &v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset];
    *v13 = 0;
    *(v13 + 1) = 0;
    *&v9[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1065353216;
    v157.receiver = v9;
    v157.super_class = v8;
    v152 = v8;
    v14 = objc_msgSendSuper2(&v157, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v15 = v2;
    v16 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v17 = *&v14[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v18 = v14;
    v19 = v17;
    v20 = sub_1BE052404();
    v21 = PKUIImageNamed(v20);

    [v19 v7[223]];
    [*&v14[v16] v4[216]];
    v22 = *&v14[v16];
    v23 = v18;
    [v23 addSubview_];
    v24 = [objc_allocWithZone(MEMORY[0x1E6979380]) v15 + 2936];
    v151 = *MEMORY[0x1E6979DB0];
    [v24 setType_];
    [v24 setStartPoint_];
    [v24 setEndPoint_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BE0B6CA0;
    v26 = objc_opt_self();
    v27 = [v26 whiteColor];
    v28 = [v27 colorWithAlphaComponent_];

    v29 = [v28 CGColor];
    type metadata accessor for CGColor(0);
    v31 = v30;
    *(v25 + 56) = v30;
    *(v25 + 32) = v29;
    v32 = [v26 blackColor];
    v33 = [v32 colorWithAlphaComponent_];

    v34 = [v33 CGColor];
    *(v25 + 88) = v31;
    *(v25 + 64) = v34;
    v35 = sub_1BE052724();
    v25, v36, v37, v38, v39, v40, v41, v42;
    [v24 setColors_];

    LODWORD(v43) = 1.0;
    [v24 setOpacity_];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v45 = [v44 layer];
    [v45 addSublayer_];

    v46 = v44;
    [v23 setMaskView_];

    MEMORY[0x1BFB3F7A0]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v145 = v23;
    sub_1BE0527C4();
    v47 = *MEMORY[0x1E6979C30];
    v48 = objc_allocWithZone(v152);
    v49 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v50 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v51 = v47;
    *&v48[v49] = [v50 init];
    v52 = &v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v52 = 0;
    *(v52 + 1) = 0;
    v53 = &v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v53 = 0xD000000000000012;
    *(v53 + 1) = 0x80000001BE13CDA0;
    *&v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4055400000000000;
    *&v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FD999999999999ALL;
    v54 = &v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset];
    *v54 = 0;
    *(v54 + 1) = 0;
    *&v48[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1065353216;
    v156.receiver = v48;
    v156.super_class = v152;
    v55 = objc_msgSendSuper2(&v156, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v56 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v57 = *&v55[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v58 = v55;
    v59 = v57;
    v60 = sub_1BE052404();
    v61 = PKUIImageNamed(v60);

    [v59 setImage_];
    [*&v55[v56] setContentMode_];
    v62 = *&v55[v56];
    v63 = v58;
    [v63 addSubview_];
    v64 = [objc_allocWithZone(MEMORY[0x1E6979380]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    [v64 setType_];
    [v64 setStartPoint_];
    [v64 setEndPoint_];
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1BE0B6CA0;
    v66 = [v26 whiteColor];
    v67 = [v66 colorWithAlphaComponent_];

    v68 = [v67 CGColor];
    *(v65 + 56) = v31;
    *(v65 + 32) = v68;
    v69 = [v26 blackColor];
    v70 = [v69 colorWithAlphaComponent_];

    v71 = [v70 CGColor];
    *(v65 + 88) = v31;
    *(v65 + 64) = v71;
    v72 = sub_1BE052724();
    v65, v73, v74, v75, v76, v77, v78, v79;
    [v64 setColors_];

    LODWORD(v80) = 1.0;
    [v64 setOpacity_];
    v81 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v82 = [v81 layer];
    [v82 addSublayer_];

    v83 = v81;
    [v63 setMaskView_];

    v84 = [v63 layer];
    v85 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];

    [v84 setCompositingFilter_];
    MEMORY[0x1BFB3F7A0]();
    v148 = v31;
    v4 = v26;
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    v144 = v63;
    sub_1BE0527C4();
    v86 = *MEMORY[0x1E6979D18];
    v87 = objc_allocWithZone(v152);
    v88 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v89 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v147 = v86;
    *&v87[v88] = [v89 init];
    v90 = &v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_rotation];
    *v90 = 0;
    *(v90 + 1) = 0;
    v91 = &v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageName];
    *v91 = 0xD000000000000013;
    *(v91 + 1) = 0x80000001BE13CDC0;
    *&v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] = 0x4071300000000000;
    *&v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientStrength] = 0x3FE0000000000000;
    *&v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOffset] = xmmword_1BE0FD120;
    *&v87[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_gradientOpacity] = 1036831949;
    v155.receiver = v87;
    v155.super_class = v152;
    v92 = objc_msgSendSuper2(&v155, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v93 = OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView;
    v94 = *&v92[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
    v95 = v92;
    v96 = v94;
    v97 = sub_1BE052404();
    v98 = PKUIImageNamed(v97);

    [v96 setImage_];
    [*&v92[v93] setContentMode_];
    v99 = *&v92[v93];
    v100 = v95;
    [v100 addSubview_];
    v101 = [objc_allocWithZone(MEMORY[0x1E6979380]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    [v101 setType_];
    [v101 setStartPoint_];
    [v101 setEndPoint_];
    v102 = swift_allocObject();
    *(v102 + 16) = xmmword_1BE0B6CA0;
    v103 = [(SEL *)v4 whiteColor];
    v104 = [v103 colorWithAlphaComponent_];

    v105 = [v104 CGColor];
    *(v102 + 56) = v148;
    *(v102 + 32) = v105;
    v106 = [(SEL *)v4 blackColor];
    v107 = [v106 colorWithAlphaComponent_];

    v108 = [v107 CGColor];
    *(v102 + 88) = v148;
    *(v102 + 64) = v108;
    v109 = sub_1BE052724();
    v102, v110, v111, v112, v113, v114, v115, v116;
    [v101 setColors_];

    LODWORD(v117) = 1036831949;
    [v101 setOpacity_];
    v118 = [objc_allocWithZone(MEMORY[0x1E69DD250]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
    v119 = [v118 layer];
    [v119 addSublayer_];

    v120 = v118;
    [v100 setMaskView_];

    v121 = [v100 layer];
    v122 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];

    [v121 setCompositingFilter_];
    MEMORY[0x1BFB3F7A0]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    v123 = v158;
    *&v150[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews] = v158;
    v154.receiver = v150;
    v154.super_class = ObjectType;
    sub_1BE048C84();
    v124 = objc_msgSendSuper2(&v154, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v125 = *&v124[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews];
    v153 = v100;
    if (v125 >> 62)
    {
      v143 = v124;
      v2 = sub_1BE053704();
      v124 = v143;
    }

    else
    {
      v2 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v124;
    sub_1BE048C84();
    if (!v2)
    {
      break;
    }

    v1 = 0;
    v0 = v125 & 0xC000000000000001;
    v7 = (v125 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v0)
      {
        v133 = MEMORY[0x1BFB40900](v1, v125);
      }

      else
      {
        if (v1 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v133 = *(v125 + 8 * v1 + 32);
      }

      v4 = v133;
      v134 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      [v3 addSubview_];

      ++v1;
      if (v134 == v2)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_1BE052774();
  }

LABEL_19:
  v123, v126, v127, v128, v129, v130, v131, v132;
  v125, v135, v136, v137, v138, v139, v140, v141;

  return v3;
}

void sub_1BD84F3BC()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317CombinedPhoneView_overlayPhoneViews];
  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
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
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      [v0 bounds];
      [v5 setFrame_];
    }

    while (v2 != v3);
  }
}

void sub_1BD84F5FC()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = [v0 maskView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size] + *&v0[OBJC_IVAR____TtCC9PassKitUI40ProvisioningCardReaderPhoneAnimationViewP33_DDC4DF0481FDEE89C97A7750BC5123E317PhoneGradientView_size];
    [v0 bounds];
    v5 = (CGRectGetWidth(v21) - v4) * 0.5;
    [v0 bounds];
    [v3 setFrame_];
    v6 = [v3 layer];
    v7 = [v6 sublayers];

    if (v7)
    {
      sub_1BD84F9F0();
      v8 = sub_1BE052744();

      if (!(v8 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_5:
          if (v9 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v9; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1BFB40900](i, v8);
            }

            else
            {
              v11 = *(v8 + 8 * i + 32);
            }

            v12 = v11;
            [v11 setFrame_];
          }
        }

LABEL_13:

        v8, v13, v14, v15, v16, v17, v18, v19;
        return;
      }
    }

    v9 = sub_1BE053704();
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }
}

unint64_t sub_1BD84F950()
{
  result = qword_1EBD558D8;
  if (!qword_1EBD558D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD558D8);
  }

  return result;
}

unint64_t sub_1BD84F9A4(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1BD84F9F0()
{
  result = qword_1EBD558E0;
  if (!qword_1EBD558E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD558E0);
  }

  return result;
}

char *PeerPaymentMessagesRecipientPickerViewController.__allocating_init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD850AF4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v12;
}

char *PeerPaymentMessagesRecipientPickerViewController.init(validRecipients:invalidRecipients:amount:peerPaymentController:contentDelegate:)(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = sub_1BD850AF4(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v7;
}

void sub_1BD84FC9C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = *&v0[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview_];

        [v2 didMoveToParentViewController_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BD84FDB8()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD84FF70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v102.receiver = v2;
  v102.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v102, sel_viewDidAppear_, v4 & 1);
  v5 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model;
  v6 = *&v2[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model];
  KeyPath = swift_getKeyPath();
  v101[0] = v6;
  sub_1BD850FFC();
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6, v16, v17, v18, v19, v20, v21, v22;
  if (Strong)
  {
    v23 = [Strong analyticsMessagesContext];
    swift_unknownObjectRelease();
    v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    if (v23)
    {
      v25 = v23;
      v24, v26, v27, v28, v29, v30, v31, v32;
      v101[0] = 0;
      Strong = v25;
      sub_1BE052234();

      v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      Strong = 0;
    }
  }

  else
  {
    v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  v33 = *&v3[v5];
  v34 = swift_getKeyPath();
  v101[0] = v33;
  sub_1BE048964();
  sub_1BE04B594();
  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = swift_unknownObjectWeakLoadStrong();
  v33, v43, v44, v45, v46, v47, v48, v49;
  if (v42)
  {
    v50 = [v42 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v50)
    {
      sub_1BE052434();
      v51 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v100 = v51;
      *&v99 = 48;
      *(&v99 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v99, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAFB0(v98, v101, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v101);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98E0;
  v54 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v55 = sub_1BE052434();
  v56 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v55;
  *(inited + 48) = v57;
  v58 = *v56;
  *(inited + 56) = *v56;
  v59 = sub_1BE052434();
  v60 = MEMORY[0x1E69BA680];
  *(inited + 64) = v59;
  *(inited + 72) = v61;
  v62 = *v60;
  *(inited + 80) = *v60;
  v63 = sub_1BE052434();
  v64 = MEMORY[0x1E69BAFB0];
  *(inited + 88) = v63;
  *(inited + 96) = v65;
  v66 = *v64;
  *(inited + 104) = *v64;
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v67;
  v68 = v54;
  v69 = v58;
  v70 = v62;
  v71 = v66;
  v72 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v73 = objc_opt_self();
  v74 = sub_1BD1A8C44(v72);
  v72, v75, v76, v77, v78, v79, v80, v81;
  v82 = sub_1BE052224();
  v74, v83, v84, v85, v86, v87, v88, v89;
  v90 = sub_1BE052224();
  v24, v91, v92, v93, v94, v95, v96, v97;
  [v73 reportAppleCashEvent:v82 withMessagesContext:v90];
}

void sub_1BD8503E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v107.receiver = v2;
  v107.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  objc_msgSendSuper2(&v107, sel_viewDidDisappear_, v4 & 1);
  v5 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model;
  v6 = *&v2[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model];
  KeyPath = swift_getKeyPath();
  v106[0] = v6;
  sub_1BD850FFC();
  sub_1BE048964();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6, v16, v17, v18, v19, v20, v21, v22;
  if (Strong)
  {
    v23 = [Strong analyticsMessagesContext];
    swift_unknownObjectRelease();
    v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    if (v23)
    {
      v25 = v23;
      v24, v26, v27, v28, v29, v30, v31, v32;
      v106[0] = 0;
      Strong = v25;
      sub_1BE052234();

      v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      Strong = 0;
    }
  }

  else
  {
    v24 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  v33 = *&v3[v5];
  v34 = swift_getKeyPath();
  v106[0] = v33;
  sub_1BE048964();
  sub_1BE04B594();
  v34, v35, v36, v37, v38, v39, v40, v41;
  v42 = swift_unknownObjectWeakLoadStrong();
  v33, v43, v44, v45, v46, v47, v48, v49;
  if (v42)
  {
    v50 = [v42 ineligibleCount];
    swift_unknownObjectRelease();
    if (!v50)
    {
      sub_1BE052434();
      v51 = MEMORY[0x1E69E6158];
      sub_1BE0537C4();
      v105 = v51;
      *&v104 = 48;
      *(&v104 + 1) = 0xE100000000000000;
      sub_1BD1B6140(&v104, v103);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BD1DAFB0(v103, v106, isUniquelyReferenced_nonNull_native);
      sub_1BD149CE8(v106);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA730;
  v54 = *MEMORY[0x1E69BA850];
  *(inited + 32) = *MEMORY[0x1E69BA850];
  v55 = sub_1BE052434();
  v56 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v55;
  *(inited + 48) = v57;
  v58 = *v56;
  *(inited + 56) = *v56;
  v59 = sub_1BE052434();
  v60 = MEMORY[0x1E69BA680];
  *(inited + 64) = v59;
  *(inited + 72) = v61;
  v62 = *v60;
  *(inited + 80) = *v60;
  v63 = sub_1BE052434();
  v64 = MEMORY[0x1E69BAFB0];
  *(inited + 88) = v63;
  *(inited + 96) = v65;
  v66 = *v64;
  *(inited + 104) = *v64;
  v67 = sub_1BE052434();
  v68 = MEMORY[0x1E69BAF60];
  *(inited + 112) = v67;
  *(inited + 120) = v69;
  v70 = *v68;
  *(inited + 128) = *v68;
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v71;
  v72 = v54;
  v73 = v58;
  v74 = v62;
  v75 = v66;
  v76 = v70;
  v77 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  v78 = objc_opt_self();
  v79 = sub_1BD1A8C44(v77);
  v77, v80, v81, v82, v83, v84, v85, v86;
  v87 = sub_1BE052224();
  v79, v88, v89, v90, v91, v92, v93, v94;
  v95 = sub_1BE052224();
  v24, v96, v97, v98, v99, v100, v101, v102;
  [v78 reportAppleCashEvent:v87 withMessagesContext:v95];
}

id PeerPaymentMessagesRecipientPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1BE052404();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v15 = [objc_allocWithZone(v4) initWithNibName:v7 bundle:a3];

  return v15;
}

id PeerPaymentMessagesRecipientPickerViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD8509DC@<X0>(uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1BD850FFC();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1BD850A58(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD850FFC();
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

char *sub_1BD850AF4(unint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v67 = a5;
  v69 = type metadata accessor for PeerPaymentGroupRecipientPickerView(0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = (&v64 - v12);
  v68 = v5;
  *&v5[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC] = 0;
  type metadata accessor for PeerPaymentGroupRecipientPickerModel(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 64) = 0;
  v66 = a3;
  v65 = a4;
  sub_1BE04B5C4();
  if (a1 >> 62)
  {
    v14 = sub_1BE053704();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v73 = MEMORY[0x1E69E7CC0];
    result = sub_1BE0538E4();
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    v17 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFB40900](v17, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      type metadata accessor for PeerPaymentGroupRecipient(0);
      swift_allocObject();
      sub_1BD92081C(v19);

      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v14 != v17);
    v15 = v73;
  }

  *(v13 + 16) = v15;
  if (a2 >> 62)
  {
    v20 = sub_1BE053704();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
    goto LABEL_21;
  }

  v73 = MEMORY[0x1E69E7CC0];
  result = sub_1BE0538E4();
  if (v20 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](v22, a2);
    }

    else
    {
      v23 = *(a2 + 8 * v22 + 32);
    }

    v24 = v23;
    ++v22;
    type metadata accessor for PeerPaymentGroupRecipient(0);
    swift_allocObject();
    sub_1BD92081C(v24);

    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
  }

  while (v20 != v22);
  v21 = v73;
LABEL_21:
  v25 = v65;
  v26 = v66;
  *(v13 + 24) = v21;
  *(v13 + 32) = v26;
  *(v13 + 48) = v25;
  KeyPath = swift_getKeyPath();
  v64 = &v64;
  MEMORY[0x1EEE9AC00](KeyPath);
  v28 = v67;
  *(&v64 - 2) = v13;
  *(&v64 - 1) = v28;
  v73 = v13;
  sub_1BD850FFC();
  v29 = v26;
  v30 = v25;
  sub_1BE04B584();
  KeyPath, v31, v32, v33, v34, v35, v36, v37;

  v38 = v68;
  *&v68[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_model] = v13;
  v39 = type metadata accessor for PeerPaymentMessagesRecipientPickerViewController();
  v72.receiver = v38;
  v72.super_class = v39;
  sub_1BE048964();
  v40 = objc_msgSendSuper2(&v72, sel_initWithNibName_bundle_, 0, 0);
  v41 = *(v69 + 20);
  v42 = swift_getKeyPath();
  v43 = v71;
  *(v71 + v41) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  *v43 = v13;
  sub_1BD71B060(v43, v70);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD55980, qword_1BE0FD300));
  v44 = v40;
  v45 = sub_1BE04F894();
  v46 = OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC;
  v47 = *&v44[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC];
  *&v44[OBJC_IVAR____PKPeerPaymentMessagesRecipientPickerViewController_hostingVC] = v45;

  result = *&v44[v46];
  if (result)
  {
    result = [result setOverrideUserInterfaceStyle_];
    v48 = *&v44[v46];
    if (v48)
    {
      v49 = v48;
      a1, v50, v51, v52, v53, v54, v55, v56;
      a2, v57, v58, v59, v60, v61, v62, v63;
      [v44 addChildViewController_];

      sub_1BD851150(v43);
      return v44;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}