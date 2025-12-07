uint64_t sub_1E19D2590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GuidedSearchToken(uint64_t a1)
{
  result = qword_1EE1DEB38;
  if (!qword_1EE1DEB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19D262C(uint64_t a1)
{
  sub_1E134EAF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ObjectGraphPair.init(value:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ObjectGraphPair(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t ObjectGraphPairable.pairedWith<A>(objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  *(a4 + *(type metadata accessor for ObjectGraphPair(0, a2, a3, v13) + 36)) = a1;
}

uint64_t sub_1E19D2934(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E19D29C0(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_1E19D2AFC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

int8x8_t TextConfiguration.init(metrics:text:subtitleText:subtitlePosition:theme:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, _OWORD *a7@<X6>, void *a8@<X8>)
{
  v16 = *a6 | (*(a6 + 2) << 32);
  *a8 = 0x4018000000000000;
  v17 = type metadata accessor for TextConfiguration(0);
  sub_1E19D8C90(a1, a8 + v17[5], type metadata accessor for OfferButtonMetrics);
  v18 = (a8 + v17[6]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v17[7]) = 0;
  v19 = (a8 + v17[10]);
  v20 = a7[3];
  v19[2] = a7[2];
  v19[3] = v20;
  v19[4] = a7[4];
  *(v19 + 73) = *(a7 + 73);
  v21 = a7[1];
  *v19 = *a7;
  v19[1] = v21;
  v22 = (a8 + v17[8]);
  *v22 = a4;
  v22[1] = a5;
  if (v16 == 4)
  {
    v23 = 0x1000100010001;
    LOBYTE(v16) = 1;
    LOBYTE(v24) = 1;
  }

  else
  {
    v25 = vdupq_n_s64(v16);
    v23 = vmovn_s32(vuzp1q_s32(vshlq_u64(v25, xmmword_1E1B04480), vshlq_u64(v25, xmmword_1E1B04470)));
    v24 = v16 >> 40;
  }

  v26 = a8 + v17[9];
  *v26 = v16;
  result = vuzp1_s8(v23, v23);
  *(v26 + 1) = result.i32[0];
  v26[5] = v24;
  return result;
}

double TextConfiguration.size(in:)(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AF745C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = sub_1E19D8214(a1, 0, 0, 1, v1);
  v10 = v9;
  v11 = type metadata accessor for TextConfiguration(0);
  v12 = (v1 + *(v11 + 32));
  v13 = v12[1];
  if (!v13)
  {
    v21 = *MEMORY[0x1E69E7040];
    v22 = v10;
    goto LABEL_21;
  }

  v55 = v4;
  v54 = *v12;
  v14 = v1 + *(v11 + 20);
  v15 = v11;
  v58 = type metadata accessor for OfferButtonMetrics(0);

  v16 = [a1 traitCollection];
  v59 = v14;
  v53 = sub_1E1AF104C();

  v57 = v15;
  v56 = v1;
  v17 = [a1 traitCollection];
  sub_1E16CAD98();

  v18 = v65;
  v19 = [a1 traitCollection];
  v20 = [v19 layoutDirection];

  if (v20 != 1)
  {
    v4 = v55;
    if (v18 >= 2)
    {
      v2 = v56;
      if (v18 == 2)
      {
        goto LABEL_5;
      }

LABEL_12:
      v52 = 0;
      goto LABEL_13;
    }

LABEL_8:
    *(&v66 + 1) = &type metadata for Feature;
    *&v67 = sub_1E1309EB0();
    LOBYTE(v65) = 5;
    v23 = v53;
    v24 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(&v65);
    *&v65 = v54;
    *(&v65 + 1) = v13;
    LOBYTE(v66) = 0;
    *(&v66 + 1) = v23;
    v67 = 1uLL;
    *&v68 = 0;
    *(&v68 + 1) = 3;
    LOBYTE(v69) = 0;
    HIBYTE(v69) = v24 & 1;
    v62 = 1uLL;
    v63 = v68;
    v64 = v69;
    v61 = v66;
    v60 = v65;
    v25 = [a1 traitCollection];
    v26 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v25, v8, 1.79769313e308);
    v28 = v27;

    v29 = v58;
    v30 = v59;
    __swift_project_boxed_opaque_existential_1Tm((v59 + *(v58 + 24)), *(v59 + *(v58 + 24) + 24));
    sub_1E1AF12FC();
    v32 = v28 + v31;
    v21 = *MEMORY[0x1E69E7040];
    (*(v5 + 104))(v7, v21, v4);
    v33 = CGSize.rounded(_:)(v7, v26, v32);
    v35 = v34;
    sub_1E180E4CC(&v65);

    (*(v5 + 8))(v7, v4);
    v22 = v10 + v35;
    if (v8 <= v33)
    {
      v8 = v33;
    }

    v2 = v56;
    goto LABEL_19;
  }

  v4 = v55;
  if (v18 < 2)
  {
    goto LABEL_8;
  }

  v2 = v56;
  if (v18 == 2)
  {
    goto LABEL_12;
  }

LABEL_5:
  v52 = 2;
LABEL_13:
  v36 = [a1 traitCollection];
  v37 = sub_1E1AF698C();

  if (v37)
  {
    v38 = 77.0;
  }

  else
  {
    v38 = 62.0;
  }

  *(&v66 + 1) = &type metadata for Feature;
  *&v67 = sub_1E1309EB0();
  LOBYTE(v65) = 5;
  v39 = v53;
  v40 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(&v65);
  *&v65 = v54;
  *(&v65 + 1) = v13;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = v39;
  v67 = v52;
  *&v68 = 0;
  *(&v68 + 1) = 3;
  LOBYTE(v69) = 0;
  HIBYTE(v69) = v40 & 1;
  v62 = v52;
  v63 = v68;
  v64 = v69;
  v61 = v66;
  v60 = v65;
  v41 = [a1 traitCollection];
  v42 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v41, v38, 1.79769313e308);
  v44 = v43;

  v21 = *MEMORY[0x1E69E7040];
  (*(v5 + 104))(v7, v21, v4);
  v45 = CGSize.rounded(_:)(v7, v42, v44);
  v22 = v46;
  sub_1E180E4CC(&v65);

  (*(v5 + 8))(v7, v4);
  v8 = v8 + v45 + 6.0;
  if (v10 > v22)
  {
    v22 = v10;
  }

  v30 = v59;
  v29 = v58;
LABEL_19:
  v11 = v57;
  if (*(v30 + *(v29 + 84)) == 1)
  {
    v22 = v22 + v22 - v10;
  }

LABEL_21:
  v47 = v2 + *(v11 + 20);
  v48 = (v47 + *(type metadata accessor for OfferButtonMetrics(0) + 52));
  if (v8 <= *v48)
  {
    v8 = *v48;
  }

  if (v22 > v48[1])
  {
    v49 = v22;
  }

  else
  {
    v49 = v48[1];
  }

  (*(v5 + 104))(v7, v21, v4);
  v50 = CGSize.rounded(_:)(v7, v8, v49);
  (*(v5 + 8))(v7, v4);
  return v50;
}

uint64_t static TextConfigurationTheme.blueColored.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_1EE1EC008;
  v3 = unk_1EE1EC018;
  v4 = xmmword_1EE1EC028;
  v9[3] = unk_1EE1EC018;
  v10[0] = xmmword_1EE1EC028;
  *(v10 + 9) = *(&xmmword_1EE1EC028 + 9);
  v6 = unk_1EE1EBFF8;
  v9[0] = xmmword_1EE1EBFE8;
  v5 = xmmword_1EE1EBFE8;
  v9[1] = unk_1EE1EBFF8;
  v9[2] = xmmword_1EE1EC008;
  *(a1 + 73) = *(&xmmword_1EE1EC028 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E16DB9C0(v9, v8);
}

void TextConfigurationTheme.init(from:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v63 = 1;
  if (v4 <= 6)
  {
    if (a1[1] > 3u)
    {
      if (v4 == 4)
      {
        if (v3 == 6)
        {
          v37 = [objc_opt_self() whiteColor];
        }

        else
        {
          if (qword_1EE1EF8E8 != -1)
          {
            swift_once();
          }

          v37 = qword_1EE1EF8F0;
        }

        v11 = v37;
        goto LABEL_21;
      }

      if (v4 != 5)
      {
        if (qword_1EE1EF8E8 != -1)
        {
          swift_once();
        }

        v38 = qword_1EE1EF8F0;
LABEL_67:
        v11 = v38;
        goto LABEL_68;
      }
    }

    else if (v4 >= 2 && v4 == 2)
    {
      if (v3 == 6)
      {
        if (qword_1EE1E3260 != -1)
        {
          swift_once();
        }

        v10 = [qword_1EE1E3268 colorWithAlphaComponent_];
      }

      else
      {
        v10 = [objc_opt_self() whiteColor];
      }

      v11 = v10;
      if (!v5)
      {
        goto LABEL_56;
      }

LABEL_69:
      if (v5 == 1)
      {
        sub_1E139D580(1, v6);
        if (qword_1ECEB0E30 != -1)
        {
          swift_once();
        }

        v36 = &qword_1ECEF4440;
LABEL_77:
        v39 = *v36;
        v40 = objc_opt_self();
        v13 = v39;
        v14 = [v40 whiteColor];
        if (v3 <= 2)
        {
          goto LABEL_78;
        }

        goto LABEL_27;
      }

      if (v5 == 2)
      {
        sub_1E139D580(2, v6);
        if (qword_1ECEB0E38 != -1)
        {
          swift_once();
        }

        v36 = &qword_1ECEF4448;
        goto LABEL_77;
      }

      sub_1E139D580(v5, v6);
      v13 = v5;
      v14 = v6;
LABEL_85:
      sub_1E139D580(v5, v6);
      v17 = v13;
      v42 = sub_1E1AF6C7C();

      v18 = v14;
      v19 = sub_1E1AF6C7C();

      sub_1E139D53C(v5, v6);
      v43 = v5;
      v29 = v42;
      sub_1E139D53C(v43, v6);
      goto LABEL_93;
    }
  }

  else if (a1[1] >= 0xDu)
  {
    if (v4 == 13)
    {
      v7 = [objc_opt_self() blackColor];
      v8 = [v7 colorWithAlphaComponent_];
LABEL_55:
      v11 = v8;

      if (!v5)
      {
LABEL_56:
        sub_1E139D580(0, v6);
        if (qword_1EE1EF8D8 != -1)
        {
          swift_once();
        }

        v36 = &qword_1EE1EF8E0;
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    if (v4 == 14)
    {
      v7 = [objc_opt_self() whiteColor];
      v8 = [v7 colorWithAlphaComponent_];
      goto LABEL_55;
    }

    if (qword_1EE1E3248 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE1E3250;
    goto LABEL_67;
  }

  if (qword_1EE1EF8E8 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE1EF8F0;
  if (v4 != 4)
  {
LABEL_68:
    if (!v5)
    {
      goto LABEL_56;
    }

    goto LABEL_69;
  }

LABEL_21:
  if (qword_1EE1DDC28 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE1EF8D8;
  v13 = qword_1EE1DDC30;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE1EF8E0;
  if (v5 >= 3)
  {
    goto LABEL_85;
  }

  if (v3 <= 2)
  {
LABEL_78:
    if (v3)
    {
      if (v3 == 1)
      {
        if (qword_1ECEB0E20 != -1)
        {
          swift_once();
        }

        v17 = qword_1ECEF4438;
        v35 = sub_1E1AF6C7C();
        v18 = v13;
        v19 = sub_1E1AF6C7C();

LABEL_83:
        v41 = v5;
        v29 = v35;
LABEL_90:
        sub_1E139D53C(v41, v6);
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v24 = 0;
        v20 = 0;
        v21 = 0;
        v28 = 1;
        goto LABEL_135;
      }

      sub_1E139D53C(v5, v6);
    }

    else if (!v5)
    {
      sub_1E139D580(0, v6);
      if (qword_1EE1DDCC8 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE1DDCD0;
      v29 = sub_1E1AF6C7C();
      v18 = v13;
      v19 = sub_1E1AF6C7C();

      v41 = 0;
      goto LABEL_90;
    }

    v17 = v13;
    v29 = sub_1E1AF6C7C();

    v18 = v14;
    v19 = sub_1E1AF6C7C();

LABEL_93:
    v26 = 0;
    v25 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v28 = 1;
    v27 = 1;
    goto LABEL_135;
  }

LABEL_27:
  if (v3 <= 4)
  {
    v62 = v11;
    if (v3 == 3)
    {
      v60 = v13;
      if (qword_1ECEB11A0 != -1)
      {
        swift_once();
      }

      v57 = v14;
      v59 = v6;
      v15 = qword_1ECEB95B8;
      v16 = objc_opt_self();
      v17 = v15;
      v58 = [v16 whiteColor];
      v18 = [v16 whiteColor];
      v19 = [v16 whiteColor];
      if (qword_1ECEB0E88 != -1)
      {
        swift_once();
      }

      v21 = qword_1ECEB5A20;
      v20 = *algn_1ECEB5A28;
      v22 = qword_1ECEB5A30;
      v23 = unk_1ECEB5A38;

      v24 = v22;
      v25 = v23;

      sub_1E139D53C(v5, v59);
      v26 = 0;
      v27 = 0;
      v28 = 1;
      v11 = v62;
      v29 = v58;
      goto LABEL_135;
    }

    v17 = [objc_opt_self() whiteColor];
    v33 = sub_1E1AF6C7C();

    v18 = v13;
    v19 = sub_1E1AF6C7C();

    sub_1E139D53C(v5, v6);
    if (v4 == 8)
    {
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      v63 = 0;
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
    }

    v28 = 1;
    goto LABEL_133;
  }

  if (v3 != 5)
  {
    if (v4 == 2 || v4 == 4)
    {
      v61 = v13;
      v62 = v11;
      if (qword_1EE1DDC50 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE1DDC58;
      v44 = sub_1E1AF6C7C();
      v45 = objc_opt_self();
      v18 = [v45 whiteColor];
      v46 = [v45 whiteColor];
    }

    else
    {
      if (v4 == 15)
      {
        v34 = v13;
        if (qword_1EE1DDC38 != -1)
        {
          swift_once();
        }

        v17 = qword_1EE1DDC40;
        v35 = sub_1E1AF6C7C();
        v18 = [objc_opt_self() whiteColor];
        v19 = sub_1E1AF6C7C();

        goto LABEL_83;
      }

      v61 = v13;
      v62 = v11;
      if (qword_1EE1DDC60 != -1)
      {
        swift_once();
      }

      v17 = qword_1EE1DDC68;
      v44 = sub_1E1AF6C7C();
      v49 = objc_opt_self();
      v18 = [v49 whiteColor];
      v46 = [v49 whiteColor];
    }

    v19 = v46;

    v50 = v5;
    v29 = v44;
    sub_1E139D53C(v50, v6);
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v28 = 1;
LABEL_134:
    v11 = v62;
    goto LABEL_135;
  }

  if (v4 > 7)
  {
    if (v4 == 15)
    {
      v62 = v11;
      if (qword_1ECEB11F8 != -1)
      {
        swift_once();
      }

      v56 = v13;
      v17 = qword_1ECEB9610;
      v33 = sub_1E1AF6C7C();
      if (qword_1ECEB1200 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECEB9618;
      v19 = sub_1E1AF6C7C();

      sub_1E139D53C(v5, v6);
      v26 = 0;
      v28 = 0;
      v27 = 0;
      v25 = 0;
      v24 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_133;
    }

    if (v4 == 8)
    {
      v62 = v11;
      if (qword_1ECEB11D8 != -1)
      {
        swift_once();
      }

      v47 = qword_1ECEB11E0;
      v33 = qword_1ECEB95F0;
      if (v47 != -1)
      {
        swift_once();
      }

      v48 = qword_1ECEB95F8;
      goto LABEL_121;
    }

LABEL_116:
    v62 = v11;
    if (qword_1EE1DDCC8 != -1)
    {
      swift_once();
    }

    v51 = qword_1EE1DDCA0;
    v33 = qword_1EE1DDCD0;
    if (v51 != -1)
    {
      swift_once();
    }

    v48 = qword_1EE1DDCA8;
LABEL_121:
    v52 = v48;

    sub_1E139D53C(v5, v6);
    v53 = v52;
    v19 = v53;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    v28 = 1;
LABEL_127:
    v18 = v53;
    v17 = v33;
LABEL_133:
    v29 = v33;
    goto LABEL_134;
  }

  if (v4 == 1)
  {
    v62 = v11;
    if (qword_1ECEB11E8 != -1)
    {
      swift_once();
    }

    v54 = qword_1ECEB11F0;
    v33 = qword_1ECEB9600;
    if (v54 != -1)
    {
      swift_once();
    }

    v55 = qword_1ECEB9608;

    sub_1E139D53C(v5, v6);
    v53 = v55;
    v19 = v53;
    v26 = 0;
    v28 = 0;
    v27 = 0;
    v25 = 0;
    v24 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_127;
  }

  if (v4 != 6)
  {
    goto LABEL_116;
  }

  if (qword_1EE1DDCC8 != -1)
  {
    swift_once();
  }

  v30 = qword_1EE1E3248;
  v17 = qword_1EE1DDCD0;
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = v13;
  v32 = qword_1EE1DDCA0;
  v18 = qword_1EE1E3250;
  if (v32 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE1DDCA8;

  sub_1E139D53C(v5, v6);
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 0;
  v20 = 0;
  v21 = 0;
  v28 = 1;
  v29 = v17;
LABEL_135:
  *a2 = v17;
  *(a2 + 8) = v29;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v11;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 56) = v24;
  *(a2 + 64) = v25;
  *(a2 + 72) = v27;
  *(a2 + 73) = v28;
  *(a2 + 80) = v26;
  *(a2 + 88) = v63;
}

void sub_1E19D4400()
{
  if (qword_1EE1E8770 != -1)
  {
    swift_once();
  }

  v0 = word_1EE1E8778;
  v1 = qword_1EE1E8780;
  v2 = unk_1EE1E8788;
  sub_1E139D580(qword_1EE1E8780, unk_1EE1E8788);
  TextConfigurationTheme.init(from:)(&v0, &xmmword_1EE1EBFE8);
}

uint64_t static TextConfigurationTheme.blueColored.setter(__int128 *a1)
{
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_1EE1EC008;
  v5[3] = unk_1EE1EC018;
  v6[0] = xmmword_1EE1EC028;
  *(v6 + 9) = *(&xmmword_1EE1EC028 + 9);
  v5[0] = xmmword_1EE1EBFE8;
  v5[1] = unk_1EE1EBFF8;
  v2 = a1[3];
  xmmword_1EE1EC008 = a1[2];
  unk_1EE1EC018 = v2;
  xmmword_1EE1EC028 = a1[4];
  *(&xmmword_1EE1EC028 + 9) = *(a1 + 73);
  v3 = a1[1];
  xmmword_1EE1EBFE8 = *a1;
  unk_1EE1EBFF8 = v3;
  return sub_1E19D8C60(v5);
}

uint64_t (*static TextConfigurationTheme.blueColored.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E19D45BC@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_1EE1EC008;
  v3 = unk_1EE1EC018;
  v4 = xmmword_1EE1EC028;
  v9[3] = unk_1EE1EC018;
  v10[0] = xmmword_1EE1EC028;
  *(v10 + 9) = *(&xmmword_1EE1EC028 + 9);
  v6 = unk_1EE1EBFF8;
  v9[0] = xmmword_1EE1EBFE8;
  v5 = xmmword_1EE1EBFE8;
  v9[1] = unk_1EE1EBFF8;
  v9[2] = xmmword_1EE1EC008;
  *(a1 + 73) = *(&xmmword_1EE1EC028 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E16DB9C0(v9, v8);
}

uint64_t sub_1E19D4678(__int128 *a1)
{
  v1 = a1[3];
  v6 = a1[2];
  v7 = v1;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v2 = a1[1];
  v4 = *a1;
  v5 = v2;
  sub_1E16DB9C0(&v4, v9);
  if (qword_1EE1EBFE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9[3] = unk_1EE1EC018;
  v10[0] = xmmword_1EE1EC028;
  *(v10 + 9) = *(&xmmword_1EE1EC028 + 9);
  v9[0] = xmmword_1EE1EBFE8;
  v9[1] = unk_1EE1EBFF8;
  v9[2] = xmmword_1EE1EC008;
  xmmword_1EE1EC008 = v6;
  unk_1EE1EC018 = v7;
  xmmword_1EE1EC028 = v8[0];
  *(&xmmword_1EE1EC028 + 9) = *(v8 + 9);
  xmmword_1EE1EBFE8 = v4;
  unk_1EE1EBFF8 = v5;
  return sub_1E19D8C60(v9);
}

void sub_1E19D4768()
{
  if (qword_1ECEB0DE8 != -1)
  {
    swift_once();
  }

  v0 = word_1ECEB4680;
  v1 = qword_1ECEB4688;
  v2 = qword_1ECEB4690;
  sub_1E139D580(qword_1ECEB4688, qword_1ECEB4690);
  TextConfigurationTheme.init(from:)(&v0, &xmmword_1ECEBCAE8);
}

uint64_t static TextConfigurationTheme.disabled.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1ECEB16D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_1ECEBCB08;
  v3 = unk_1ECEBCB18;
  v4 = xmmword_1ECEBCB28;
  v9[3] = unk_1ECEBCB18;
  v10[0] = xmmword_1ECEBCB28;
  *(v10 + 9) = *(&xmmword_1ECEBCB28 + 9);
  v6 = unk_1ECEBCAF8;
  v9[0] = xmmword_1ECEBCAE8;
  v5 = xmmword_1ECEBCAE8;
  v9[1] = unk_1ECEBCAF8;
  v9[2] = xmmword_1ECEBCB08;
  *(a1 + 73) = *(&xmmword_1ECEBCB28 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E16DB9C0(v9, v8);
}

uint64_t static TextConfigurationTheme.disabled.setter(__int128 *a1)
{
  if (qword_1ECEB16D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[2] = xmmword_1ECEBCB08;
  v5[3] = unk_1ECEBCB18;
  v6[0] = xmmword_1ECEBCB28;
  *(v6 + 9) = *(&xmmword_1ECEBCB28 + 9);
  v5[0] = xmmword_1ECEBCAE8;
  v5[1] = unk_1ECEBCAF8;
  v2 = a1[3];
  xmmword_1ECEBCB08 = a1[2];
  unk_1ECEBCB18 = v2;
  xmmword_1ECEBCB28 = a1[4];
  *(&xmmword_1ECEBCB28 + 9) = *(a1 + 73);
  v3 = a1[1];
  xmmword_1ECEBCAE8 = *a1;
  unk_1ECEBCAF8 = v3;
  return sub_1E19D8C60(v5);
}

uint64_t (*static TextConfigurationTheme.disabled.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ECEB16D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E19D49E0@<X0>(__int128 *a1@<X8>)
{
  if (qword_1ECEB16D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_1ECEBCB08;
  v3 = unk_1ECEBCB18;
  v4 = xmmword_1ECEBCB28;
  v9[3] = unk_1ECEBCB18;
  v10[0] = xmmword_1ECEBCB28;
  *(v10 + 9) = *(&xmmword_1ECEBCB28 + 9);
  v6 = unk_1ECEBCAF8;
  v9[0] = xmmword_1ECEBCAE8;
  v5 = xmmword_1ECEBCAE8;
  v9[1] = unk_1ECEBCAF8;
  v9[2] = xmmword_1ECEBCB08;
  *(a1 + 73) = *(&xmmword_1ECEBCB28 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_1E16DB9C0(v9, v8);
}

uint64_t sub_1E19D4A9C(__int128 *a1)
{
  v1 = a1[3];
  v6 = a1[2];
  v7 = v1;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v2 = a1[1];
  v4 = *a1;
  v5 = v2;
  sub_1E16DB9C0(&v4, v9);
  if (qword_1ECEB16D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9[3] = unk_1ECEBCB18;
  v10[0] = xmmword_1ECEBCB28;
  *(v10 + 9) = *(&xmmword_1ECEBCB28 + 9);
  v9[0] = xmmword_1ECEBCAE8;
  v9[1] = unk_1ECEBCAF8;
  v9[2] = xmmword_1ECEBCB08;
  xmmword_1ECEBCB08 = v6;
  unk_1ECEBCB18 = v7;
  xmmword_1ECEBCB28 = v8[0];
  *(&xmmword_1ECEBCB28 + 9) = *(v8 + 9);
  xmmword_1ECEBCAE8 = v4;
  unk_1ECEBCAF8 = v5;
  return sub_1E19D8C60(v9);
}

double static TextConfiguration.maxSubtitleWidth(with:)()
{
  v0 = sub_1E1AF698C();
  result = 62.0;
  if (v0)
  {
    return 77.0;
  }

  return result;
}

int8x8_t TextConfiguration.init(metrics:symbolName:subtitleText:subtitlePosition:theme:)@<D0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, _OWORD *a7@<X6>, void *a8@<X8>)
{
  v13 = *a6 | (*(a6 + 2) << 32);
  *a8 = 0x4018000000000000;
  v14 = type metadata accessor for TextConfiguration(0);
  sub_1E16C8F24(a1, a8 + v14[5]);
  v15 = (a8 + v14[6]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = *(a1 + *(type metadata accessor for OfferButtonMetrics(0) + 44));
  v17 = sub_1E1AF5DBC();

  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  sub_1E19D8CF8(a1, type metadata accessor for OfferButtonMetrics);
  *(a8 + v14[7]) = v18;
  v19 = (a8 + v14[10]);
  v20 = a7[3];
  v19[2] = a7[2];
  v19[3] = v20;
  v19[4] = a7[4];
  *(v19 + 73) = *(a7 + 73);
  v21 = a7[1];
  *v19 = *a7;
  v19[1] = v21;
  v22 = (a8 + v14[8]);
  *v22 = a4;
  v22[1] = a5;
  if (v13 == 4)
  {
    v23 = 0x1000100010001;
    LOBYTE(v13) = 1;
    LOBYTE(v24) = 1;
  }

  else
  {
    v25 = vdupq_n_s64(v13);
    v23 = vmovn_s32(vuzp1q_s32(vshlq_u64(v25, xmmword_1E1B04480), vshlq_u64(v25, xmmword_1E1B04470)));
    v24 = v13 >> 40;
  }

  v26 = a8 + v14[9];
  *v26 = v13;
  result = vuzp1_s8(v23, v23);
  *(v26 + 1) = result.i32[0];
  v26[5] = v24;
  return result;
}

uint64_t TextConfiguration.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TextConfiguration(0) + 20);

  return sub_1E16C8F24(v3, a1);
}

uint64_t TextConfiguration.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextConfiguration(0) + 24));

  return v1;
}

void *TextConfiguration.symbol.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextConfiguration(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t TextConfiguration.subtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TextConfiguration(0) + 32));

  return v1;
}

uint64_t TextConfiguration.subtitlePosition.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TextConfiguration(0);
  v4 = v1 + *(result + 36);
  v5 = *(v4 + 4);
  *a1 = *v4;
  *(a1 + 4) = v5;
  return result;
}

uint64_t TextConfiguration.theme.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TextConfiguration(0) + 40));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v14[0] = v3[4];
  v5 = v14[0];
  *(v14 + 9) = *(v3 + 73);
  v6 = *(v14 + 9);
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  *(a1 + 73) = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_1E16DB9C0(v11, &v10);
}

uint64_t TextConfiguration.isEqual(to:with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCB48, &unk_1E1B4A700);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38[-v6];
  v8 = type metadata accessor for TextConfiguration(0);
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E1300B24(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68, &qword_1E1B285A0);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if ((v12 & 1) == 0)
  {
    v13(v7, 1, 1, v8);
    sub_1E1308058(v7, &qword_1ECEBCB48, &unk_1E1B4A700);
LABEL_21:
    v36 = 0;
    return v36 & 1;
  }

  v13(v7, 0, 1, v8);
  sub_1E19D8C90(v7, v11, type metadata accessor for TextConfiguration);
  v14 = v8[6];
  v15 = *(v2 + v14);
  v16 = *(v2 + v14 + 8);
  v17 = &v11[v14];
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v19 = v8[8];
  v20 = (v2 + v19);
  v21 = *(v2 + v19 + 8);
  v22 = &v11[v19];
  v23 = v22[1];
  if (!v21)
  {
    if (!v23)
    {
      goto LABEL_17;
    }

LABEL_20:
    sub_1E19D8CF8(v11, type metadata accessor for TextConfiguration);
    goto LABEL_21;
  }

  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = *v20 == *v22 && v21 == v23;
  if (!v24 && (sub_1E1AF74AC() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (!sub_1E16CAD94(*(v2 + v8[9]) | (*(v2 + v8[9] + 2) << 16), *&v11[v8[9]] | (*&v11[v8[9] + 2] << 16)))
  {
    goto LABEL_20;
  }

  v25 = (v2 + v8[10]);
  v26 = v25[3];
  v27 = v25[1];
  v50 = v25[2];
  v51 = v26;
  v28 = v25[3];
  v52[0] = v25[4];
  *(v52 + 9) = *(v25 + 73);
  v29 = v25[1];
  v49[0] = *v25;
  v49[1] = v29;
  v46 = v50;
  v47 = v28;
  v48[0] = v25[4];
  *(v48 + 9) = *(v25 + 73);
  v44 = v49[0];
  v45 = v27;
  v30 = &v11[v8[10]];
  v31 = v30[3];
  v32 = v30[1];
  v54 = v30[2];
  v55 = v31;
  v33 = v30[3];
  v56[0] = v30[4];
  *(v56 + 9) = *(v30 + 73);
  v34 = v30[1];
  v53[0] = *v30;
  v53[1] = v34;
  v41 = v54;
  v42 = v33;
  v43[0] = v30[4];
  *(v43 + 9) = *(v30 + 73);
  v39 = v53[0];
  v40 = v32;
  sub_1E16DB9C0(v49, v38);
  sub_1E16DB9C0(v53, v38);
  v35 = _s11AppStoreKit22TextConfigurationThemeV2eeoiySbAC_ACtFZ_0(&v44, &v39);
  v57[2] = v41;
  v57[3] = v42;
  v58[0] = v43[0];
  *(v58 + 9) = *(v43 + 9);
  v57[0] = v39;
  v57[1] = v40;
  sub_1E19D8C60(v57);
  v59[2] = v46;
  v59[3] = v47;
  v60[0] = v48[0];
  *(v60 + 9) = *(v48 + 9);
  v59[0] = v44;
  v59[1] = v45;
  sub_1E19D8C60(v59);
  if ((v35 & 1) == 0)
  {
    goto LABEL_20;
  }

  v36 = OfferButtonMetrics.isEqual(to:with:)(&v11[v8[5]], a2);
  sub_1E19D8CF8(v11, type metadata accessor for TextConfiguration);
  return v36 & 1;
}

void TextConfiguration.apply<A>(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v105 = &v99 - v8;
  v114 = swift_getAssociatedTypeWitness();
  v112 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v108 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v113 = &v99 - v13;
  v14 = type metadata accessor for TextConfiguration(0);
  v15 = v3 + *(v14 + 20);
  v16 = type metadata accessor for OfferButtonMetrics(0);
  v17 = v16;
  v18 = v15 + *(v16 + 64);
  if (*(v18 + 8) == 1)
  {
    v18 = v15 + *(v16 + 60);
  }

  v19 = *v18;
  v122 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0, &unk_1E1B03780);
  v121 = a2;
  v20 = swift_dynamicCast();
  v110 = v17;
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v123, *(&v124 + 1));
    v17 = v110;
    sub_1E1AF115C();
    v22 = v21;
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    sub_1E1308058(&v123, &qword_1ECEB4E00, &qword_1E1B0AB20);
    v22 = 0;
    v24 = 0;
  }

  v25 = v24;
  v26 = v121;
  v27 = sub_1E19D8214(a1, v22, v25, v20 ^ 1u, v4);
  v29 = v15 + *(v17 + 80);
  v30 = *(v29 + 8);
  v31 = v27 - v19;
  v32 = v28 - v19;
  v109 = v15;
  if (v30)
  {
    if (v31 >= v32)
    {
      v33 = v28 - v19;
    }

    else
    {
      v33 = v27 - v19;
    }

    v34 = v33 * 0.5;
  }

  else
  {
    v34 = *v29;
  }

  v35 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v19 * 0.5 cornerRadii:{v19 * 0.5, v31, v32, v34, v34}];
  v36 = [v35 CGPath];

  v37 = (*(a3 + 120))(v26, a3);
  v107 = v36;
  ConfigurableOfferButton.apply(outlineShapePath:isIndeterminateProgress:animated:)(v36, 0, v37 & 1);
  v38 = *(a3 + 72);
  v103 = a3 + 72;
  v102 = v38;
  v39 = v38(v26, a3);
  [v39 setLineWidth_];

  v40 = *(v4 + *(v14 + 28));
  v41 = v14;
  v42 = *(a3 + 80);
  v115 = a1;
  v119 = v4;
  v120 = a3;
  v117 = v41;
  if (v40)
  {
    v104 = v40;
    v101 = v40;
    v43 = v113;
    v42(v26, a3);
    v44 = v114;
    swift_getAssociatedConformanceWitness();
    sub_1E1AF118C();
    v118 = *(v112 + 8);
    v118(v43, v44);
    v45 = (*(a3 + 64))(v26, a3);
    [v45 setHidden_];

    v46 = *(a3 + 96);
    v47 = v105;
    v46(v26, a3);
    v100 = v46;
    v48 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    sub_1E1AF118C();
    v49 = v111[1];
    v49(v47, v48);
    v46(v121, a3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = *(AssociatedConformanceWitness + 16);
    v111 = v101;
    v51(v104, v48, AssociatedConformanceWitness);
    v49(v47, v48);
    v100(v121, a3);
    v52 = (*(AssociatedConformanceWitness + 8))(v48, AssociatedConformanceWitness);
    v53 = v48;
    v54 = v121;
    v49(v47, v53);
    (*(a3 + 208))(v52, v54, a3);
    (*(a3 + 232))(0, 0, v54, a3);
  }

  else
  {
    v55 = v113;
    v42(v26, a3);
    v56 = (v4 + *(v41 + 24));
    v58 = v56[1];
    v104 = *v56;
    v57 = v104;
    v59 = v114;
    v60 = swift_getAssociatedConformanceWitness();
    v61 = *(v60 + 16);
    v101 = v58;
    swift_bridgeObjectRetain_n();
    v61(v57, v58, v59, v60);
    v54 = v121;
    v62 = *(v112 + 8);
    v62(v55, v59);
    v42(v54, v120);
    v63 = [a1 traitCollection];
    sub_1E1AF104C();

    swift_getAssociatedConformanceWitness();
    sub_1E1AF149C();
    v62(v55, v59);
    v42(v54, v120);
    sub_1E1AF118C();
    v64 = v59;
    a3 = v120;
    v118 = v62;
    v62(v55, v64);
    v65 = (*(a3 + 64))(v54, a3);
    [v65 setHidden_];

    v66 = v105;
    (*(a3 + 96))(v54, a3);
    v67 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    sub_1E1AF118C();
    (v111[1])(v66, v67);
    (*(a3 + 208))(0, v54, a3);
    (*(a3 + 232))(v104, v101, v54, a3);
  }

  v68 = a3 + 88;
  v69 = v106;
  AssociatedTypeWitness = *(a3 + 88);
  (AssociatedTypeWitness)(v54, a3);
  v70 = (v119 + *(v117 + 32));
  v71 = v70[1];
  if (v71)
  {
    v104 = *v70;
  }

  else
  {
    v104 = 0;
  }

  v72 = v114;
  v105 = swift_getAssociatedConformanceWitness();
  sub_1E1AF118C();
  v111 = (v112 + 8);
  v73 = v118;
  v118(v69, v72);
  v74 = v108;
  v75 = v115;
  (AssociatedTypeWitness)(v121, v120);
  if (v71)
  {
    v76 = v71;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  v77 = swift_getAssociatedConformanceWitness();
  v112 = v77;
  v78 = *(v77 + 16);

  v78(v104, v76, v72, v77);
  v73(v74, v72);
  v79 = v113;
  v80 = AssociatedTypeWitness;
  (AssociatedTypeWitness)(v121, v120);
  v81 = [v75 traitCollection];
  sub_1E1AF104C();

  sub_1E1AF149C();
  v73(v79, v72);
  v118 = v73;
  v80(v121, v120);
  v82 = v119 + *(v117 + 40);
  v83 = *(v82 + 32);
  v110 = v68;
  v84 = v112;
  v85 = *(v112 + 40);
  v86 = v83;
  v85(v83, v72, v84);
  v87 = v75;
  v88 = v121;
  v73(v79, v72);
  (AssociatedTypeWitness)(v88, v120);
  v89 = [v87 traitCollection];
  sub_1E16CAD98();

  v90 = sub_1E148BE74(&v123, v87);
  (*(v112 + 64))(v90, v72);
  v91 = v120;
  v118(v79, v72);
  if ((*(v82 + 88) & 1) == 0)
  {
    (*(v91 + 144))(*(v82 + 80), v88, v91);
  }

  _s11AppStoreKit17TextConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(v87, v88, v91);
  v92 = *(v82 + 48);
  if (v92)
  {
    v94 = *(v82 + 56);
    v93 = *(v82 + 64);
    *&v123 = *(v82 + 40);
    *(&v123 + 1) = v92;
    *&v124 = v94;
    *(&v124 + 1) = v93;

    v95 = v94;
    v96 = v93;
    v97 = v102(v88, v91);
    LayerVisualEffect.apply(to:)(v97);

    v98 = v124;
  }

  else
  {
  }
}

uint64_t _s11AppStoreKit17TextConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v60 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v60 - v13;
  v15 = (*(a3 + 104))(a2, a3, v12);
  v66 = v11;
  v67 = a2;
  v64 = v14;
  v65 = v10;
  v68 = v3;
  if (v15)
  {
    v63 = *(a3 + 80);
    v63(a2, a3);
    v60 = (v3 + *(type metadata accessor for TextConfiguration(0) + 40));
    v16 = *(v60 + 3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = v11;
    v19 = AssociatedConformanceWitness;
    v20 = v14;
    v61 = a1;
    v21 = v18;
    v70 = v8;
    v62 = *(AssociatedConformanceWitness + 40);
    v22 = v16;
    v62(v16, v10, v19);
    v23 = v61;
    v24 = v21;
    v25 = v22;
    v8 = v70;
    v62 = *(v24 + 8);
    (v62)(v20, v10);
    sub_1E19D68A0(*(v60 + 1), v23, a2, a3);
  }

  else
  {
    v26 = (*(a3 + 128))(a2, a3);
    v27 = v4 + *(type metadata accessor for TextConfiguration(0) + 40);
    if (v26 == 2)
    {
      v28 = v10;
      v29 = sub_1E13F78BC();
      sub_1E19D68A0(v29, a1, a2, a3);

      v30 = v28;
      v11 = v66;
      v63 = *(a3 + 80);
      v63(a2, a3);
      v70 = *(v27 + 16);
      v31 = sub_1E13F78BC();
      v32 = swift_getAssociatedConformanceWitness();
      (*(v32 + 40))(v31, v30, v32);
    }

    else
    {
      sub_1E19D68A0(*v27, a1, a2, a3);
      v63 = *(a3 + 80);
      v63(a2, a3);
      v33 = *(v27 + 16);
      v34 = v10;
      v35 = swift_getAssociatedConformanceWitness();
      v36 = *(v35 + 40);
      v70 = v33;
      v37 = v35;
      v30 = v34;
      v36(v33, v34, v37);
    }

    v62 = *(v11 + 8);
    (v62)(v14, v30);
    a2 = v67;
    v25 = v70;
  }

  v38 = v69;
  v61 = *(a3 + 96);
  v61(a2, a3);
  v39 = AssociatedTypeWitness;
  v40 = swift_getAssociatedConformanceWitness();
  (*(v40 + 56))(v25, v39, v40);
  v41 = v8[1];
  v70 = v8 + 1;
  v60 = v41;
  v41(v38, v39);
  v42 = *(a3 + 72);
  v43 = v42(a2, a3);
  v44 = [objc_opt_self() clearColor];
  v45 = [v44 CGColor];

  [v43 setStrokeColor_];
  v46 = v42(a2, a3);
  v47 = [v46 path];

  if (v47)
  {

    v48 = v42(a2, a3);
    [v48 setBackgroundColor_];
  }

  else
  {
    v48 = v42(a2, a3);
    v49 = v42(a2, a3);
    v50 = [v49 fillColor];

    [v48 setBackgroundColor_];
  }

  result = type metadata accessor for TextConfiguration(0);
  if ((*(v68 + *(result + 40) + 73) & 1) == 0)
  {
    v52 = v67;
    v53 = v42(v67, a3);
    LODWORD(v54) = 1.0;
    [v53 setOpacity_];

    v55 = v69;
    v61(v52, a3);
    v56 = AssociatedTypeWitness;
    (*(v40 + 40))(AssociatedTypeWitness, v40, 1.0);
    v60(v55, v56);
    v57 = v64;
    v63(v52, a3);
    v58 = v65;
    v59 = swift_getAssociatedConformanceWitness();
    (*(v59 + 88))(v58, v59, 1.0);
    return (v62)(v57, v58);
  }

  return result;
}

void sub_1E19D68A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = &type metadata for Feature;
  v12[4] = sub_1E1309EB0();
  LOBYTE(v12[0]) = 17;
  v7 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v7 & 1) != 0 && ((*(a4 + 184))(a3, a4))
  {
    v8 = *(a4 + 168);
    v9 = a1;
    v8(a1, a3, a4);
    v10 = (*(a4 + 72))(a3, a4);
    [v10 setFillColor_];
  }

  else
  {
    v11 = (*(a4 + 72))(a3, a4);
    v10 = [a1 CGColor];
    [v11 setFillColor_];
  }
}

double TextConfiguration.unapply<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(type metadata accessor for TextConfiguration(0) + 40));
  if (v6[6])
  {
    v9 = v6[7];
    v8 = v6[8];
    v10 = *(a3 + 72);

    v11 = v9;
    v12 = v8;
    v13 = v10(a2, a3);
    LayerVisualEffect.unapply(to:)(v13);
  }

  return result;
}

uint64_t TextConfiguration.preferDisabledAnimations(whenUpdatingFrom:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCB48, &unk_1E1B4A700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4 - 8];
  v6 = type metadata accessor for TextConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1E1300B24(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7B68, &qword_1E1B285A0);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1E19D8C90(v5, v9, type metadata accessor for TextConfiguration);
    v12 = *(v6 + 40);
    v13 = *(v1 + v12);
    v14 = *&v9[v12];
    sub_1E13006E4(0, &qword_1EE1E3208, 0x1E69DC888);
    v15 = v13;
    v16 = v14;
    v17 = sub_1E1AF6D0C();
    sub_1E19D8CF8(v9, type metadata accessor for TextConfiguration);

    v18 = v17 ^ 1;
  }

  else
  {
    v18 = 1;
    v11(v5, 1, 1, v6);
    sub_1E1308058(v5, &qword_1ECEBCB48, &unk_1E1B4A700);
  }

  return v18 & 1;
}

uint64_t TextConfiguration.layout<A>(button:in:disableAnimations:)(void (*a1)(void, void), int a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9 = v8;
  v172 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v158 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v157 = &v150 - v17;
  v174 = sub_1E1AF745C();
  v18 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = swift_getAssociatedTypeWitness();
  v171 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v168 = &v150 - v21;
  v22 = sub_1E19D8214(a1, *&a7, *&a8, 0, v8);
  v24 = v23;
  v181.origin.x = a5;
  v181.origin.y = a6;
  v181.size.width = a7;
  v181.size.height = a8;
  MidX = CGRectGetMidX(v181);
  v165 = v22;
  v26 = MidX - v22 * 0.5;
  v162 = a5;
  v182.origin.x = a5;
  v182.origin.y = a6;
  v182.size.width = a7;
  v182.size.height = a8;
  MidY = CGRectGetMidY(v182);
  v164 = v24;
  v28 = MidY - v24 * 0.5;
  v177 = a3;
  _s11AppStoreKit17TextConfigurationV7reapply8colorsToyx_tAA23ConfigurableOfferButtonRzlF_0(a1, a3, a4);
  v29 = type metadata accessor for TextConfiguration(0);
  v30 = [a1 traitCollection];
  sub_1E16CAD98();

  v166 = v29;
  v31 = *(v29 + 32);
  v170 = v9;
  v32 = *(v9 + v31 + 8);
  v33 = MEMORY[0x1E69E7040];
  v176 = a1;
  v169 = LOBYTE(v178[0]);
  if (!v32)
  {
    v70 = *(v18 + 104);
    v71 = *MEMORY[0x1E69E7040];
    v72 = 0.0;
    v167 = 0.0;
    v162 = 0.0;
    v160 = 0.0;
    v73 = v174;
    v74 = v18;
    v75 = v161;
    v37 = v168;
    v76 = v165;
    v77 = v164;
    goto LABEL_28;
  }

  v156 = v26;
  v175 = v18;
  if ((v178[0] & 0xFE) == 2)
  {
    v34 = [a1 traitCollection];
    sub_1E1AF698C();
  }

  v35 = v168;
  (*(a4 + 88))(v177, a4);
  v36 = v161;
  v37 = v35;
  swift_getAssociatedConformanceWitness();
  sub_1E1AF11CC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  (*(v171 + 8))(v35, v36);
  v46 = *v33;
  v47 = v175;
  v48 = *(v175 + 104);
  v155 = v46;
  v49 = v174;
  v173 = v48;
  v48(v20);
  v154 = v39;
  v160 = v41;
  v50 = CGSize.rounded(_:)(v20, v39, v41);
  v167 = v51;
  (*(v47 + 8))(v20, v49);
  v52 = v170 + *(v166 + 20);
  v53 = type metadata accessor for OfferButtonMetrics(0);
  sub_1E1300B24(&v52[*(v53 + 24)], v178);
  v54 = [a1 &selRef_userInterfaceIdiom];
  v55 = [v54 layoutDirection];

  v163 = v50;
  if (v55 != 1)
  {
    v56 = v169;
    if (v169 > 1)
    {
      v152 = v43;
      v153 = v45;
      v57 = v162;
      if (v169 != 2)
      {
        goto LABEL_7;
      }

LABEL_15:
      v189.origin.x = v57;
      v189.origin.y = a6;
      v189.size.width = a7;
      v189.size.height = a8;
      MaxX = CGRectGetMaxX(v189);
      v190.origin.x = v156;
      v190.origin.y = v28;
      v89 = v165;
      v190.size.width = v165;
      v90 = v164;
      v190.size.height = v164;
      Width = CGRectGetWidth(v190);
      v191.origin.y = a6;
      v92 = v28;
      v93 = MaxX - Width;
      v76 = v89;
      v191.origin.x = v57;
      v191.size.width = a7;
      v77 = v90;
      v191.size.height = a8;
      v94 = CGRectGetMidY(v191);
      v26 = v93;
      v192.origin.x = v93;
      v28 = v92;
      v192.origin.y = v92;
      v192.size.width = v89;
      v192.size.height = v77;
      if (CGRectGetHeight(v192) >= v167)
      {
        v95 = v94 + v167 * -0.5;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1Tm(v178, v179);
        sub_1E1AF12FC();
      }

      v160 = v95;
      v74 = v175;
      v70 = v173;
      v72 = v163;
      v71 = v155;
      v202.origin.x = v26;
      v202.origin.y = v92;
      v202.size.width = v89;
      v202.size.height = v77;
      v162 = CGRectGetMinX(v202) - (v72 + 6.0);
      goto LABEL_27;
    }

LABEL_11:
    v78 = a6;
    v79 = v28;
    if (v56)
    {
      __swift_project_boxed_opaque_existential_1Tm(v178, v179);
      sub_1E1AF12FC();
      v97 = v96;
      v193.origin.x = v162;
      v160 = v78;
      v193.origin.y = v78;
      v193.size.width = a7;
      v193.size.height = a8;
      MaxY = CGRectGetMaxY(v193);
      v99 = v156;
      v194.origin.x = v156;
      v194.origin.y = v79;
      v100 = v165;
      v194.size.width = v165;
      v101 = v164;
      v194.size.height = v164;
      v102 = MaxY - CGRectGetMaxY(v194);
      v154 = v97;
      if (v102 < v167 + v97)
      {
        v195.origin.x = v99;
        v195.origin.y = v79;
        v195.size.width = v100;
        v195.size.height = v101;
        v103 = v167 + v97;
        v104 = v103 + CGRectGetHeight(v195);
        v196.origin.x = v162;
        v196.origin.y = v160;
        v196.size.width = a7;
        v196.size.height = a8;
        v79 = CGRectGetMidY(v196) + v104 * -0.5;
      }

      v74 = v175;
      v70 = v173;
      v26 = v99;
      v71 = v155;
      v197.origin.x = v162;
      v197.origin.y = v160;
      v197.size.width = a7;
      v197.size.height = a8;
      v105 = CGRectGetMidX(v197);
      v106 = v163;
      v162 = v105 + v163 * -0.5;
      v198.origin.x = v26;
      v198.origin.y = v79;
      v198.size.width = v100;
      v198.size.height = v101;
      v160 = v154 + CGRectGetMaxY(v198);
      v76 = v100;
      v77 = v101;
      v72 = v106;
    }

    else
    {
      v26 = v156;
      v185.origin.x = v156;
      v185.origin.y = v28;
      v185.size.width = v165;
      v185.size.height = v164;
      MinY = CGRectGetMinY(v185);
      v81 = v162;
      v186.origin.x = v162;
      v82 = v78;
      v186.origin.y = v78;
      v186.size.width = a7;
      v186.size.height = a8;
      v83 = MinY - CGRectGetMinY(v186);
      v84 = v167 + *v170;
      v74 = v175;
      v70 = v173;
      v71 = v155;
      if (v83 >= v84)
      {
        v72 = v163;
      }

      else
      {
        v187.origin.x = v26;
        v187.origin.y = v79;
        v187.size.width = v165;
        v187.size.height = v164;
        v85 = v84 + CGRectGetHeight(v187);
        v188.origin.x = v81;
        v188.origin.y = v82;
        v188.size.width = a7;
        v188.size.height = a8;
        v86 = CGRectGetMidY(v188);
        v87 = v85 * -0.5;
        v72 = v163;
        v79 = v84 + v86 + v87;
      }

      v201.origin.x = v81;
      v201.origin.y = v82;
      v201.size.width = a7;
      v201.size.height = a8;
      v162 = CGRectGetMidX(v201) + v72 * -0.5;
      v160 = v79 - v84;
      v76 = v165;
      v77 = v164;
    }

    v28 = v79;
    goto LABEL_27;
  }

  v56 = v169;
  if (v169 <= 1)
  {
    goto LABEL_11;
  }

  v152 = v43;
  v153 = v45;
  v57 = v162;
  if (v169 != 2)
  {
    goto LABEL_15;
  }

LABEL_7:
  v183.origin.y = a6;
  v151 = v28;
  v183.origin.x = v57;
  v183.size.width = a7;
  v183.size.height = a8;
  v58 = CGRectGetMidY(v183);
  v59 = (*(a4 + 72))(v177, a4);
  [v59 frame];
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;

  v184.origin.x = v61;
  v184.origin.y = v63;
  v184.size.width = v65;
  v184.size.height = v67;
  v68 = v167;
  if (CGRectGetHeight(v184) >= v68)
  {
    v69 = v58 + v68 * -0.5;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v178, v179);
    sub_1E1AF12FC();
  }

  v160 = v69;
  v74 = v175;
  v72 = v163;
  v70 = v173;
  v107 = v156;
  v71 = v155;
  v199.origin.x = v162;
  v199.origin.y = a6;
  v199.size.width = a7;
  v199.size.height = a8;
  v108 = CGRectGetMaxX(v199) - v72;
  v200.origin.x = v107;
  v28 = v151;
  v200.origin.y = v151;
  v76 = v165;
  v200.size.width = v165;
  v77 = v164;
  v200.size.height = v164;
  v109 = CGRectGetWidth(v200);
  v162 = v108;
  v26 = v108 - (v109 + 6.0);
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v178);
  v75 = v36;
  v73 = v174;
LABEL_28:
  LODWORD(v164) = *MEMORY[0x1E69E7048];
  v70(v20);
  v110 = CGPoint.rounded(_:)(v20, v26, v28);
  v112 = v111;
  v113 = *(v74 + 8);
  v113(v20, v73);
  v173 = v70;
  *&v165 = v74 + 104;
  (v70)(v20, v71, v73);
  v114 = CGSize.rounded(_:)(v20, v76, v77);
  v116 = v115;
  v175 = v74 + 8;
  v113(v20, v73);
  v179 = &type metadata for Feature;
  v117 = sub_1E1309EB0();
  v180 = v117;
  LOBYTE(v178[0]) = 17;
  sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v178);
  (*(a4 + 80))(v177, a4);
  swift_getAssociatedConformanceWitness();
  v171 += 8;
  v118 = v75;
  sub_1E1AF116C();
  v161 = *v171;
  (v161)(v37, v75);
  v119 = *(v170 + *(v166 + 28));
  if (v119)
  {
    v163 = v72;
    v120 = v119;
    [v120 size];
    v122 = v121;
    v124 = v123;
    v179 = &type metadata for Feature;
    v180 = v117;
    LOBYTE(v178[0]) = 17;
    v125 = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(v178);
    v126 = v110;
    v127 = v112;
    v128 = v114;
    v129 = v116;
    if (v125)
    {
      v130 = (CGRectGetWidth(*&v126) - v122) * 0.5;
      v203.origin.x = v110;
      v203.origin.y = v112;
      v203.size.width = v114;
      v203.size.height = v116;
      v131 = (CGRectGetHeight(v203) - v124) * 0.5;
    }

    else
    {
      v130 = CGRectGetMidX(*&v126) - v122 * 0.5;
      v204.origin.x = v110;
      v204.origin.y = v112;
      v204.size.width = v114;
      v204.size.height = v116;
      v131 = CGRectGetMidY(v204) - v124 * 0.5;
    }

    v132 = v174;
    (v173)(v20, LODWORD(v164), v174);
    CGPoint.rounded(_:)(v20, v130, v131);
    v113(v20, v132);
    v133 = v157;
    (*(a4 + 96))(v177, a4);
    v134 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    sub_1E1AF116C();

    (*(v158 + 8))(v133, v134);
    v37 = v168;
  }

  if (v172)
  {
    v135 = objc_opt_self();
    [v135 begin];
    [v135 setDisableActions_];
  }

  v136 = v37;
  v179 = &type metadata for Feature;
  v180 = v117;
  LOBYTE(v178[0]) = 17;
  v137 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v178);
  v138 = v118;
  if (v137)
  {
    v139 = v177;
    v140 = (*(a4 + 192))(v177, a4);
    [v140 setFrame_];

    v141 = (*(a4 + 72))(v139, a4);
  }

  else
  {
    v141 = (*(a4 + 72))(v177, a4);
  }

  [v141 setFrame_];

  if (v172)
  {
    [objc_opt_self() commit];
  }

  v142 = *(a4 + 88);
  v144 = v176;
  v143 = v177;
  v142(v177, a4);
  v145 = v174;
  (v173)(v20, LODWORD(v164), v174);
  CGPoint.rounded(_:)(v20, v162, v160);
  v113(v20, v145);
  swift_getAssociatedConformanceWitness();
  sub_1E1AF116C();
  v146 = v161;
  (v161)(v136, v138);
  v142(v143, a4);
  LOBYTE(v178[0]) = v169;
  v147 = sub_1E148BE74(v178, v144);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v147, v138, AssociatedConformanceWitness);
  return v146(v136, v138);
}

id sub_1E19D7E98()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EE1F07C8 = result;
  return result;
}

uint64_t sub_1E19D7F74(uint64_t a1)
{
  swift_getObjectType();
  sub_1E13BFF54(a1, v12);
  if (!v13)
  {
    sub_1E1308058(v12, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v9 = 0;
    return v9 & 1;
  }

  if ((MEMORY[0x1E68F9D60](v1 + OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_fontSource, &v11[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_fontSource]) & 1) == 0 || (*(v1 + OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text) == *&v11[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text] ? (v3 = *(v1 + OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text + 8) == *&v11[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text + 8]) : (v3 = 0), !v3 && (sub_1E1AF74AC() & 1) == 0))
  {

    goto LABEL_16;
  }

  v4 = sub_1E1AF5DFC();
  v6 = v5;
  if (v4 == sub_1E1AF5DFC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

double sub_1E19D8214(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v76 = a4;
  v72 = a2;
  v7 = sub_1E1AF105C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TextConfiguration(0);
  v15 = v14;
  v16 = (a5 + v14[6]);
  v17 = *v16;
  v18 = v16[1];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v36 = *(a5 + v14[7]);
    if (v36)
    {
      v37 = v12;
      v27 = v36;
      [v27 size];
      v39 = v38;
      v41 = v40;
      if (v76)
      {
        v42 = v15[5];
      }

      else
      {
        v42 = v15[5];
        v60 = type metadata accessor for OfferButtonMetrics(0);
        if (*(a5 + v42 + *(v60 + 76)) == 1)
        {
          v61 = v60;
          v62 = *&v72;
LABEL_26:
          v64 = a5 + v42;
          type metadata accessor for OfferButtonMetrics(0);
          v65 = v41 + *(v64 + *(v61 + 28)) + *(v64 + *(v61 + 28) + 16);
          v66 = (v64 + *(v61 + 52));
          if (v62 > *v66)
          {
            v56 = v62;
          }

          else
          {
            v56 = *v66;
          }

          if (v65 > v66[1])
          {
            v57 = v65;
          }

          else
          {
            v57 = v66[1];
          }

          v58 = *MEMORY[0x1E69E7040];
          v34 = v37;
          v59 = v37;
          goto LABEL_33;
        }
      }

      v61 = type metadata accessor for OfferButtonMetrics(0);
      v63 = a5 + v42 + *(v61 + 28);
      v62 = v39 + *(v63 + 8) + *(v63 + 24);
      goto LABEL_26;
    }
  }

  v74 = v12;
  v75 = v11;
  v20 = a5 + v14[5];
  v21 = *(v8 + 16);
  v73 = v20;
  v21(v10);

  v71 = a1;
  v22 = [a1 traitCollection];
  v23 = [v22 preferredContentSizeCategory];

  v24 = type metadata accessor for TextConfiguration.CacheKey(0);
  v25 = objc_allocWithZone(v24);
  (v21)(&v25[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_fontSource], v10, v7);
  v26 = &v25[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text];
  *v26 = v17;
  *(v26 + 1) = v18;
  *&v25[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_contentSizeCategory] = v23;
  v88.receiver = v25;
  v88.super_class = v24;
  v27 = objc_msgSendSuper2(&v88, sel_init);
  (*(v8 + 8))(v10, v7);
  if (qword_1EE1F07C0 != -1)
  {
    swift_once();
  }

  v28 = [qword_1EE1F07C8 objectForKey_];
  if (v28)
  {
    v29 = v28;
    [v28 CGSizeValue];
    v31 = v30;
    v33 = v32;

    v11 = v75;
    v34 = v74;
    v35 = v73;
  }

  else
  {
    v43 = v71;
    v44 = [v71 traitCollection];
    v35 = v73;
    v45 = sub_1E1AF104C();

    *(&v84 + 1) = &type metadata for Feature;
    *&v85 = sub_1E1309EB0();
    LOBYTE(v83) = 5;

    v46 = v45;
    LOBYTE(v45) = sub_1E1AF056C();
    __swift_destroy_boxed_opaque_existential_1(&v83);
    *&v83 = v17;
    *(&v83 + 1) = v18;
    LOBYTE(v84) = 0;
    *(&v84 + 1) = v46;
    v85 = xmmword_1E1B41CE0;
    v86 = xmmword_1E1B04490;
    LOBYTE(v87) = 0;
    HIBYTE(v87) = v45 & 1;
    v80 = xmmword_1E1B41CE0;
    v81 = xmmword_1E1B04490;
    v82 = v87;
    v79 = v84;
    v78 = v83;
    v47 = [v43 traitCollection];
    v31 = LabelPlaceholderCompatibility.measurements(fitting:with:)(v47, 1.79769313e308, 1.79769313e308);
    v33 = v48;

    v49 = [objc_opt_self() valueWithCGSize_];
    v50 = qword_1EE1F07C8;
    [v50 setObject:v49 forKey:v27];

    sub_1E180E4CC(&v83);
    v11 = v75;
    v34 = v74;
  }

  if ((v76 & 1) != 0 || (v51 = type metadata accessor for OfferButtonMetrics(0), *(v35 + *(v51 + 76)) != 1))
  {
    v52 = type metadata accessor for OfferButtonMetrics(0);
    v53 = v31 + *(v35 + *(v52 + 28) + 8) + *(v35 + *(v52 + 28) + 24);
  }

  else
  {
    v52 = v51;
    v53 = *&v72;
  }

  type metadata accessor for OfferButtonMetrics(0);
  v54 = v33 + *(v35 + *(v52 + 28)) + *(v35 + *(v52 + 28) + 16);
  v55 = (v35 + *(v52 + 52));
  if (v53 > *v55)
  {
    v56 = v53;
  }

  else
  {
    v56 = *v55;
  }

  if (v54 > v55[1])
  {
    v57 = v54;
  }

  else
  {
    v57 = v55[1];
  }

  v58 = *MEMORY[0x1E69E7040];
  v59 = v34;
LABEL_33:
  v67 = v77;
  (*(v59 + 104))(v77, v58, v11);
  v68 = CGSize.rounded(_:)(v67, v56, v57);

  (*(v34 + 8))(v67, v11);
  return v68;
}

uint64_t _s11AppStoreKit22TextConfigurationThemeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v45 = a1[6];
  v46 = a1[5];
  v47 = a1[7];
  v48 = a1[8];
  v49 = a1[4];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v41 = a2[6];
  v42 = a2[5];
  v43 = a2[7];
  v44 = a2[8];
  v39 = *(a2 + 72);
  v40 = *(a1 + 72);
  sub_1E13006E4(0, &qword_1EE1E31E0, 0x1E69E58C0);
  if ((sub_1E1AF6D0C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v5;
  v11 = sub_1E1AF6D0C();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v4;
  v13 = v7;
  v14 = sub_1E1AF6D0C();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v3;
  v16 = v6;
  v17 = sub_1E1AF6D0C();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v49;
  v19 = v8;
  v20 = sub_1E1AF6D0C();

  if ((v20 & 1) == 0)
  {
    return 0;
  }

  if (!v45)
  {
    v22 = v47;
    v21 = v48;
    v23 = v46;
    v25 = v43;
    v24 = v44;
    v27 = v41;
    v26 = v42;
    if (!v41)
    {
      sub_1E17A99EC(v46, 0, v47, v48);
      sub_1E17A99EC(v42, 0, v43, v44);
      sub_1E17AA878(v46, 0, v47, v48);
      return v40 ^ v39 ^ 1u;
    }

    goto LABEL_15;
  }

  v22 = v47;
  v21 = v48;
  v23 = v46;
  v25 = v43;
  v24 = v44;
  v27 = v41;
  v26 = v42;
  if (!v41)
  {
LABEL_15:
    sub_1E17A99EC(v23, v45, v22, v21);
    sub_1E17A99EC(v26, v27, v25, v24);
    sub_1E17AA878(v23, v45, v22, v21);
    v30 = v26;
    v31 = v27;
    v32 = v25;
    v33 = v24;
    goto LABEL_21;
  }

  if (v46 == v42 && v45 == v41 || (sub_1E1AF74AC() & 1) != 0)
  {
    sub_1E17A99EC(v46, v45, v47, v48);
    sub_1E17A99EC(v42, v41, v43, v44);
    sub_1E17A99EC(v46, v45, v47, v48);
    sub_1E17A99EC(v42, v41, v43, v44);
    if (sub_1E1AF6D0C())
    {
      v28 = v44;
      v29 = sub_1E1AF6D0C();
      sub_1E17AA878(v42, v41, v43, v44);
      sub_1E17AA878(v42, v41, v43, v44);
      sub_1E17AA878(v46, v45, v47, v48);

      sub_1E17AA878(v46, v45, v47, v48);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      return v40 ^ v39 ^ 1u;
    }

    sub_1E17AA878(v42, v41, v43, v44);
    sub_1E17AA878(v42, v41, v43, v44);
    v34 = v46;
    v35 = v45;
    v36 = v47;
    v37 = v48;
  }

  else
  {
    sub_1E17A99EC(v46, v45, v47, v48);
    sub_1E17A99EC(v42, v41, v43, v44);
    v34 = v42;
    v35 = v41;
    v36 = v43;
    v37 = v44;
  }

  sub_1E17AA878(v34, v35, v36, v37);
  v30 = v46;
  v31 = v45;
  v32 = v47;
  v33 = v48;
LABEL_21:
  sub_1E17AA878(v30, v31, v32, v33);
  return 0;
}

uint64_t sub_1E19D8C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E19D8CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E19D8D58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1E19D8DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E19D8E30(uint64_t a1)
{
  type metadata accessor for OfferButtonMetrics(319);
  if (v1 <= 0x3F)
  {
    sub_1E19D8F04(319);
    if (v2 <= 0x3F)
    {
      sub_1E14282AC();
      if (v3 <= 0x3F)
      {
        sub_1E19D8F6C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E19D8F04(uint64_t a1)
{
  if (!qword_1EE1D22B0)
  {
    sub_1E13006E4(255, &qword_1EE1D22C0, 0x1E69DCAB8);
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1D22B0);
    }
  }
}

void sub_1E19D8F6C(uint64_t a1)
{
  if (!qword_1EE1D97C0)
  {
    v2 = sub_1E148BEF0();
    v4 = type metadata accessor for AccessibilityConditional(a1, &type metadata for OfferButtonSubtitlePosition, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE1D97C0);
    }
  }
}

uint64_t sub_1E19D8FF0(uint64_t a1)
{
  result = sub_1E1AF105C();
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

double sub_1E19D90BC(uint64_t a1)
{
  v2 = v1;
  *(v2 + 104) = a1;

  v4 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(a1 + 16);
  v7 = *(v6 + 24);
  *&v16[0] = *(v6 + 16);
  *(&v16[0] + 1) = v7;
  v8 = *(v4 + 56);

  v8(v16, ObjectType, v4);
  v10 = v9;

  v11 = swift_getObjectType();
  (*(v10 + 16))(v15, v11, v10);
  sub_1E19D91CC(v15, 0, v12);
  v16[0] = v15[0];
  v16[1] = v15[1];
  v16[2] = v15[2];
  v16[3] = v15[3];
  sub_1E139CEA8(v16);
  v13 = sub_1E19D94C0();
  sub_1E19D9804(v13);
  swift_unknownObjectRelease();
  return result;
}

double sub_1E19D91CC(__int128 *a1, char a2, double result)
{
  v4 = *(v3 + 104);
  if (!v4)
  {
    return v17;
  }

  v5 = v3;
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v8 = a1[3];
  *v23 = a1[2];
  *&v23[16] = v8;
  ProductTopLockup.primaryBanner(for:)(&v21, v20);
  v9 = v20[0];
  if ((~v20[0] & 0xF000000000000007) == 0)
  {

LABEL_4:
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    goto LABEL_12;
  }

  if ((v20[0] & 0x8000000000000000) != 0)
  {
    v10 = v20[0] & 0x7FFFFFFFFFFFFFFFLL;
    v11 = *((v20[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x58);
    if (v11 == 1)
    {
    }

    else
    {
      v12 = *((v20[0] & 0x7FFFFFFFFFFFFFFFLL) + 0x50);
      v13 = objc_opt_self();
      sub_1E14FDDEC(v12, v11);

      sub_1E14FDDEC(v12, v11);
      v14 = sub_1E1AF620C();

      v15 = [v13 isCapableOfAction:v12 capabilities:v14];

      sub_1E14FDEA8(v12, v11);
      if (v15)
      {
        sub_1E19DA8EC(v9);
        goto LABEL_4;
      }
    }
  }

  else
  {

    v10 = v9;
  }

  sub_1E134E724(v10 + 104, &v21);
  sub_1E19DA8EC(v9);
  v25 = v21;
  v26 = v22;
  v27 = *v23;
LABEL_12:
  swift_beginAccess();
  sub_1E138853C(v5 + 64, &v21);
  sub_1E138853C(&v25, &v23[8]);
  if (*(&v22 + 1))
  {
    sub_1E138853C(&v21, v20);
    if (*&v23[32])
    {
      v18[0] = *&v23[8];
      v18[1] = *&v23[24];
      v19 = v24;
      v16 = MEMORY[0x1E68FFC60](v20, v18);
      sub_1E134B88C(v18);
      sub_1E134B88C(v20);
      sub_1E1308058(&v21, &unk_1ECEB5670, qword_1E1B03EC0);
      if (v16)
      {

LABEL_18:
        sub_1E1308058(&v25, &unk_1ECEB5670, qword_1E1B03EC0);
        return v17;
      }

      goto LABEL_21;
    }

    sub_1E134B88C(v20);
  }

  else if (!*&v23[32])
  {

    sub_1E1308058(&v21, &unk_1ECEB5670, qword_1E1B03EC0);
    goto LABEL_18;
  }

  sub_1E1308058(&v21, &qword_1ECEB3840, &qword_1E1B08420);
LABEL_21:
  swift_beginAccess();
  sub_1E19DA87C(&v25, v5 + 64);
  swift_endAccess();
  if (a2)
  {
    *&v21 = v4;
    sub_1E1AF35BC();
  }

  sub_1E1308058(&v25, &unk_1ECEB5670, qword_1E1B03EC0);

  return v17;
}

double sub_1E19D94C0()
{
  v1 = v0;
  v2 = v0[13];
  if (v2)
  {
    v3 = *(v2 + 16);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    v6 = v1 + 4;
    v7 = v1[4];
    v9 = v1 + 5;
    v8 = v1[5];

    if (v8)
    {
      if (v4)
      {
        if (v7 == v5 && v8 == v4)
        {
          v11 = 1;
        }

        else
        {
          v11 = sub_1E1AF74AC();
        }

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        v13 = v1[13];
        if (!v13)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_35;
          }

          v14 = 0;
          v12 = v4;
          goto LABEL_25;
        }

        v12 = v4;
        if (v13[16])
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    if (v4)
    {
      v12 = v4;
LABEL_13:

      v13 = v1[13];
      if (!v13)
      {
        goto LABEL_35;
      }

      v11 = 0;
      if (!v13[16])
      {
LABEL_22:
        if (!v13[17])
        {
          v14 = v13[18] != 0;
          if (((v11 ^ v14) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_25;
        }
      }

LABEL_23:
      if ((v11 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v5 = 0;
    v9 = v0 + 5;
    v6 = v0 + 4;
    if (v0[5])
    {
LABEL_10:
      v12 = 0;
      goto LABEL_13;
    }
  }

  v12 = 0;
  v13 = v1[13];
  if (v13)
  {
    v11 = 1;
    if (!v13[16])
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_24:
  v14 = 0;
LABEL_25:
  v15 = *v9;
  if (*v9)
  {
    v35 = v12;
    v16 = v6;
    v18 = v1[3];
    v17 = v1[4];
    v34 = v14;
    ObjectType = swift_getObjectType();
    v36 = v17;
    v37 = v15;
    v20 = v5;
    v21 = *(v18 + 56);

    v21(&v36, ObjectType, v18);
    v6 = v16;
    v12 = v35;
    v5 = v20;
    v23 = v22;

    v24 = swift_getObjectType();
    (*(v23 + 80))(v1, v24, v23);
    swift_unknownObjectRelease();
    v14 = v34;
  }

  if (v14)
  {
    if (v12)
    {
      v25 = v1[3];
      v26 = swift_getObjectType();
      v36 = v5;
      v37 = v12;
      v27 = *(v25 + 56);

      v27(&v36, v26, v25);
      v29 = v28;

      v30 = swift_getObjectType();
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = *(v29 + 72);

      v32(v1, sub_1E19DA904, v31, v30, v29);

      swift_unknownObjectRelease();
      v1[4] = v5;
      v1[5] = v12;
      goto LABEL_35;
    }
  }

  else
  {
  }

  *v6 = 0;
  *v9 = 0;
LABEL_35:

  return result;
}

double sub_1E19D9804(double result)
{
  v2 = v1[13];
  if (!v2)
  {
    return v22;
  }

  v3 = v1;
  v4 = *v1;
  v5 = *(v2 + 16);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v1[3];
  ObjectType = swift_getObjectType();
  *&v34 = v7;
  *(&v34 + 1) = v6;
  v10 = *(v8 + 56);

  v10(&v34, ObjectType, v8);
  v12 = v11;

  if (v1[13])
  {
    v13 = swift_getObjectType();
    v14 = *(v12 + 16);

    v14(v33, v13, v12);
    ProductTopLockup.primaryBanner(for:)(v33, &v38);

    v34 = v33[0];
    v35 = v33[1];
    v36 = v33[2];
    v37 = v33[3];
    sub_1E139CEA8(&v34);
    v32 = v38;
    if ((~v38 & 0xF000000000000007) == 0 || (v38 & 0x8000000000000000) == 0 || *((v38 & 0x7FFFFFFFFFFFFFFFLL) + 0x58) == 1)
    {
      v15 = 0;
      v16 = v1[6];
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_12:
      v31 = v4;
      if (v15)
      {
        goto LABEL_21;
      }

LABEL_27:
      sub_1E19DA8EC(v32);
      swift_unknownObjectRelease();
      return v22;
    }

    v15 = *MEMORY[0x1E698B430];
    v29 = *MEMORY[0x1E698B430];
    v16 = v1[6];
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = 0;
    v32 = 0xF000000000000007;
    v16 = v1[6];
    if (!v16)
    {
      goto LABEL_12;
    }
  }

LABEL_7:
  if (v15)
  {
    v17 = sub_1E1AF5DFC();
    v19 = v18;
    if (v17 == sub_1E1AF5DFC() && v19 == v20)
    {

LABEL_16:
      sub_1E19DA8EC(v32);
      swift_unknownObjectRelease();

      return v22;
    }

    v21 = sub_1E1AF74AC();

    if (v21)
    {
      goto LABEL_16;
    }

    v31 = v4;
    v16 = v3[6];
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = v4;
  }

  v23 = qword_1EE1D2778;
  v30 = v16;
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1E1AF591C();
  __swift_project_value_buffer(v24, qword_1EE1D2780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  MetatypeMetadata = swift_getMetatypeMetadata();
  *(&v35 + 1) = MetatypeMetadata;
  *&v34 = v31;
  sub_1E1AF38BC();
  sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  [v3[7] removeObserver:v3 name:v30 object:0];

  if (!v15)
  {
    v28 = v3[6];
    v3[6] = 0;

    if (qword_1EE1D2778 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v24, qword_1EE1D2780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    *(&v35 + 1) = MetatypeMetadata;
    *&v34 = v31;
    sub_1E1AF38BC();
    sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    goto LABEL_27;
  }

LABEL_21:
  if (qword_1EE1D2778 != -1)
  {
    swift_once();
  }

  v26 = sub_1E1AF591C();
  __swift_project_value_buffer(v26, qword_1EE1D2780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  *(&v35 + 1) = swift_getMetatypeMetadata();
  *&v34 = v31;
  sub_1E1AF38BC();
  sub_1E1308058(&v34, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF382C();
  sub_1E1AF548C();

  [v3[7] addObserver:v3 selector:sel_bannerHideCriteriaDidChange_ name:v15 object:0];
  sub_1E19DA8EC(v32);
  swift_unknownObjectRelease();
  v27 = v3[6];
  v3[6] = v15;

  return v22;
}

uint64_t sub_1E19D9E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v7, ObjectType, a2);
    sub_1E19D91CC(v7, 1, v6);

    v8[0] = v7[0];
    v8[1] = v7[1];
    v8[2] = v7[2];
    v8[3] = v7[3];
    return sub_1E139CEA8(v8);
  }

  return result;
}

id sub_1E19D9F40(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v44 = *v1;
  v3 = sub_1E1AF320C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AEF55C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v14 = v2[13];
    if (v14)
    {
      v15 = qword_1EE1D2778;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1E1AF591C();
      __swift_project_value_buffer(v16, qword_1EE1D2780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      v17 = v44;
      *(&v47 + 1) = swift_getMetatypeMetadata();
      *&aBlock = v17;
      sub_1E1AF38BC();
      sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF382C();
      sub_1E1AF548C();

      v18 = v2[3];
      ObjectType = swift_getObjectType();
      v20 = *(v14 + 16);
      v21 = *(v20 + 24);
      *&aBlock = *(v20 + 16);
      *(&aBlock + 1) = v21;
      v22 = *(v18 + 56);

      v22(&aBlock, ObjectType, v18);
      v24 = v23;

      v25 = swift_getObjectType();
      (*(v24 + 16))(v45, v25, v24);
      swift_unknownObjectRelease();
      sub_1E19D91CC(v45, 1, v26);

      aBlock = v45[0];
      v47 = v45[1];
      v48 = v45[2];
      v49 = v45[3];
      return sub_1E139CEA8(&aBlock);
    }
  }

  else
  {
    v37 = v9;
    v38 = v6;
    v39 = v7;
    v40 = v4;
    v41 = v3;
    if (qword_1EE1D2778 != -1)
    {
      swift_once();
    }

    v27 = sub_1E1AF591C();
    v36[1] = __swift_project_value_buffer(v27, qword_1EE1D2780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
    v28 = v44;
    *(&v47 + 1) = swift_getMetatypeMetadata();
    *&aBlock = v28;
    sub_1E1AF38BC();
    sub_1E1308058(&aBlock, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E1361A80();
    v29 = sub_1E1AF68EC();
    (*(v11 + 16))(v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v10);
    v30 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    (*(v11 + 32))(v31 + v30, v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *&v48 = sub_1E19DA818;
    *(&v48 + 1) = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_1E1302D64;
    *(&v47 + 1) = &block_descriptor_97;
    v32 = _Block_copy(&aBlock);

    v33 = v37;
    sub_1E1AF322C();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
    sub_1E13FE650();
    v34 = v38;
    v35 = v41;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v33, v34, v32);
    _Block_release(v32);

    (*(v40 + 8))(v34, v35);
    return (*(v43 + 8))(v33, v39);
  }

  return result;
}

uint64_t sub_1E19DA77C()
{
  swift_unknownObjectRelease();

  sub_1E1308058(v0 + 64, &unk_1ECEB5670, qword_1E1B03EC0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19DA87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5670, qword_1E1B03EC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1E19DA8EC(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1E19DA90C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = [objc_opt_self() defaultCenter];
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBC70, &unk_1E1B48438);
  swift_allocObject();
  *(v2 + 112) = sub_1E1AF35CC();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();
  sub_1E19D94C0();
  return v2;
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 8);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 32);
      swift_unknownObjectRetain();
      v11(_, willDecelerate, ObjectType, v9);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

Swift::Void __swiftcall CompoundScrollObserver.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

void CompoundScrollObserver.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11AppStoreKit22CompoundScrollObserver_children;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {

    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(a1, a2, ObjectType, v13, a3, a4);
      swift_unknownObjectRelease();
      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

double sub_1E19DB170(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DB2FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DB4A4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DB5FC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DB744(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DB8DC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DBA70(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DBBB4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DBCCC(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DBE10(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DBF18(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DC090(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DC1C4(uint64_t a1, unsigned __int8 a2)
{
  sub_1E1AF5F0C();

  return result;
}

double sub_1E19DC324(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E13BC260(a2, a3);
  sub_1E1AF5F0C();

  return result;
}

void StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a11)
{
  v18 = a1[1];
  *a9 = *a1;
  a9[1] = v18;
  v19 = type metadata accessor for StoreTab(0);
  sub_1E1307FE8(a2, a9 + v19[6]);
  v20 = (a9 + v19[7]);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a9 + v19[9]);
  *v21 = a5;
  v21[1] = a6;
  if (a8)
  {
    sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
    v22 = a7;
  }

  else
  {
    StoreTab.Identifier.rawValue.getter();
    sub_1E13B8AA4();
    v22 = sub_1E1AF6DDC();
    a8 = v23;
    sub_1E1308058(a2, &unk_1ECEB4B60, &unk_1E1B02620);
  }

  a9[2] = v22;
  a9[3] = a8;
  *(a9 + v19[8]) = a11;
}

uint64_t type metadata accessor for StoreTab(uint64_t a1)
{
  result = qword_1EE1F89E8;
  if (!qword_1EE1F89E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E19DC668@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_1E1AF6FEC();
      MEMORY[0x1E68FECA0](0xD000000000000025, 0x80000001E1B83600);
      MEMORY[0x1E68FECA0](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_1E1AF6FEC();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x1E68FECA0](v7, v8);
    sub_1E1AEFCAC();
  }

  else
  {
    v9 = sub_1E1AEFCCC();
    v10 = *(*(v9 - 8) + 56);

    v10(a4, 1, 1, v9);
  }

  return result;
}

double sub_1E19DC7F0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a3)
    {
      sub_1E1AF6FEC();
      MEMORY[0x1E68FECA0](0xD000000000000023, 0x80000001E1B83630);
      MEMORY[0x1E68FECA0](a1, a2);
      v7 = 0x6461637241736926;
      v8 = 0xEE00657572743D65;
    }

    else
    {
      sub_1E1AF6FEC();

      v7 = a1;
      v8 = a2;
    }

    MEMORY[0x1E68FECA0](v7, v8);
    sub_1E1AEFCAC();
  }

  else
  {
    v9 = sub_1E1AEFCCC();
    v10 = *(*(v9 - 8) + 56);

    v10(a4, 1, 1, v9);
  }

  return result;
}

double StoreTab.identifier.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1E13BC260(v2, v3);
}

uint64_t StoreTab.pageContext.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StoreTab.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 4)
  {
    if (v2 <= 7)
    {
      if (v2 == 5)
      {
        v3 = 0x656461637261;
      }

      else if (v2 == 6)
      {
        v3 = 0x6465727574616566;
      }

      else
      {
        v3 = 0x69726F6765746163;
      }

      goto LABEL_25;
    }

    switch(v2)
    {
      case 8:
        v3 = 0x737472616863;
        goto LABEL_25;
      case 9:
        v3 = 0x6573616863727570;
        goto LABEL_25;
      case 10:
        v3 = 0x64616F6C6E776F64;
        goto LABEL_25;
    }

LABEL_24:
    v3 = *v0;
    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x7961646F74;
      goto LABEL_25;
    }

    if (v2 == 1)
    {
      v3 = 0x73656D6167;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v2 == 2)
  {
    v3 = 1936748641;
  }

  else if (v2 == 3)
  {
    v3 = 0x73657461647075;
  }

  else
  {
    v3 = 0x686372616573;
  }

LABEL_25:
  sub_1E13BC260(v1, v2);
  return v3;
}

uint64_t StoreTab.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StoreTab(0) + 24);

  return sub_1E1307FE8(v3, a1);
}

uint64_t StoreTab.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab(0) + 28));

  return v1;
}

double StoreTab.editorialPageUrls.getter()
{
  type metadata accessor for StoreTab(0);

  return result;
}

uint64_t StoreTab.imageIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoreTab(0) + 36));

  return v1;
}

uint64_t StoreTab.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v84 = a2;
  v89 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - v22;
  sub_1E1AF381C();
  sub_1E19DD434();
  v24 = v83;
  sub_1E1AF36AC();
  if (v24)
  {
    v25 = sub_1E1AF39DC();
    (*(*(v25 - 8) + 8))(v84, v25);
    v26 = *(v10 + 8);
    v26(a1, v9);
    return (v26)(v23, v9);
  }

  else
  {
    v75 = v15;
    v73 = v12;
    v77 = v8;
    v83 = 0;
    v29 = *(v10 + 8);
    v28 = v10 + 8;
    v29(v23, v9);
    v30 = v87;
    v31 = v88;
    v32 = v89;
    *v89 = v87;
    v32[1] = v31;
    v74 = v30;
    v80 = v31;
    sub_1E13BC260(v30, v31);
    v33 = a1;
    sub_1E1AF381C();
    v34 = type metadata accessor for StoreTab(0);
    sub_1E1AF36FC();
    v35 = v29;
    v29(v20, v9);
    sub_1E1AF381C();
    v36 = sub_1E1AF37CC();
    v38 = v37;
    v29(v20, v9);
    v39 = (v32 + *(v34 + 28));
    *v39 = v36;
    v39[1] = v38;
    sub_1E1AF381C();
    v40 = sub_1E1AF37CC();
    v42 = v41;
    v29(v20, v9);
    v78 = v34;
    v43 = (v32 + *(v34 + 36));
    *v43 = v40;
    v43[1] = v42;
    v44 = v82;
    sub_1E1AF381C();
    v45 = sub_1E1AF37CC();
    v47 = v46;
    v29(v44, v9);
    v82 = v9;
    if (v47)
    {
      v48 = v77;
      v49 = v74;
    }

    else
    {
      v49 = v74;
      v87 = v74;
      v88 = v80;
      v85 = StoreTab.Identifier.rawValue.getter();
      v86 = v50;
      sub_1E13B8AA4();
      v45 = sub_1E1AF6DDC();
      v47 = v51;

      v48 = v77;
    }

    v52 = v89;
    v89[2] = v45;
    v52[3] = v47;
    v53 = v80;
    v87 = v49;
    v88 = v80;
    v54 = StoreTab.Identifier.rawValue.getter();
    v56 = v55;
    sub_1E14B175C(v49, v53);
    if (v54 == 0x656461637261 && v56 == 0xE600000000000000)
    {

      LODWORD(v77) = 1;
    }

    else
    {
      LODWORD(v77) = sub_1E1AF74AC();
    }

    v57 = v75;
    sub_1E1AF381C();
    sub_1E1AF368C();
    v58 = v82;
    v35(v57, v82);
    v59 = sub_1E1AF40DC();
    v60 = *(v59 - 8);
    v80 = v28;
    v61 = v35;
    v62 = *(v60 + 48);
    v63 = v62(v48, 1, v59);
    v79 = v61;
    v76 = v33;
    if (v63 == 1)
    {
      sub_1E1308058(v48, &qword_1ECEB2B28, qword_1E1B03BE0);
      v64 = v73;
      sub_1E1AF381C();
      v65 = v81;
      sub_1E1AF368C();
      v61(v64, v58);
      v66 = v62(v65, 1, v59);
      if (v66 == 1)
      {
        sub_1E1308058(v65, &qword_1ECEB2B28, qword_1E1B03BE0);
        v67 = sub_1E15A1700(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v66);
        *(&v73 - 16) = v77 & 1;
        sub_1E1AEFCCC();
        sub_1E19DE5B4();
        v71 = v83;
        v67 = sub_1E1AF40AC();
        v83 = v71;
        (*(v60 + 8))(v65, v59);
      }

      v69 = v84;
      v70 = v89;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v63);
      *(&v73 - 16) = v77 & 1;
      sub_1E1AEFCCC();
      sub_1E19DE5B4();
      v68 = v83;
      v67 = sub_1E1AF40AC();
      v83 = v68;
      (*(v60 + 8))(v48, v59);
      v69 = v84;
      v70 = v89;
    }

    v72 = sub_1E1AF39DC();
    (*(*(v72 - 8) + 8))(v69, v72);
    result = v79(v76, v82);
    *(v70 + *(v78 + 32)) = v67;
  }

  return result;
}

unint64_t sub_1E19DD434()
{
  result = qword_1EE1E0F50;
  if (!qword_1EE1E0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0F50);
  }

  return result;
}

uint64_t sub_1E19DD488@<X0>(void (*a3)(uint64_t)@<X4>, _BYTE *a4@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_1E1AF72FC();

  if (v12 > 2)
  {
    goto LABEL_4;
  }

  v13 = sub_1E1AF37CC();
  v20(v13);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E1308058(v7, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_4:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF0, &qword_1E1B19B80);
    return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5DF0, &qword_1E1B19B80);
  v18 = *(v17 + 48);
  *a4 = v12;
  v16(&a4[v18], v11, v8);
  return (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
}

uint64_t StoreTab.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1E13BC260(*v2, *(v2 + 8));
  sub_1E1AF5F0C();

  sub_1E1AF5F0C();
  v11 = type metadata accessor for StoreTab(0);
  sub_1E1307FE8(v2 + v11[6], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1E1AF764C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1E1AF764C();
    sub_1E19DE7CC(&qword_1EE1E2330, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E1AF5D1C();
    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + v11[7] + 8))
  {
    sub_1E1AF764C();
    sub_1E1AF5F0C();
  }

  else
  {
    sub_1E1AF764C();
  }

  sub_1E19DDC2C(a1, *(v2 + v11[8]));
  if (!*(v2 + v11[9] + 8))
  {
    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  return sub_1E1AF5F0C();
}

uint64_t StoreTab.hashValue.getter()
{
  sub_1E1AF762C();
  StoreTab.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E19DDB80@<X0>(uint64_t *a1@<X8>)
{
  result = StoreTab.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E19DDBA8()
{
  sub_1E1AF762C();
  StoreTab.hash(into:)(v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E19DDBEC(uint64_t a1)
{
  sub_1E1AF762C();
  StoreTab.hash(into:)(v2);
  return sub_1E1AF767C();
}

void sub_1E19DDC2C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E50, &qword_1E1B121D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = *(a2 + 64);
  v38 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v39 = v4 + 16;
  v49 = (v4 + 32);
  v45 = v4;
  v46 = a2;
  v47 = (v4 + 8);

  v20 = 0;
  v21 = 0;
  v44 = v6;
  v41 = v11;
  v42 = v3;
  v40 = v14;
  while (1)
  {
    v50 = v20;
    if (!v18)
    {
      break;
    }

    v22 = v21;
LABEL_14:
    v25 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v26 = v25 | (v22 << 6);
    v27 = v45;
    v28 = *(*(v46 + 48) + v26);
    v3 = v42;
    v29 = v43;
    (*(v45 + 16))(v43, *(v46 + 56) + *(v45 + 72) * v26, v42);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58, &qword_1E1B121E0);
    v31 = *(v30 + 48);
    v32 = v41;
    *v41 = v28;
    v11 = v32;
    (*(v27 + 32))(&v32[v31], v29, v3);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    v6 = v44;
    v14 = v40;
LABEL_15:
    sub_1E14FA798(v11, v14);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58, &qword_1E1B121E0);
    if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
    {

      MEMORY[0x1E6900360](v50);
      return;
    }

    (*v49)(v6, &v14[*(v33 + 48)], v3);
    v34 = *(v48 + 48);
    v53 = *(v48 + 32);
    v54 = v34;
    v55 = *(v48 + 64);
    v35 = *(v48 + 16);
    v51 = *v48;
    v52 = v35;
    sub_1E1AF5F0C();

    sub_1E19DE7CC(&qword_1EE1E2330, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E1AF5D1C();
    (*v47)(v6, v3);
    v20 = sub_1E1AF767C() ^ v50;
  }

  if (v19 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4E58, &qword_1E1B121E0);
      (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
      v18 = 0;
      v21 = v24;
      goto LABEL_15;
    }

    v18 = *(v38 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t _s11AppStoreKit0B3TabV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = sub_1E1AEFCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35F0, &unk_1E1B1E690);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = *a1;
  v40 = *a2;
  v41 = v13;
  v14 = StoreTab.Identifier.rawValue.getter();
  v16 = v15;
  if (v14 == StoreTab.Identifier.rawValue.getter() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1E1AF74AC();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for StoreTab(0);
  v20 = v19[6];
  v21 = *(v10 + 48);
  sub_1E1307FE8(a1 + v20, v12);
  sub_1E1307FE8(a2 + v20, &v12[v21]);
  v22 = *(v5 + 48);
  if (v22(v12, 1, v4) != 1)
  {
    sub_1E1307FE8(v12, v9);
    if (v22(&v12[v21], 1, v4) != 1)
    {
      v24 = v39;
      (*(v5 + 32))(v39, &v12[v21], v4);
      sub_1E19DE7CC(&qword_1EE1E2328, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v25 = sub_1E1AF5DAC();
      v26 = *(v5 + 8);
      v26(v24, v4);
      v26(v9, v4);
      sub_1E1308058(v12, &unk_1ECEB4B60, &unk_1E1B02620);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v9, v4);
LABEL_13:
    sub_1E1308058(v12, &qword_1ECEB35F0, &unk_1E1B1E690);
    return 0;
  }

  if (v22(&v12[v21], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1E1308058(v12, &unk_1ECEB4B60, &unk_1E1B02620);
LABEL_17:
  v27 = v19[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  sub_1E14F98D8(*(a1 + v19[8]), *(a2 + v19[8]));
  if (v32)
  {
    v33 = v19[9];
    v34 = (a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    v37 = v36[1];
    if (v35)
    {
      if (v37 && (*v34 == *v36 && v35 == v37 || (sub_1E1AF74AC() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v37)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E19DE5B4()
{
  result = qword_1EE1DF1B8;
  if (!qword_1EE1DF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF1B8);
  }

  return result;
}

void sub_1E19DE6A8(uint64_t a1)
{
  sub_1E130072C(319);
  if (v1 <= 0x3F)
  {
    sub_1E14282AC();
    if (v2 <= 0x3F)
    {
      sub_1E19DE760(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E19DE760(uint64_t a1)
{
  if (!qword_1EE1D2698)
  {
    sub_1E1AEFCCC();
    sub_1E19DE5B4();
    v1 = sub_1E1AF5CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1D2698);
    }
  }
}

uint64_t sub_1E19DE7CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E19DE814(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v36 = a2;
  v5 = sub_1E1AF320C();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E1AF324C();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_21:
    v11 = sub_1E1AF71CC();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = swift_allocObject();
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  *(v12 + 16) = sub_1E1489CC8(v46, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v29 = a1;
  v33 = v7;
  if (v10)
  {
    v14 = sub_1E1AF71CC();
    if (!v14)
    {
LABEL_17:
      v22 = swift_allocObject();
      v23 = v31;
      v22[2] = v30;
      v22[3] = v23;
      v22[4] = v12;
      v22[5] = v13;
      v44 = sub_1E19E01AC;
      v45 = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      v43 = &block_descriptor_42;
      v24 = _Block_copy(aBlock);

      v25 = v32;
      sub_1E1AF322C();
      v41 = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00, &qword_1E1B04850);
      sub_1E13FE650();
      v26 = v34;
      v27 = v38;
      sub_1E1AF6EEC();
      sub_1E1AF688C();
      _Block_release(v24);

      (*(v37 + 8))(v26, v27);
      (*(v33 + 8))(v25, v35);

      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_17;
    }
  }

  v10 = 0;
  v15 = v29 & 0xFFFFFFFFFFFFFF8;
  v39 = v29 + 32;
  v40 = v29 & 0xC000000000000001;
  while (!v40)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    dispatch_group_enter(v9);
    if (v10 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    a1 = v10 + 1;
    v7 = *(v39 + 8 * v10);

LABEL_13:
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = v10;
    v16[4] = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v9;
    v18 = sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);
    v19 = v9;

    v20 = sub_1E1AF68EC();
    v43 = v18;
    v44 = MEMORY[0x1E69AB720];
    aBlock[0] = v20;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v10 = a1;
    if (a1 == v14)
    {
      goto LABEL_17;
    }
  }

  v21 = v29;
  MEMORY[0x1E68FFD80](v10, v29);
  swift_unknownObjectRelease();
  a1 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    dispatch_group_enter(v9);
    v7 = MEMORY[0x1E68FFD80](v10, v21);
    goto LABEL_13;
  }

  __break(1u);
}

id sub_1E19DED50(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1E1AF490C();
  v7 = MEMORY[0x1E68FD610]();
  if (v7)
  {
    v27 = v6;
    v28 = MEMORY[0x1E69AB298];
    v26[0] = v7;
  }

  else
  {
    v27 = sub_1E1AF470C();
    v28 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_0(v26);
    sub_1E1AF46FC();
  }

  result = [objc_allocWithZone(MEMORY[0x1E696EB48]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = [a2 context];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result virtualMachine];

  if (v11)
  {
    [v11 addManagedReference:v9 withOwner:v3];
  }

  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCBC0, &qword_1E1B4AA70);
    v12 = sub_1E1AF588C();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E15A1B10(MEMORY[0x1E69E7CC0]);

    sub_1E19DFDA0(a1);
    v15 = v14;

    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    sub_1E13006E4(0, &qword_1EE1E3430, 0x1E69E9610);

    v17 = sub_1E1AF68EC();
    sub_1E19DE814(v15, v17, sub_1E19E0140, v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCBC0, &qword_1E1B4AA70);
    sub_1E15A1B10(MEMORY[0x1E69E7CC0]);
    sub_1E1AF582C();
  }

  v18 = swift_allocObject();
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v3;
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = v11;
  v19[4] = v3;
  v20 = v9;
  v21 = v11;
  v22 = v3;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

id sub_1E19DF0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v15 = sub_1E1AF490C();
  v16 = MEMORY[0x1E68FD610]();
  if (v16)
  {
    v38 = v15;
    v39 = MEMORY[0x1E69AB298];
    v37[0] = v16;
  }

  else
  {
    v38 = sub_1E1AF470C();
    v39 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_0(v37);
    sub_1E1AF46FC();
  }

  result = [objc_allocWithZone(MEMORY[0x1E696EB48]) initWithValue_];
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v18 = result;
  result = [a7 context];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v19 = result;
  v20 = [result virtualMachine];

  if (v20)
  {
    [v20 addManagedReference:v18 withOwner:v8];
  }

  if (a6 && (a5 == 1819047278 && a6 == 0xE400000000000000 || (sub_1E1AF74AC() & 1) != 0 || a5 == 0x656E696665646E75 && a6 == 0xE900000000000064 || (sub_1E1AF74AC() & 1) != 0))
  {
    a5 = 0;
    a6 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49D8, &qword_1E1B0FE70);
  v21 = sub_1E1AF588C();
  if (a2 && a4)
  {
    if (a3)
    {
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a4;
      v22[5] = a5;
      v22[6] = a6;
      v23 = objc_opt_self();

      v24 = sub_1E1AF5DBC();
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1E19DFA88;
      *(v25 + 24) = v22;
      aBlock[4] = sub_1E19DFAA0;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E19DFAA8;
      aBlock[3] = &block_descriptor_98;
      v26 = _Block_copy(aBlock);

      [v23 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v24 completionHandler:v26];
      _Block_release(v26);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E1AF586C();
    }
  }

  else
  {
    if (a3)
    {
      v27 = a3;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    aBlock[0] = v27;

    sub_1E1AF586C();
  }

  v28 = swift_allocObject();
  v28[2] = v18;
  v28[3] = v20;
  v28[4] = v8;
  v29 = swift_allocObject();
  v29[2] = v18;
  v29[3] = v20;
  v29[4] = v8;
  v30 = v18;
  v31 = v20;
  v32 = v8;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

void sub_1E19DF530(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B02CD0;
  *(v12 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *(v12 + 32) = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

  v14 = [v13 init];
  *(v12 + 88) = sub_1E13006E4(0, &qword_1ECEBCBB8, 0x1E695DFB0);
  *(v12 + 64) = v14;
  v15 = [a2 value];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1E1AF620C();

    if (!a3)
    {
      return;
    }
  }

  else
  {

    if (!a3)
    {
      return;
    }
  }

  [a3 removeManagedReference:a2 withOwner:a4];
}

void sub_1E19DF6C0(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  v8 = [a2 value];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 context];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    v12 = sub_1E13006E4(0, &qword_1EE1E32A8, 0x1E696EB58);
    v13 = MEMORY[0x1E68FF960](a1, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B02CD0;
    v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v16 = sub_1E13006E4(0, &qword_1ECEBCBB8, 0x1E695DFB0);
    *(v14 + 32) = v15;
    *(v14 + 88) = v12;
    *(v14 + 56) = v16;
    *(v14 + 64) = v13;
    v17 = v13;
    v18 = sub_1E1AF620C();

    v19 = [v9 callWithArguments_];
  }

  if (a3)
  {

    [a3 removeManagedReference:a2 withOwner:a4];
  }
}

id sub_1E19DF9F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClientOrderingWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E19DFAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = sub_1E1AF621C();
  v8 = sub_1E1AF659C();
  v9 = sub_1E1AF659C();

  v10 = a5;
  v6(v7, v8, v9, a5);
}

double sub_1E19DFB9C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = *(a4 + 16);

  a1(v7, v8);

  return result;
}

void sub_1E19DFC44(uint64_t *a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  v30 = a1[2];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  swift_beginAccess();
  v13 = *(a2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = sub_1E14E6A08(v13);
  *(a2 + 16) = v13;
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v13[2] > a3)
  {
    v15 = &v13[7 * a3];
    v16 = v8;
    v17 = v15[4];
    v18 = v15[5];
    v19 = v12;
    v20 = a4;
    v21 = v7;
    v22 = v15[6];
    v23 = v15[7];
    v24 = v9;
    v25 = v10;
    v26 = v15[8];
    v27 = v15[9];
    v28 = v11;
    v29 = v15[10];
    v15[4] = v16;
    v15[5] = v21;
    v15[6] = v30;
    v15[7] = v24;
    v15[8] = v25;
    v15[9] = v28;
    v15[10] = v19;
    *(a2 + 16) = v13;
    swift_endAccess();
    sub_1E1869DB8(v17, v18, v22, v23, v26, v27, v29);
    dispatch_group_leave(v20);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E19DFDA0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    aBlock[6] = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    v3 = v1 + 64;
    v4 = sub_1E1AF6EFC();
    v5 = *(v1 + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCBC8, &unk_1E1B4AA78);
    v6 = objc_opt_self();
    v7 = 0;
    v34 = v6;
    v30 = v1 + 72;
    v35 = v1;
    v32 = v1 + 64;
    v33 = v2;
    v31 = v5;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v5 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v36 = v7;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v4);
      v13 = *v11;
      v12 = v11[1];
      v14 = (v10 + 16 * v4);
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_1E1AF588C();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v13;
      v18[4] = v12;
      v18[5] = v16;
      v18[6] = v15;

      v19 = sub_1E1AF5DBC();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1E19E01B8;
      *(v20 + 24) = v18;
      aBlock[4] = sub_1E19E0210;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E19DFAA8;
      aBlock[3] = &block_descriptor_52_1;
      v21 = _Block_copy(aBlock);

      [v34 fetchOverridesForVisibilityAndOrderForApplicationBundleIdentifier:v19 completionHandler:v21];
      v22 = v21;
      v1 = v35;
      _Block_release(v22);

      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v8 = 1 << *(v35 + 32);
      if (v4 >= v8)
      {
        goto LABEL_22;
      }

      v3 = v32;
      v23 = *(v32 + 8 * v9);
      if ((v23 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      LODWORD(v5) = v31;
      if (v31 != *(v35 + 36))
      {
        goto LABEL_24;
      }

      v24 = v23 & (-2 << (v4 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1E142EA30(v4, v31, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1E142EA30(v4, v31, 0);
      }

LABEL_4:
      v7 = v36 + 1;
      v4 = v8;
      if (v36 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t (*static NSBundle.appStoreKit.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE1E31F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_1E19E0360(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_1E19E03EC(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static NSBundle.currentStoreKit.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE1D2290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

char *CompoundAction.__allocating_init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v15 = sub_1E1AF3E1C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v16 + 8))(a5, v15);
  sub_1E1308058(v38, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *CompoundAction.init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_1E1AEFEAC();
  v36 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v41, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(v20, v16);
  sub_1E1308058(v47, &unk_1ECEB5670, qword_1E1B03EC0);
  v29 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t CompoundAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v42 = v4;
  v6 = *v4;
  v40 = v3;
  v41 = v6;
  v46 = sub_1E1AF39DC();
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90, &qword_1E1B00D30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = sub_1E1AF5A6C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v21 = v16;
  v22 = *(v12 + 8);
  v44 = v11;
  v22(v21, v11);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_1E1308058(v10, &qword_1ECEB1F90, &qword_1E1B00D30);
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v24 = 0x736E6F69746361;
    v25 = v41;
    v24[1] = 0xE700000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    v22(v45, v44);
    (*(v43 + 8))(v47, v46);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v22;
    (*(v18 + 32))(v20, v10, v17);
    v26 = type metadata accessor for Action(0);
    MEMORY[0x1EEE9AC00](v26);
    v27 = v47;
    *(&v37 - 2) = v28;
    *(&v37 - 1) = v27;
    v29 = v40;
    v30 = sub_1E1AF59FC();
    v40 = v29;
    v23 = v42;
    *(v42 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions) = v30;
    v31 = v38;
    (*(v12 + 16))(v38, v45, v44);
    v32 = v43;
    v33 = v39;
    (*(v43 + 16))(v39, v27, v46);
    v34 = v40;
    v35 = Action.init(deserializing:using:)(v31, v33);
    if (!v34)
    {
      v23 = v35;
    }

    v41(v45, v44);
    (*(v18 + 8))(v20, v17);
    (*(v32 + 8))(v47, v46);
  }

  return v23;
}

uint64_t CompoundAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t CompoundAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompoundAction(uint64_t a1)
{
  result = qword_1EE1F4170;
  if (!qword_1EE1F4170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *ScrollingAlertAction.__allocating_init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *&v12[OBJC_IVAR____TtC11AppStoreKit20ScrollingAlertAction_message] = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v13 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v12[v13], a4, v14);
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  v18 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v12[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v35, &v32);
  if (*(&v33 + 1))
  {
    v20 = v33;
    *v19 = v32;
    *(v19 + 1) = v20;
    *(v19 + 4) = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v22 = v8;
    v23 = a4;
    v24 = a1;
    v25 = a2;
    v26 = v21;
    v27 = v9;
    v29 = v28;
    (*(v27 + 8))(v11, v22);
    v31[1] = v26;
    v31[2] = v29;
    a2 = v25;
    a1 = v24;
    a4 = v23;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v15 + 8))(a4, v14);
  sub_1E1308058(v35, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v12 + 2) = a1;
  *(v12 + 3) = a2;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *ScrollingAlertAction.init(title:message:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit20ScrollingAlertAction_message) = a3;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v30 = a4;
    v23 = a1;
    v24 = a2;
    v26 = v25;
    (*(v31 + 8))(v12, v32);
    v33 = v22;
    v34 = v26;
    a2 = v24;
    a1 = v23;
    a4 = v30;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v17 + 8))(a4, v16);
  sub_1E1308058(v41, &unk_1ECEB5670, qword_1E1B03EC0);
  v27 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v27 + 4) = v40;
  v28 = v39;
  *v27 = v38;
  *(v27 + 1) = v28;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

char *ScrollingAlertAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_1E1AF39DC();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  sub_1E1AF381C();
  v20 = sub_1E1AF37AC();
  v41 = v12;
  v21 = *(v12 + 8);
  v21(v19, v11);
  if (v20)
  {
    v22 = a1;
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v25 = v24;
    *v24 = 0x656C746974;
    v26 = 0xE500000000000000;
LABEL_5:
    v28 = v44;
    v24[1] = v26;
    v24[2] = v28;
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69AB690], v23);
    swift_willThrow();
    goto LABEL_6;
  }

  sub_1E1AF381C();
  v27 = sub_1E1AF37AC();
  v21(v19, v11);
  if (v27)
  {
    v22 = a1;
    v23 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v25 = v24;
    *v24 = 0x6567617373656DLL;
    v26 = 0xE700000000000000;
    goto LABEL_5;
  }

  v39 = v21;
  sub_1E1AF381C();
  v23 = v47 + 16;
  v30 = v45;
  v31 = v46;
  v38 = *(v47 + 16);
  v38(v10, v46, v45);
  v32 = v43;
  v33 = sub_1E165AA74(v16, v10);
  if (!v32)
  {
    *(v4 + OBJC_IVAR____TtC11AppStoreKit20ScrollingAlertAction_message) = v33;
    v34 = v40;
    v35 = *(v41 + 16);
    v44 = v11;
    v35(v40, a1, v11);
    v36 = v42;
    v38(v42, v31, v30);
    v23 = Action.init(deserializing:using:)(v34, v36);
    (*(v47 + 8))(v31, v30);
    v39(a1, v44);
    return v23;
  }

  v22 = a1;
  v21 = v39;
LABEL_6:
  (*(v47 + 8))(v46, v45);
  v21(v22, v11);
  swift_deallocPartialClassInstance();
  return v23;
}

uint64_t ScrollingAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t ScrollingAlertAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollingAlertAction(uint64_t a1)
{
  result = qword_1ECEBCBD0;
  if (!qword_1ECEBCBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdvertDeviceWindowFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void AdvertDeviceWindowFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1D2918 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98, &unk_1E1B14400);
  __swift_project_value_buffer(v3, qword_1EE1D2920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0, &qword_1E1B061B0);
  sub_1E1AF4AAC();
  if (v11)
  {
    v4 = v12;
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(ObjectType, v4);
    v7 = 0x7469617274726F70;
    if (v6)
    {
      v7 = 0x70616373646E616CLL;
    }

    v8 = 0xE800000000000000;
    if (v6)
    {
      v8 = 0xE900000000000065;
    }

    v13 = MEMORY[0x1E69E6158];
    v11 = v7;
    v12 = v8;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    if (!v1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v11);
      v9 = (*(v4 + 16))(ObjectType, v4);
      v13 = MEMORY[0x1E69E6370];
      LOBYTE(v11) = v9 & 1;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_1E1AF4A1C();
    }

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    if (qword_1EE1D2768 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE216140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }
}

uint64_t type metadata accessor for AdvertDeviceWindowFieldsProvider(uint64_t a1)
{
  result = qword_1EE1E7C28;
  if (!qword_1EE1E7C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = type metadata accessor for ActionIntent(0);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E19E28F4, 0, 0);
}

uint64_t sub_1E19E28F4()
{
  v33 = v0;
  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v26 = v0[10];
  v4 = type metadata accessor for DeepLinkWithReferrerIntent(0);
  v5 = v3 + *(v4 + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  v28 = *v5;
  v29 = *(v5 + 8);
  v30 = v6;
  v31 = v7;
  v32 = v8;

  sub_1E13E23E4(v7, v8);
  sub_1E16D0820(&v28);
  v9 = v31;
  v10 = v32;

  sub_1E137B778(v9, v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCBF0, &unk_1E1B4ACA8);
  v0[13] = sub_1E1AF588C();
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v0[14] = v0[7];
  v11 = v2[5];
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 16))(v1 + v11, v3, v12);
  v13 = *(v3 + *(v4 + 20));
  v14 = *v5;
  v15 = *(v5 + 24);
  v16 = *(v5 + 32);
  v17 = *(v5 + 8);
  LOBYTE(v4) = *(v5 + 40);
  strcpy(v1, "ActionIntent");
  *(v1 + 13) = 0;
  *(v1 + 14) = -5120;
  *(v1 + v2[6]) = v13;
  v18 = v1 + v2[7];
  *v18 = v14;
  *(v18 + 8) = v17;
  *(v18 + 24) = v15;
  *(v18 + 32) = v16;
  *(v18 + 40) = v4;

  sub_1E13E23E4(v16, v4);
  v0[15] = sub_1E1368108(v1, v26, "AppStoreKit/DeepLinkWithReferrerIntentImplementation.swift", 58, 2);
  v19 = sub_1E1361A80();
  swift_retain_n();
  v20 = sub_1E1AF68EC();
  v21 = MEMORY[0x1E69AB720];
  v0[5] = v19;
  v0[6] = v21;
  v0[2] = v20;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = sub_1E19E2F20();
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_1E19E2C38;
  v24 = v0[8];

  return MEMORY[0x1EEE176B8](v24, v27, v22);
}

uint64_t sub_1E19E2C38()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1E19E2DDC;
  }

  else
  {
    v2 = sub_1E19E2D4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E19E2D4C()
{
  v1 = *(v0 + 96);

  sub_1E14D28AC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E19E2DDC()
{
  v1 = *(v0 + 96);

  sub_1E14D28AC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E19E2E6C(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = type metadata accessor for Action(0);
  v3[4] = sub_1E19E30B0(qword_1EE1D2F80, type metadata accessor for Action, &protocol conformance descriptor for Action);
  v3[0] = v1;

  sub_1E1AF55AC();
  sub_1E19E30F8(v4, v3);
  sub_1E1AF586C();
  sub_1E19E3154(v3);
  return sub_1E19E31BC(v4);
}

unint64_t sub_1E19E2F20()
{
  result = qword_1ECEBCBF8;
  if (!qword_1ECEBCBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCBF0, &unk_1E1B4ACA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCBF8);
  }

  return result;
}

uint64_t sub_1E19E2FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E130B5DC;

  return DeepLinkWithReferrerIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_1E19E30B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E19E3154(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCC08, qword_1E1B4AD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double DiagnosticsReporter.flushRecorder(_:)(uint64_t a1)
{
  v2 = sub_1E1AEF55C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  [v7 lock];
  swift_beginAccess();
  v8 = *(a1 + 16);

  [v7 unlock];
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = *(v10 + 64);
    v38[1] = v8;
    v13 = v8 + ((v12 + 32) & ~v12);
    v39 = *(v10 + 56);
    v40 = v11;
    v11(v6, v13, v2);
    while (1)
    {
      v14 = sub_1E1AEF52C();
      v15 = qword_1EE1EAD00;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = sub_1E1AF5DFC();
      v19 = v18;
      if (v17 == sub_1E1AF5DFC() && v19 == v20)
      {
        break;
      }

      v22 = sub_1E1AF74AC();

      if (v22)
      {

LABEL_17:
        v23 = sub_1E1AEF54C();
        if (!v23)
        {
          goto LABEL_4;
        }

        v24 = v23;
        v41 = 0x726F727265;
        v42 = 0xE500000000000000;
        sub_1E1AF6F6C();
        if (!*(v24 + 16))
        {
          goto LABEL_3;
        }

        v25 = sub_1E135FCF4(v43);
        if ((v26 & 1) == 0)
        {
          goto LABEL_3;
        }

        sub_1E137A5C4(*(v24 + 56) + 32 * v25, &v44);
        sub_1E134B88C(v43);

        if (!*(&v45 + 1))
        {
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
        if (swift_dynamicCast())
        {
          v27 = v43[0];
          sub_1E19E3BC4(v43[0]);
        }

        goto LABEL_6;
      }

      if (qword_1EE1EACE8 != -1)
      {
        swift_once();
      }

      v28 = sub_1E1AF5DFC();
      v30 = v29;
      if (v28 == sub_1E1AF5DFC() && v30 == v31)
      {
      }

      else
      {
        v32 = sub_1E1AF74AC();

        if ((v32 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v33 = sub_1E1AEF54C();
      if (!v33)
      {
        goto LABEL_4;
      }

      v34 = v33;
      v41 = 0x746E656469636E69;
      v42 = 0xE900000000000073;
      sub_1E1AF6F6C();
      if (!*(v34 + 16) || (v35 = sub_1E135FCF4(v43), (v36 & 1) == 0))
      {
LABEL_3:

        sub_1E134B88C(v43);
LABEL_4:
        v44 = 0u;
        v45 = 0u;
LABEL_5:
        sub_1E1308058(&v44, &qword_1ECEB2DF0, &unk_1E1B02CE0);
        goto LABEL_6;
      }

      sub_1E137A5C4(*(v34 + 56) + 32 * v35, &v44);
      sub_1E134B88C(v43);

      if (!*(&v45 + 1))
      {
        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4DA0, &qword_1E1B11C78);
      if (swift_dynamicCast())
      {
        sub_1E19E41C8(v43[0]);
      }

LABEL_6:
      (*(v10 - 8))(v6, v2);
      v13 += v39;
      if (!--v9)
      {
        goto LABEL_35;
      }

      v40(v6, v13, v2);
    }

    goto LABEL_17;
  }

LABEL_35:

  return result;
}

uint64_t DiagnosticsReporter.__allocating_init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1E19E4DD8(a1, a2, a3, a4, a5);
  sub_1E1300EA8(a4, a5);
  sub_1E1300EA8(a2, a3);
  return v10;
}

uint64_t sub_1E19E3774()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE216A90);
  __swift_project_value_buffer(v4, qword_1EE216A90);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t DiagnosticsReporter.init(_:onReportError:onReportIncident:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E19E4DD8(a1, a2, a3, a4, a5);
  sub_1E1300EA8(a4, a5);
  sub_1E1300EA8(a2, a3);
  return v9;
}

uint64_t DiagnosticsReporter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_configuration;
  v3 = sub_1E1AF3EFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1E1300EA8(*(v0 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportError), *(v0 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportError + 8));
  sub_1E1300EA8(*(v0 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportIncident), *(v0 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportIncident + 8));

  return v0;
}

uint64_t DiagnosticsReporter.__deallocating_deinit()
{
  DiagnosticsReporter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E19E3A88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E1AF3EFC();
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = *a1;
  if (*(v3 + v9))
  {
    v10 = *(v3 + v9);
  }

  else
  {
    (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_configuration, v8);
    sub_1E1AF3F1C();
    swift_allocObject();
    v10 = sub_1E1AF3EBC();
    *(v3 + v9) = v10;
  }

  return v10;
}

double sub_1E19E3BC4(void *a1)
{
  v2 = v1;
  v4 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6980, &qword_1E1B0F300);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E1B03760;
  *(v5 + 32) = @"debug";
  *(v5 + 40) = @"convergence";
  *(v5 + 48) = @"internal";
  type metadata accessor for BuildType(0);
  v6 = @"debug";
  v7 = @"convergence";
  v8 = @"internal";
  v9 = sub_1E1AF620C();

  IsAnyOf = ASKBuildTypeIsAnyOf(v4, v9);

  if (IsAnyOf)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8, &qword_1E1B0E378);
    if (swift_dynamicCast())
    {
      sub_1E1361B28(&v26, v29);
      v12 = v30;
      v13 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      *&v25 = (*(v13 + 16))(v12, v13);
      *(&v25 + 1) = v14;
      v15 = v31;
      v16 = __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v17 = MEMORY[0x1EEE9AC00](v16);
      (*(v15 + 24))(sub_1E19E5138, v17);
      if (qword_1EE1EF068 != -1)
      {
        swift_once();
      }

      v18 = sub_1E1AF591C();
      __swift_project_value_buffer(v18, qword_1EE216A90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      *(&v27 + 1) = MEMORY[0x1E69E6158];
      v26 = v25;

      sub_1E1AF38BC();
      sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54AC();

      __swift_destroy_boxed_opaque_existential_1(v29);
      goto LABEL_10;
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1E1308058(&v26, &qword_1ECEB47C0, &unk_1E1B0E380);
  }

  if (qword_1EE1EF068 != -1)
  {
    swift_once();
  }

  v19 = sub_1E1AF591C();
  __swift_project_value_buffer(v19, qword_1EE216A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  swift_getErrorValue();
  v20 = sub_1E1AF75AC();
  v30 = MEMORY[0x1E69E6158];
  v29[0] = v20;
  v29[1] = v21;
  sub_1E1AF38BC();
  sub_1E1308058(v29, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

LABEL_10:
  sub_1E19E46E8(a1);
  v22 = MetricsLogger.log(contentsOf:)(a1);
  v23 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportError);
  if (v23)
  {
    v23(a1, v22);
  }

  return result;
}

double sub_1E19E41C8(uint64_t a1)
{
  v3 = sub_1E1AF367C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E19E3A88(&OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger, 0x69746164696C6176, 0xEA00000000006E6FLL);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = v10;
    v14 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportIncident);
    v13 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportIncident + 8);
    v25 = *(v9 + 56);
    v26 = "$_validationMetricsLogger";
    v23[1] = v13;
    v24 = (v9 - 8);
    v36 = xmmword_1E1B02CD0;
    v29 = v9;
    v30 = v3;
    v27 = v14;
    v28 = v7;
    v35 = v10;
    do
    {
      v33 = v11;
      v34 = v8;
      v12(v6);
      if (qword_1EE1EF068 != -1)
      {
        swift_once();
      }

      v15 = sub_1E1AF591C();
      v32 = __swift_project_value_buffer(v15, qword_1EE216A90);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v36;
      sub_1E1AF382C();
      v40 = v3;
      v16 = __swift_allocate_boxed_opaque_existential_0(&v38);
      v35(v16, v6, v3);
      sub_1E1AF38BC();
      sub_1E1308058(&v38, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54BC();

      v37 = v28;
      *(swift_allocObject() + 16) = v36;
      v17 = sub_1E1AF366C();
      v18 = MEMORY[0x1E69E6158];
      v40 = MEMORY[0x1E69E6158];
      v38 = v17;
      v39 = v19;
      sub_1E1AF38BC();
      sub_1E1308058(&v38, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v20 = sub_1E1AF365C();
      v40 = v18;
      v38 = v20;
      v39 = v21;
      sub_1E1AF38BC();
      sub_1E1308058(&v38, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF3F1C();
      sub_1E1AF54AC();

      v12 = v35;
      if (v27)
      {
        v27(v6);
      }

      v3 = v30;
      (*v24)(v6, v30);
      v11 = v33 + v25;
      v8 = v34 - 1;
    }

    while (v34 != 1);
  }

  return result;
}

uint64_t sub_1E19E46E8(void *a1)
{
  v2 = sub_1E1AF56FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF5A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  if (swift_dynamicCast())
  {
    v11 = sub_1E19E3A88(&OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger, 1852797802, 0xE400000000000000);
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    v15 = a1;
    v12 = a1;
    if (!swift_dynamicCast())
    {

      return sub_1E19E3A88(&OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger, 0x74736F6E67616964, 0xEB00000000736369);
    }

    v11 = sub_1E19E3A88(&OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger, 29546, 0xE200000000000000);
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

double sub_1E19E493C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E68FECA0](10, 0xE100000000000000);
  MEMORY[0x1E68FECA0](a1, a2);
  MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0, 0xE000000000000000);

  return result;
}

uint64_t DiagnosticsReporter.flushBootstrapLogger(_:)()
{
  v1 = sub_1E1AF3EFC();
  v2 = MEMORY[0x1EEE9AC00](v1);
  (*(v4 + 16))(&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_configuration, v2);
  v5 = sub_1E1AF3F1C();
  swift_allocObject();
  v6 = sub_1E1AF3EBC();
  v9[3] = v5;
  v9[4] = MEMORY[0x1E69AB040];
  v9[0] = v6;

  sub_1E1AF3DEC();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void DiagnosticsReporter.flushBootstrapEvents(_:asPartOf:)(unint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1E1AF3ABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF436C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_1E1AF71CC();
    if (!v12)
    {
      return;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return;
    }
  }

  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v16 = v9;
    v17 = v8;
    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E68FFD80](v13, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v13 + 32);
      }

      (*(*v14 + 96))();
      if (qword_1EE1E3990 != -1)
      {
        swift_once();
      }

      ++v13;
      v15 = sub_1E1AF4A9C();
      __swift_project_value_buffer(v15, qword_1EE1E3998);
      sub_1E1AF434C();

      (*(v5 + 8))(v7, v4);
    }

    while (v12 != v13);
    (*(v16 + 8))(v11, v17);
  }
}

uint64_t sub_1E19E4DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___jsMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___jsonMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___diagnosticsMetricsLogger) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter____lazy_storage___validationMetricsLogger) = 0;
  v11 = OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_configuration;
  v12 = sub_1E1AF3EFC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5 + v11, a1, v12);
  v14 = (v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportError);
  *v14 = a2;
  v14[1] = a3;
  v15 = (v5 + OBJC_IVAR____TtC11AppStoreKit19DiagnosticsReporter_onReportIncident);
  *v15 = a4;
  v15[1] = a5;
  v16 = objc_opt_self();
  sub_1E1300E34(a2, a3);
  sub_1E1300E34(a4, a5);
  v17 = [v16 defaultCenter];
  v18 = qword_1EE1EAD00;

  if (v18 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v5 selector:sel_errorDidOccur_ name:qword_1EE1EAD08 object:0];

  v19 = qword_1EE1EACE8;

  if (v19 != -1)
  {
    swift_once();
  }

  [v17 addObserver:v5 selector:sel_incidentsDidOccur_ name:qword_1EE1EACF0 object:0];

  (*(v13 + 8))(a1, v12);
  return v5;
}

uint64_t type metadata accessor for DiagnosticsReporter(uint64_t a1)
{
  result = qword_1EE1EF058;
  if (!qword_1EE1EF058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E19E5060(uint64_t a1)
{
  result = sub_1E1AF3EFC();
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

uint64_t PreloadingFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreloadingFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1ECEB0E70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
  __swift_project_value_buffer(v2, qword_1EE1D2960);
  v3 = MEMORY[0x1E69E6370];
  result = sub_1E1AF4ABC();
  if (LOBYTE(v5[0]) != 2)
  {
    v5[3] = v3;
    LOBYTE(v5[0]) &= 1u;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1E19E52B4(uint64_t a1)
{
  if (qword_1ECEB0E70 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90, &unk_1E1B21B00);
  __swift_project_value_buffer(v2, qword_1EE1D2960);
  v3 = MEMORY[0x1E69E6370];
  result = sub_1E1AF4ABC();
  if (LOBYTE(v5[0]) != 2)
  {
    v5[3] = v3;
    LOBYTE(v5[0]) &= 1u;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t type metadata accessor for PreloadingFieldsProvider(uint64_t a1)
{
  result = qword_1EE1EB700;
  if (!qword_1EE1EB700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SmallBreakoutLayout.init(metrics:iconView:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[11];
  a4[10] = a1[10];
  a4[11] = v6;
  v7 = a1[13];
  a4[12] = a1[12];
  a4[13] = v7;
  v8 = a1[7];
  a4[6] = a1[6];
  a4[7] = v8;
  v9 = a1[9];
  a4[8] = a1[8];
  a4[9] = v9;
  v10 = a1[3];
  a4[2] = a1[2];
  a4[3] = v10;
  v11 = a1[5];
  a4[4] = a1[4];
  a4[5] = v11;
  v12 = a1[1];
  *a4 = *a1;
  a4[1] = v12;
  sub_1E1308EC0(a2, (a4 + 14));

  return sub_1E1308EC0(a3, a4 + 264);
}

uint64_t SmallBreakoutLayout.Metrics.init(iconSize:iconRotation:iconBottomOffset:detailsTrailingMargin:detailsWidth:layoutMargins:height:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>)
{
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 24) = 0u;
  *(a5 + 16) = a8;
  sub_1E13BC4E4(a1, a5 + 24);
  sub_1E1308EC0(a2, a5 + 64);
  v20 = a3[1];
  *(a5 + 104) = *a3;
  *(a5 + 120) = v20;
  *(a5 + 129) = *(a3 + 25);
  *(a5 + 152) = a9;
  *(a5 + 160) = a10;
  *(a5 + 168) = a11;
  *(a5 + 176) = a12;

  return sub_1E1308EC0(a4, a5 + 184);
}

uint64_t SmallBreakoutLayout.Metrics.detailsTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return sub_1E1308EC0(a1, v1 + 64);
}

void SmallBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t SmallBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 184));

  return sub_1E1308EC0(a1, v1 + 184);
}

__n128 SmallBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

__n128 sub_1E19E5824@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

double static SmallBreakoutLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 208);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 184), v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t SmallBreakoutLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v6 = v5;
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  sub_1E1AF6B0C();
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v20 = CGRectGetWidth(v55);
  sub_1E1836DC4(a1, v20);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  CGRectGetHeight(v56);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 33, v6[36]);
  sub_1E1AF11CC();
  v48 = v21;
  v47 = v22;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v39 = width;
  v58.size.width = width;
  v38 = height;
  v58.size.height = height;
  MidY = CGRectGetMidY(v58);
  v23 = *(v5 + 8);
  v24 = *v5;
  CGAffineTransformMakeRotation(&v54, *(v5 + 16) * 0.0174532925);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v24;
  v59.size.height = v23;
  v60 = CGRectApplyAffineTransform(v59, &v54);
  v25 = v60.origin.x;
  v26 = v60.origin.y;
  v27 = v60.size.width;
  v28 = v60.size.height;
  v41 = CGRectGetWidth(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v24;
  v61.size.height = v23;
  v40 = CGRectGetWidth(v61);
  v62.origin.x = v25;
  v62.origin.y = v26;
  v62.size.width = v27;
  v62.size.height = v28;
  v29 = CGRectGetHeight(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v43 = v24;
  v63.size.width = v24;
  v50 = v23;
  v63.size.height = v23;
  v30 = CGRectGetHeight(v63);
  sub_1E141E104(v5 + 24, &v52);
  if (v53)
  {
    v31 = (v29 - v30) * -0.5;
    sub_1E1308EC0(&v52, &v54);
    v64.origin.x = v49;
    v64.origin.y = v44;
    v64.size.width = v45;
    v64.size.height = v46;
    v32 = CGRectGetMaxY(v64) - v50;
    v33 = *&v54.d;
    __swift_project_boxed_opaque_existential_1Tm(&v54, *&v54.d);
    sub_1E13BC274(v33);
    v34 = sub_1E1AF12DC();
    (*(v13 + 8))(v15, v12);
    v39 = v32 - v34 + v31;
    __swift_destroy_boxed_opaque_existential_1(&v54);
  }

  else
  {
    sub_1E141E174(&v52);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v39;
    v65.size.height = v38;
    v39 = floor(CGRectGetMidY(v65) + v50 * -0.5);
  }

  v66.origin.y = floor(MidY - v47 * 0.5);
  v46 = v66.origin.y;
  v66.origin.x = MinX;
  v66.size.width = v48;
  v66.size.height = v47;
  CGRectGetMaxX(v66);
  v35 = v6[11];
  __swift_project_boxed_opaque_existential_1Tm(v6 + 8, v35);
  sub_1E13BC274(v35);
  sub_1E1AF12DC();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1Tm(v6 + 28, v6[31]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v6 + 33, v6[36]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  return sub_1E1AF106C();
}

double static SmallBreakoutLayout.rotatedIconFrameOffsets(rotation:iconSize:)(double a1, CGFloat a2, CGFloat a3)
{
  CGAffineTransformMakeRotation(&v12, a1 * 0.0174532925);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = a2;
  v13.size.height = a3;
  v14 = CGRectApplyAffineTransform(v13, &v12);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  v10 = (v9 - CGRectGetWidth(v15)) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetHeight(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  CGRectGetHeight(v17);
  return v10;
}

uint64_t sub_1E19E5FC0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E19E6378();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1E19E6030()
{
  result = qword_1EE1DC710;
  if (!qword_1EE1DC710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DC710);
  }

  return result;
}

double sub_1E19E6084(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1E1AF745C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 208);
  __swift_project_boxed_opaque_existential_1Tm((a1 + 184), v9);
  sub_1E13BC274(v9);
  sub_1E1AF12DC();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t sub_1E19E61C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19E6208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E19E62A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E19E62F0(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

unint64_t sub_1E19E6378()
{
  result = qword_1EE1DC718[0];
  if (!qword_1EE1DC718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DC718);
  }

  return result;
}

void __swiftcall UpdateAppEventNotificationIntent.init(appEventId:shouldSchedule:)(AppStoreKit::UpdateAppEventNotificationIntent *__return_ptr retstr, Swift::String appEventId, Swift::Bool shouldSchedule)
{
  retstr->kind._countAndFlagsBits = 0xD000000000000020;
  retstr->kind._object = 0x80000001E1B4B090;
  retstr->appEventId = appEventId;
  retstr->shouldSchedule = shouldSchedule;
}

uint64_t UpdateAppEventNotificationIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UpdateAppEventNotificationIntent.appEventId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

JSValue __swiftcall UpdateAppEventNotificationIntent.makeValue(in:)(JSContext in)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = objc_opt_self();
  result.super.isa = [v6 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;

  v9 = isa;
  v10 = [v6 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v4, v3}];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  LOBYTE(v12) = v5;
  v11 = [v6 valueWithObject:sub_1E1AF755C() inContext:{in.super.isa, v12}];
  result.super.isa = swift_unknownObjectRelease();
  if (v11)
  {
    sub_1E1AF6C5C();

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1E19E65D0()
{
  result = qword_1ECEBCC10;
  if (!qword_1ECEBCC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC10);
  }

  return result;
}

unint64_t sub_1E19E662C()
{
  result = qword_1ECEBCC18;
  if (!qword_1ECEBCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC18);
  }

  return result;
}

uint64_t PageTab.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PageTab.id.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PageTab.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTab.init(deserializing:using:)(a1, a2);
  return v4;
}

void *PageTab.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v42 = a2;
  v38 = *v2;
  v43 = sub_1E1AF39DC();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = 25705;
  v14 = 0xE200000000000000;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v16 = v15;
  v17 = v12;
  v18 = v5;
  v19 = *(v6 + 8);
  v19(v17, v18);
  v39 = v18;
  if (!v16)
  {
    v29 = v19;
LABEL_7:
    v23 = v40;
LABEL_8:
    v30 = sub_1E1AF5A7C();
    sub_1E19E7764(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v31 = v13;
    v31[1] = v14;
    v31[2] = v38;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    (*(v23 + 8))(v42, v43);
    v29(a1, v39);
    v26 = v41;
    swift_deallocPartialClassInstance();
    return v26;
  }

  v36 = v16;
  v13 = 0x656C746974;
  sub_1E1AF381C();
  v20 = sub_1E1AF37CC();
  v22 = v21;
  v19(v9, v18);
  if (!v22)
  {
    v29 = v19;

    v14 = 0xE500000000000000;
    goto LABEL_7;
  }

  v33 = v20;
  v34 = v22;
  v13 = 0x6E6F69746361;
  type metadata accessor for PageTabChangeAction(0);
  sub_1E1AF381C();
  v23 = v40;
  v24 = v42;
  (*(v40 + 16))(v37, v42, v43);
  sub_1E19E7764(&qword_1ECEBCC20, 255, type metadata accessor for PageTabChangeAction, &protocol conformance descriptor for Action);
  sub_1E1AF464C();
  v25 = v44;
  if (!v44)
  {
    v29 = v19;

    v14 = 0xE600000000000000;
    goto LABEL_8;
  }

  (*(v23 + 8))(v24, v43);
  v19(a1, v39);
  v26 = v41;
  v27 = v36;
  v28 = v34;
  v41[5] = v35;
  v26[6] = v27;
  v26[3] = v33;
  v26[4] = v28;
  v26[2] = v25;
  return v26;
}

uint64_t PageTab.hash(into:)(uint64_t a1)
{
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E134E724(*(v1 + 16) + OBJC_IVAR____TtC11AppStoreKit6Action_id, v3);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E134B88C(v3);
}

void *PageTab.deinit()
{

  return v0;
}

uint64_t PageTab.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t PageTab.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E134E724(*(v0 + 16) + OBJC_IVAR____TtC11AppStoreKit6Action_id, v2);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E134B88C(v2);
  return sub_1E1AF767C();
}

double sub_1E19E6D64@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  *a1 = *(*v1 + 40);
  a1[1] = v2;

  return result;
}

uint64_t sub_1E19E6D98(uint64_t a1)
{
  v2 = *v1;
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E134E724(*(v2 + 16) + OBJC_IVAR____TtC11AppStoreKit6Action_id, v4);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E134B88C(v4);
}

uint64_t sub_1E19E6E08(uint64_t a1)
{
  v2 = *v1;
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF5F0C();
  sub_1E134E724(*(v2 + 16) + OBJC_IVAR____TtC11AppStoreKit6Action_id, v4);
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  sub_1E134B88C(v4);
  return sub_1E1AF767C();
}

uint64_t PageTabs.selectedTabId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageTabs.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageTabs.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageTabs.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v40 = *v2;
  v43 = sub_1E1AF39DC();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1E1AF381C();
  v13 = sub_1E1AF37CC();
  v15 = v14;
  v18 = *(v6 + 8);
  v16 = v6 + 8;
  v17 = v18;
  v18(v12, v5);
  if (!v15)
  {
    v22 = v41;
    v29 = 0xE200000000000000;
    v30 = 25705;
LABEL_8:
    v31 = sub_1E1AF5A7C();
    sub_1E19E7764(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v32 = v30;
    v32[1] = v29;
    v32[2] = v40;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E69AB690], v31);
    swift_willThrow();
    (*(v22 + 8))(v49, v43);
    v17(a1, v5);
    v27 = v42;
    swift_deallocPartialClassInstance();
    return v27;
  }

  v38 = v13;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v17(v9, v5);
  if (!v21)
  {

    v29 = 0xE200000000000000;
    v30 = 25705;
    v22 = v41;
    goto LABEL_8;
  }

  v34 = v19;
  v35 = v21;
  v36 = v17;
  v37 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCC28, &qword_1E1B4B1D8);
  sub_1E1AF381C();
  v22 = v41;
  v23 = v49;
  v24 = v43;
  (*(v41 + 16))(v39, v49, v43);
  sub_1E19E75B4();
  sub_1E1AF464C();
  v25 = v46;
  if (!v46)
  {

    v29 = 0xE500000000000000;
    v30 = 0x656C746974;
    v17 = v36;
    goto LABEL_8;
  }

  v44 = v38;
  v45 = v15;
  sub_1E1AF6F6C();
  (*(v22 + 8))(v23, v24);
  v36(a1, v5);
  v26 = v47;
  v27 = v42;
  *(v42 + 40) = v46;
  *(v27 + 56) = v26;
  *(v27 + 72) = v48;
  v28 = v35;
  *(v27 + 16) = v34;
  *(v27 + 24) = v28;
  *(v27 + 32) = v25;
  return v27;
}

uint64_t PageTabs.deinit()
{

  sub_1E134B88C(v0 + 40);
  return v0;
}

uint64_t PageTabs.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19E7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t _s11AppStoreKit7PageTabC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[5] == a2[5] && a1[6] == a2[6];
  if (v4 || (sub_1E1AF74AC()) && (a1[3] == a2[3] ? (v5 = a1[4] == a2[4]) : (v5 = 0), v5 || (sub_1E1AF74AC()))
  {
    sub_1E134E724(a1[2] + OBJC_IVAR____TtC11AppStoreKit6Action_id, v9);
    sub_1E134E724(a2[2] + OBJC_IVAR____TtC11AppStoreKit6Action_id, v8);
    v6 = MEMORY[0x1E68FFC60](v9, v8);
    sub_1E134B88C(v8);
    sub_1E134B88C(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1E19E75B4()
{
  result = qword_1ECEBCC30;
  if (!qword_1ECEBCC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCC28, &qword_1E1B4B1D8);
    sub_1E19E7764(&qword_1ECEBCC38, v1, type metadata accessor for PageTab, &protocol conformance descriptor for PageTab);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC30);
  }

  return result;
}

uint64_t sub_1E19E7764(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v19 = type metadata accessor for ActionLayout(0);
  sub_1E19E7A54(a1, a9 + *(v19 + 40));
  if (a10)
  {
    sub_1E14F59A8(a2, v28);
    if (v29)
    {
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v20 = *a1;
      v27 = a11;
      (*(*v20 + 104))(&v30, &v27);
      sub_1E1AF11AC();
      swift_unknownObjectRelease();
      sub_1E14F60F8(a2);
      sub_1E19E7AD8(a1);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1E14F60F8(a2);
      sub_1E19E7AD8(a1);
      sub_1E14F60F8(v28);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
    }

    v22 = v31;
    *a9 = v30;
    *(a9 + 16) = v22;
    *(a9 + 32) = v32;
  }

  else
  {
    sub_1E19E7AD8(a1);
    swift_unknownObjectRelease();
    v21 = *(a2 + 16);
    *a9 = *a2;
    *(a9 + 16) = v21;
    *(a9 + 32) = *(a2 + 32);
  }

  sub_1E1308EC0(a3, a9 + 40);
  v23 = *(a4 + 16);
  *(a9 + 80) = *a4;
  *(a9 + 96) = v23;
  result = *a5;
  v25 = *(a5 + 16);
  *(a9 + 120) = *a5;
  *(a9 + 112) = *(a4 + 32);
  *(a9 + 136) = v25;
  *(a9 + 152) = *(a5 + 32);
  *(a9 + 160) = a6;
  *(a9 + 168) = a7 & 1;
  *(a9 + 169) = a8 & 1;
  return result;
}

uint64_t sub_1E19E7A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E19E7AD8(uint64_t a1)
{
  v2 = type metadata accessor for ActionLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, char *a9@<X8>, __int128 *a10, __int128 *a11, char a12)
{
  v18 = *a2;
  *a9 = *a1;
  *(a9 + 1) = v18;
  sub_1E1308EC0(a3, (a9 + 16));
  sub_1E1308EC0(a4, (a9 + 56));
  v19 = type metadata accessor for ActionLayout.Metrics(0);
  sub_1E1308EC0(a5, &a9[v19[14]]);
  sub_1E1308EC0(a6, (a9 + 96));
  v20 = v19[9];
  v21 = sub_1E1AF105C();
  (*(*(v21 - 8) + 32))(&a9[v20], a7, v21);
  sub_1E1308EC0(a8, &a9[v19[10]]);
  sub_1E1308EC0(a10, &a9[v19[11]]);
  result = sub_1E1308EC0(a11, &a9[v19[12]]);
  a9[v19[13]] = a12;
  return result;
}

void ActionLayout.Metrics.artworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

void ActionLayout.Metrics.maxArtworkSize.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 8) = v2;
}

uint64_t ActionLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return sub_1E1308EC0(a1, v1 + 16);
}

uint64_t ActionLayout.Metrics.artworkLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return sub_1E1308EC0(a1, v1 + 56);
}

uint64_t ActionLayout.Metrics.accessoryMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  return sub_1E1308EC0(a1, v1 + 96);
}

uint64_t ActionLayout.Metrics.labelFontSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 36);
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActionLayout.Metrics.labelFontSource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 36);
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActionLayout.Metrics.labelVerticalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 40);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.searchAdButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 44);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.searchAdButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 48);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ActionLayout.Metrics.shouldLabelFitAvailableWidth.setter(char a1)
{
  result = type metadata accessor for ActionLayout.Metrics(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t ActionLayout.Metrics.labelWithArtworkLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ActionLayout.Metrics(0) + 56);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t ActionLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionLayout(0) + 40);

  return sub_1E19E7A54(v3, a1);
}

double ActionLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_1E1AF745C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + *(type metadata accessor for ActionLayout(0) + 40));
  v12 = type metadata accessor for ActionLayout.Metrics(0);
  v13 = (v11 + *(v12 + 40));
  v14 = v13[3];
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  sub_1E13BC274(v14);
  sub_1E1AF12DC();
  v39 = *(v8 + 8);
  v39(v10, v7);
  sub_1E14F59A8(v4, &v41);
  v38 = a2;
  if (v42)
  {
    sub_1E1308EC0(&v41, v43);
    __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    sub_1E1AF11CC();
    v16 = a2 - v15;
    v17 = v11[5];
    __swift_project_boxed_opaque_existential_1Tm(v11 + 2, v17);
    sub_1E13BC274(v17);
    v18 = sub_1E1AF12DC();
    v39(v10, v7);
    v19 = v16 - v18;
    v20 = v11[10];
    __swift_project_boxed_opaque_existential_1Tm(v11 + 7, v20);
    sub_1E13BC274(v20);
    v21 = sub_1E1AF12DC();
    v39(v10, v7);
    a2 = v19 - v21;
    v22 = *v11;
    v40 = a1;
    (*(*v22 + 104))(&v41, &v40);
    v37 = *(&v41 + 1);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1E14F60F8(&v41);
    v37 = 0;
  }

  sub_1E14F59A8(v4 + 80, &v41);
  if (v42)
  {
    sub_1E1308EC0(&v41, v43);
    __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    sub_1E1AF11DC();
    v24 = a2 - v23;
    v25 = v11[15];
    __swift_project_boxed_opaque_existential_1Tm(v11 + 12, v25);
    sub_1E13BC274(v25);
    v26 = sub_1E1AF12DC();
    v39(v10, v7);
    a2 = v24 - v26;
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1E14F60F8(&v41);
  }

  __swift_project_boxed_opaque_existential_1Tm((v4 + 40), *(v4 + 64));
  sub_1E1AF11CC();
  v28 = v27;
  sub_1E14F59A8(v4 + 120, &v41);
  if (v42)
  {
    sub_1E1308EC0(&v41, v43);
    __swift_project_boxed_opaque_existential_1Tm((v4 + 40), *(v4 + 64));
    v29 = sub_1E1AF14AC();
    __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    sub_1E1AF11DC();
    if (a2 < v28 + v30 || v29 >= 2)
    {
      v32 = (v11 + *(v12 + 44));
      v33 = v32[3];
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      sub_1E13BC274(v33);
      sub_1E1AF12DC();
      v39(v10, v7);
    }

    v34 = v38;
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_1E14F60F8(&v41);
    return v38;
  }

  return v34;
}

uint64_t ActionLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v123 = a1;
  v115 = a2;
  v11 = sub_1E1AF111C();
  v112 = *(v11 - 8);
  v113 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &MinX - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v6 + *(type metadata accessor for ActionLayout(0) + 40));
  v18 = COERCE_DOUBLE(type metadata accessor for ActionLayout.Metrics(0));
  v19 = (v17 + *(*&v18 + 44));
  v20 = v19[3];
  __swift_project_boxed_opaque_existential_1Tm(v19, v20);
  sub_1E13BC274(v20);
  v108 = sub_1E1AF12DC();
  v21 = *(v14 + 8);
  v21(v16, v13);
  Width = v18;
  v22 = *(*&v18 + 48);
  v118 = v17;
  v23 = *(v17 + v22 + 24);
  __swift_project_boxed_opaque_existential_1Tm((v17 + v22), v23);
  sub_1E13BC274(v23);
  v24 = v123;
  v109 = sub_1E1AF12DC();
  v119 = v16;
  v120 = v21;
  v121 = v14 + 8;
  v122 = v13;
  v21(v16, v13);
  v25 = v117;
  v26 = [v24 traitCollection];
  v27 = sub_1E1AF697C();

  sub_1E14F59A8(v25 + 120, &v134);
  if (v135)
  {
    sub_1E1308EC0(&v134, &v129);
    __swift_project_boxed_opaque_existential_1Tm(&v129, *(&v130 + 1));
    v28 = v123;
    sub_1E1AF11CC();
    v30 = v29;
    v32 = v31;
    v102 = v33;
    v107 = sub_1E19E9A04(v28, v29, v31, a5, a6);
    v110 = !v107;
    __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
    sub_1E1AF119C();
    __swift_destroy_boxed_opaque_existential_1(&v129);
  }

  else
  {
    sub_1E14F60F8(&v134);
    v34 = *(v25 + 64);
    v35 = *(v25 + 72);
    v36 = __swift_project_boxed_opaque_existential_1Tm((v25 + 40), v34);
    v135 = v34;
    v136 = *(v35 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v134);
    (*(*(v34 - 8) + 16))(boxed_opaque_existential_0, v36, v34);
    v107 = 0;
    v110 = 0;
    v32 = 0.0;
    v30 = 0.0;
    v102 = 0;
  }

  v114 = v30;
  v106 = v32;
  v38 = Width;
  v39 = v118;
  v40 = (v118 + *(*&Width + 40));
  v41 = v40[3];
  v105 = v40;
  __swift_project_boxed_opaque_existential_1Tm(v40, v41);
  v42 = v119;
  sub_1E13BC274(v41);
  v43 = sub_1E1AF12DC();
  v120(v42, v122, v43);
  LOBYTE(v41) = *(v39 + *(*&v38 + 52));
  sub_1E1300B24(&v134, &v129);
  BYTE8(v131) = 0;
  BYTE9(v131) = v41;
  v44 = *(MEMORY[0x1E69DDCE0] + 16);
  v132 = *MEMORY[0x1E69DDCE0];
  v133 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8, &qword_1E1B25FF8);
  inited = swift_initStackObject();
  v47 = v132;
  v46 = v133;
  inited[3] = v131;
  inited[4] = v47;
  inited[5] = v46;
  v48 = v130;
  inited[1] = v129;
  inited[2] = v48;
  sub_1E14F59A8(v25, &v125);
  if (v126)
  {
    sub_1E1308EC0(&v125, v127);
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF11CC();
    if (fabs(v50) >= COERCE_DOUBLE(1) && fabs(v49) >= COERCE_DOUBLE(1))
    {
      v51 = v118;
      v52 = v118[10];
      __swift_project_boxed_opaque_existential_1Tm(v118 + 7, v52);
      v103 = v27;
      v53 = v119;
      sub_1E13BC274(v52);
      v54 = v123;
      v55 = sub_1E1AF12DC();
      v56 = v122;
      v104 = inited;
      v57 = v120;
      v120(v53, v122, v55);
      v58 = (v51 + *(*&Width + 56));
      v59 = v58[3];
      __swift_project_boxed_opaque_existential_1Tm(v58, v59);
      sub_1E13BC274(v59);
      v60 = sub_1E1AF12DC();
      v61 = v53;
      v27 = v103;
      v57(v61, v56, v60);
      v25 = v117;
      inited = v104;
      v137.origin.x = a3;
      v137.origin.y = a4;
      v137.size.width = a5;
      v137.size.height = a6;
      CGRectGetMinX(v137);
      v62 = *v51;
      v124 = v54;
      (*(*v62 + 104))(&v125, &v124);
      v138.origin.x = a3;
      v138.origin.y = a4;
      v138.size.width = a5;
      v138.size.height = a6;
      CGRectGetMidY(v138);
      __swift_project_boxed_opaque_existential_1Tm(v127, v128);
      sub_1E1AF116C();
    }

    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  else
  {
    sub_1E14F60F8(&v125);
  }

  sub_1E14F59A8(v25 + 80, &v125);
  if (v126)
  {
    sub_1E1308EC0(&v125, v127);
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF11CC();
    v139.origin.x = a3;
    v139.origin.y = a4;
    v139.size.width = a5;
    v139.size.height = a6;
    CGRectGetMaxX(v139);
    v140.origin.x = a3;
    v140.origin.y = a4;
    v140.size.width = a5;
    v140.size.height = a6;
    CGRectGetMidY(v140);
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  else
  {
    sub_1E14F60F8(&v125);
  }

  sub_1E14F59A8(v25, v127);
  if (v128)
  {
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF115C();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    __swift_destroy_boxed_opaque_existential_1(v127);
    v141.origin.x = v64;
    v141.origin.y = v66;
    v141.size.width = v68;
    v141.size.height = v70;
    if (!CGRectIsEmpty(v141))
    {
      v103 = v27;
      v104 = inited;
      v142.origin.x = a3;
      v142.origin.y = a4;
      v142.size.width = a5;
      v142.size.height = a6;
      MinX = CGRectGetMinX(v142);
      v71 = v118;
      v72 = (v118 + *(*&Width + 56));
      v73 = v72[3];
      __swift_project_boxed_opaque_existential_1Tm(v72, v73);
      v74 = v119;
      sub_1E13BC274(v73);
      sub_1E1AF12DC();
      v75 = v122;
      v76 = v120;
      (v120)(v74, v122);
      v143.origin.x = a3;
      v143.origin.y = a4;
      v143.size.width = a5;
      v143.size.height = a6;
      Width = CGRectGetWidth(v143);
      v77 = v72[3];
      __swift_project_boxed_opaque_existential_1Tm(v72, v77);
      sub_1E13BC274(v77);
      sub_1E1AF12DC();
      v76(v74, v75);
      v78 = v71[15];
      __swift_project_boxed_opaque_existential_1Tm(v71 + 12, v78);
      sub_1E13BC274(v78);
      v25 = v117;
      sub_1E1AF12DC();
      v76(v74, v75);
      sub_1E14F59A8(v25 + 80, v127);
      if (v128)
      {
        __swift_project_boxed_opaque_existential_1Tm(v127, v128);
        sub_1E1AF115C();
        CGRectGetWidth(v144);
        __swift_destroy_boxed_opaque_existential_1(v127);
      }

      else
      {
        sub_1E14F60F8(v127);
      }

      inited = v104;
      LOBYTE(v27) = v103;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1E14F60F8(v127);
  }

  v145.origin.x = a3;
  v145.origin.y = a4;
  v145.size.width = a5;
  v145.size.height = a6;
  CGRectGetMinX(v145);
  v146.origin.x = a3;
  v146.origin.y = a4;
  v146.size.width = a5;
  v146.size.height = a6;
  CGRectGetWidth(v146);
LABEL_21:
  __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
  v147.origin.x = a3;
  v147.origin.y = a4;
  v147.size.width = a5;
  v147.size.height = a6;
  CGRectGetHeight(v147);
  v79 = v123;
  sub_1E1AF11CC();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetMidY(v148);
  v149.origin.x = a3;
  v149.origin.y = a4;
  v149.size.width = a5;
  v149.size.height = a6;
  CGRectGetHeight(v149);
  sub_1E1AF6B1C();
  v127[0] = inited;
  v80 = v111;
  _FrameLayout.placeChildren(relativeTo:in:)(v79, v81, v82, v83, v84);
  (*(v112 + 8))(v80, v113);
  sub_1E14F59A8(v25, v127);
  if (v128 && (__swift_project_boxed_opaque_existential_1Tm(v127, v128), sub_1E1AF115C(), __swift_destroy_boxed_opaque_existential_1(v127), sub_1E14F59A8(v25, v127), v128))
  {
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  else
  {
    sub_1E14F60F8(v127);
  }

  sub_1E14F59A8(v25 + 80, v127);
  if (v128 && (__swift_project_boxed_opaque_existential_1Tm(v127, v128), sub_1E1AF115C(), __swift_destroy_boxed_opaque_existential_1(v127), sub_1E14F59A8(v25 + 80, v127), v128))
  {
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v127);
  }

  else
  {
    sub_1E14F60F8(v127);
  }

  if (*(v25 + 169) == 1)
  {
    sub_1E14F59A8(v25, &v125);
    if (v126)
    {
      sub_1E1308EC0(&v125, v127);
      ActionLayout.measurements(fitting:in:)(v123, a5, a6);
      Width = v85;
      v86 = v105[3];
      __swift_project_boxed_opaque_existential_1Tm(v105, v86);
      v87 = v119;
      sub_1E13BC274(v86);
      v114 = sub_1E1AF12DC();
      (v120)(v87, v122);
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      v150.origin.x = a3;
      v150.origin.y = a4;
      v150.size.width = a5;
      v150.size.height = a6;
      CGRectGetMidY(v150);
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF116C();
      if (*(v25 + 168))
      {
LABEL_47:
        __swift_destroy_boxed_opaque_existential_1(v127);
        goto LABEL_49;
      }

      v88 = *(v25 + 160);
      v89 = Width - v114;
      v90 = *v118;
      v124 = v123;
      (*(*v90 + 104))(&v125, &v124);
      v91 = *(&v125 + 1);
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      floor(v89 + CGRectGetMinY(v151) - (v91 - v88));
      __swift_project_boxed_opaque_existential_1Tm(v127, v128);
      __swift_project_boxed_opaque_existential_1Tm(v127, v128);
      sub_1E1AF115C();
      CGRectGetMinX(v152);
LABEL_46:
      sub_1E1AF116C();
      goto LABEL_47;
    }

    sub_1E14F60F8(&v125);
  }

  if (v110)
  {
    __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
    sub_1E1AF115C();
    if (v27)
    {
      CGRectGetMinX(*&v92);
    }

    else
    {
      CGRectGetMaxX(*&v92);
    }

    sub_1E14F59A8(v25 + 120, v127);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1Tm(v127, v128);
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      CGRectGetMidY(v153);
      goto LABEL_46;
    }

LABEL_48:
    sub_1E14F60F8(v127);
    goto LABEL_49;
  }

  if (v107)
  {
    __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
    sub_1E1AF115C();
    if (v27)
    {
      CGRectGetMaxX(*&v96);
    }

    else
    {
      CGRectGetMinX(*&v96);
    }

    sub_1E14F59A8(v25 + 120, v127);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1Tm(v127, v128);
      __swift_project_boxed_opaque_existential_1Tm((v25 + 40), *(v25 + 64));
      sub_1E1AF115C();
      CGRectGetMaxY(v154);
      goto LABEL_46;
    }

    goto LABEL_48;
  }

LABEL_49:
  sub_1E1AF106C();
  swift_setDeallocating();
  sub_1E19E9E90((inited + 1));
  return __swift_destroy_boxed_opaque_existential_1(&v134);
}

BOOL sub_1E19E9A04(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v10 = sub_1E1AF745C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8(v5, v29);
  v14 = v30;
  sub_1E14F60F8(v29);
  v15 = a4;
  if (v14)
  {
    v16 = (v6 + *(type metadata accessor for ActionLayout(0) + 40));
    v17 = *v16;
    *&v27 = a1;
    (*(*v17 + 104))(v29, &v27);
    v18 = *v29;
    v19 = v16[5];
    __swift_project_boxed_opaque_existential_1Tm(v16 + 2, v19);
    sub_1E13BC274(v19);
    v20 = sub_1E1AF12DC();
    (*(v11 + 8))(v13, v10);
    v15 = a4 - (v18 - v20);
  }

  sub_1E14F59A8(v6 + 80, &v27);
  if (v28)
  {
    sub_1E1308EC0(&v27, v29);
    __swift_project_boxed_opaque_existential_1Tm(v29, v30);
    sub_1E1AF11DC();
    v15 = v15 - v21;
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_1E14F60F8(&v27);
  }

  __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
  sub_1E1AF11CC();
  v23 = v22;
  __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
  v24 = sub_1E1AF14AC();
  return v15 < v23 + a2 || v24 > 1;
}

double _s11AppStoreKit12ActionLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t *a1, void *a2, double a3)
{
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for ActionLayout.Metrics(0) + 40));
  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  sub_1E13BC274(v11);
  sub_1E1AF12DC();
  (*(v7 + 8))(v9, v6);
  v12 = [a2 traitCollection];
  v13 = sub_1E1AF104C();

  v14 = *a1;
  v17 = a2;
  (*(*v14 + 104))(&v18, &v17);
  [v13 lineHeight];

  return a3;
}

unint64_t sub_1E19E9EE8()
{
  result = qword_1ECEBCC50;
  if (!qword_1ECEBCC50)
  {
    type metadata accessor for ActionLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCC50);
  }

  return result;
}

void sub_1E19E9F68(uint64_t a1)
{
  sub_1E1300690(319, &qword_1EE1D2AD0, &qword_1ECEB2AC0, &unk_1E1B03780);
  if (v1 <= 0x3F)
  {
    sub_1E138432C(319, &qword_1EE1D2AB0, MEMORY[0x1E69AB910]);
    if (v2 <= 0x3F)
    {
      sub_1E16DBCBC();
      if (v3 <= 0x3F)
      {
        type metadata accessor for ActionLayout.Metrics(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E19EA080(uint64_t a1)
{
  sub_1E19EA17C(319);
  if (v1 <= 0x3F)
  {
    sub_1E1300690(319, &unk_1EE1E0758, &qword_1ECEBCC60, &qword_1E1B4B5F8);
    if (v2 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AC0, MEMORY[0x1E69AB8E8]);
      if (v3 <= 0x3F)
      {
        sub_1E1AF105C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E19EA17C(uint64_t a1)
{
  if (!qword_1EE1E0768)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4000, "(.\b");
    type metadata accessor for CGSize(255);
    v5 = type metadata accessor for Conditional(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EE1E0768);
    }
  }
}

__n128 ProductPageIntent.init(url:preloading:referrerData:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  *a4 = 0xD000000000000011;
  *(a4 + 1) = 0x80000001E1B4B5E0;
  v10 = type metadata accessor for ProductPageIntent(0);
  v11 = v10[5];
  v12 = sub_1E1AEFCCC();
  v15 = *(a3 + 16);
  v16 = *a3;
  (*(*(v12 - 8) + 32))(&a4[v11], a1, v12);
  a4[v10[6]] = a2;
  v13 = &a4[v10[7]];
  result = v16;
  *v13 = v16;
  *(v13 + 1) = v15;
  *(v13 + 4) = v8;
  v13[40] = v9;
  return result;
}

uint64_t type metadata accessor for ProductPageIntent(uint64_t a1)
{
  result = qword_1ECEBCC78;
  if (!qword_1ECEBCC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ProductPageIntent.init(deserializing:using:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v5 = sub_1E1AF39DC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = sub_1E1AEFCCC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a3;
  *a3 = 0xD000000000000011;
  a3[1] = 0x80000001E1B4B5E0;
  v59 = a1;
  sub_1E1AF381C();
  sub_1E1AF36FC();
  v22 = v18;
  v48 = *(v11 + 8);
  v49 = v10;
  v23 = v11 + 8;
  v48(v22, v10);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEB4B60, &unk_1E1B02620);
    v24 = sub_1E1AF5A7C();
    sub_1E19EAD24(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for ProductPageIntent(0);
    *v26 = 7107189;
    v26[1] = 0xE300000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v24);
    swift_willThrow();
    (*(v52 + 8))(v54, v53);
    v48(v59, v49);
  }

  else
  {
    v29 = v50;
    (*(v20 + 32))(v50, v9, v19);
    sub_1E1AF381C();
    v30 = sub_1E1AF370C();
    v31 = v48;
    v32 = v49;
    v44 = v23;
    v48(v15, v49);
    v33 = type metadata accessor for ProductPageIntent(0);
    v34 = *(v33 + 20);
    v35 = v33;
    v45 = v33;
    v36 = v51;
    (*(v20 + 16))(v51 + v34, v29, v19);
    *(v36 + *(v35 + 24)) = v30 & 1;
    sub_1E1AF381C();
    v37 = v52;
    v38 = v53;
    v39 = v54;
    (*(v52 + 16))(v47, v54, v53);
    sub_1E15D7EC0();
    sub_1E1AF464C();
    (*(v37 + 8))(v39, v38);
    v31(v59, v32);
    (*(v20 + 8))(v50, v19);
    v40 = v57;
    v41 = v58;
    v42 = v51 + *(v45 + 28);
    result = *&v55;
    v43 = v56;
    *v42 = v55;
    *(v42 + 1) = v43;
    *(v42 + 4) = v40;
    v42[40] = v41;
  }

  return result;
}

uint64_t ProductPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ProductPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductPageIntent(0) + 20);
  v4 = sub_1E1AEFCCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ProductPageIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductPageIntent(0) + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_1E13E2380(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ProductPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ProductPageIntent(0);
  v8 = isa;
  sub_1E1AEFBDC();
  v9 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E1AF6C5C();
  v10 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1E1AF6C5C();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_1E194C2F4();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260, &unk_1E1B14430);
    v12 = sub_1E1AF748C();
    sub_1E1308058(&v15, &qword_1ECEB7260, &unk_1E1B14430);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_1E1AF6C5C();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E19EAD24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *TabBadgeAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v69 = sub_1E1AEFEAC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v65[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v65[-v5];
  v6 = sub_1E1AF39DC();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0, &unk_1E1B0C3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65[-v10];
  v70 = sub_1E1AF3E1C();
  v75 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v65[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v65[-v16];
  v17 = sub_1E1AF380C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v65[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65[-v23];
  v88 = a1;
  sub_1E1AF381C();
  v25 = sub_1E1AF37CC();
  v27 = v26;
  v28 = *(v18 + 8);
  v77 = v17;
  v29 = v17;
  v30 = v28;
  v28(v24, v29);
  if (!v27)
  {
    v33 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v35 = v38;
    strcpy(v38, "navigationTab");
    *(v38 + 14) = -4864;
    *(v38 + 16) = v76;
    v37 = MEMORY[0x1E69AB690];
    goto LABEL_5;
  }

  v31 = v76;
  v32._countAndFlagsBits = v25;
  v32._object = v27;
  NavigationTab.init(rawValue:)(v32);
  if (LOBYTE(v86[0]) == 9)
  {
    v33 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v35 = v34;
    v36 = MEMORY[0x1E69E7CC0];
    strcpy(v34, "navigationTab");
    *(v34 + 14) = -4864;
    *(v34 + 16) = v31;
    *(v34 + 24) = v36;
    v37 = MEMORY[0x1E69AB6A0];
LABEL_5:
    (*(*(v33 - 8) + 104))(v35, *v37, v33);
    swift_willThrow();
    (*(v78 + 8))(v80, v79);
    v30(v88, v77);
    return v11;
  }

  v66 = LOBYTE(v86[0]);
  v76 = v30;
  sub_1E1AF381C();
  (*(v78 + 16))(v8, v80, v79);
  v39 = v70;
  sub_1E1AF464C();
  v40 = v75;
  v41 = *(v75 + 48);
  if (v41(v11, 1, v39) == 1)
  {
    v42 = v73;
    sub_1E1AF3DFC();
    v43 = v41(v11, 1, v39);
    v44 = v77;
    if (v43 != 1)
    {
      sub_1E1308058(v11, &qword_1ECEBB7C0, &unk_1E1B0C3F0);
    }
  }

  else
  {
    v42 = v73;
    (*(v40 + 32))(v73, v11, v39);
    v44 = v77;
  }

  sub_1E1AF381C();
  v45 = sub_1E1AF37CC();
  v47 = v46;
  v76(v20, v44);
  v48 = *(v40 + 16);
  v49 = v74;
  v48(v74, v42, v39);
  type metadata accessor for TabBadgeAction(0);
  v11 = swift_allocObject();
  v11[OBJC_IVAR____TtC11AppStoreKit14TabBadgeAction_navigationTab] = v66;
  v50 = &v11[OBJC_IVAR____TtC11AppStoreKit14TabBadgeAction_text];
  *v50 = v45;
  v50[1] = v47;
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v51 = v72;
  v48(v72, v49, v39);
  v52 = sub_1E1AF46DC();
  v53 = v71;
  (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  v54 = &v11[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v54 = 0u;
  v54[1] = 0u;
  v55 = &v11[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v86, &v83);
  if (*(&v84 + 1))
  {
    v56 = v84;
    *v55 = v83;
    *(v55 + 1) = v56;
    *(v55 + 4) = v85;
  }

  else
  {
    v57 = v67;
    sub_1E1AEFE9C();
    v58 = sub_1E1AEFE7C();
    v60 = v59;
    v61 = v57;
    v51 = v72;
    (*(v68 + 8))(v61, v69);
    v81 = v58;
    v82 = v60;
    sub_1E1AF6F6C();
    sub_1E1308058(&v83, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  (*(v78 + 8))(v80, v79);
  v76(v88, v77);
  sub_1E1308058(v86, &unk_1ECEB5670, qword_1E1B03EC0);
  v62 = v75;
  v63 = *(v75 + 8);
  v63(v74, v39);
  v63(v73, v39);
  sub_1E134B7C8(v53, &v11[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics]);
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  (*(v62 + 32))(&v11[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v51, v39);
  return v11;
}

uint64_t type metadata accessor for TabBadgeAction(uint64_t a1)
{
  result = qword_1EE1F3980;
  if (!qword_1EE1F3980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TabBadgeAction.text.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14TabBadgeAction_text);

  return v1;
}

uint64_t TabBadgeAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return v0;
}

uint64_t TabBadgeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0, &unk_1E1B02CE0);

  return swift_deallocClassInstance();
}

id sub_1E19EB9F0(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v26 = a4;
  v8 = sub_1E1AF481C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF6C2C();
  if (!v12)
  {
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    v19 = v22;
    v23 = a2;
    goto LABEL_8;
  }

  v25 = a1;
  v13 = [a3 toDictionary];
  if (!v13 || (v14 = v13, v15 = sub_1E1AF5C7C(), v14, sub_1E14AD4CC(v15), v17 = v16, , !v17))
  {

    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    v19 = v20;
    v21 = a3;
LABEL_8:
    sub_1E1AF56BC();
    swift_willThrow();
    return v19;
  }

  sub_1E1AF47EC();
  __swift_project_boxed_opaque_existential_1Tm((v26 + OBJC_IVAR____TtC11AppStoreKit20JSStoreMetricsObject_metricsRecorder), *(v26 + OBJC_IVAR____TtC11AppStoreKit20JSStoreMetricsObject_metricsRecorder + 24));

  sub_1E1AF49EC();

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v19 = result;
    (*(v9 + 8))(v11, v8);

    return v19;
  }

  __break(1u);
  return result;
}

char *sub_1E19EBD6C(void *a1, void *a2)
{
  v5 = sub_1E1AF5AAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF490C();
  v9 = MEMORY[0x1E68FD610]();
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 2) = a2;
    *(v11 + 3) = v10;
    v12 = a1;
    v13 = a2;

    sub_1E1AF5A8C();
    if (v2)
    {
    }

    else
    {
      v11 = sub_1E1AF5A9C();

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    v11 = "oreMetricsObject";
    sub_1E1AF56FC();
    sub_1E13EB868();
    swift_allocError();
    sub_1E1AF569C();
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_1E19EBF50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a5;
  v21 = a3;
  v7 = sub_1E1AF364C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((a4 + OBJC_IVAR____TtC11AppStoreKit20JSStoreMetricsObject_metricsRecorder), *(a4 + OBJC_IVAR____TtC11AppStoreKit20JSStoreMetricsObject_metricsRecorder + 24));
  v22 = sub_1E1AF49DC();
  v11 = *(v8 + 16);
  v11(v10, a2, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = v12 + v9;
  v20 = swift_allocObject();
  v14 = *(v8 + 32);
  v14(v20 + v12, v10, v7);
  v11(v10, v21, v7);
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v14(v16 + v12, v10, v7);
  v17 = v23;
  *(v16 + v15) = v23;
  v25[3] = sub_1E1AF490C();
  v25[4] = MEMORY[0x1E69AB298];
  v25[0] = v24;
  v18 = v17;

  sub_1E1AF57FC();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

void sub_1E19EC194(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  *(v2 + 56) = MEMORY[0x1E69E6530];
  *(v2 + 32) = v1;
  v3 = sub_1E1AF363C();
}

void sub_1E19EC3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E1AF56FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80, &unk_1E1B02B80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E1B02CC0;
  swift_getErrorValue();
  sub_1E1AF75AC();
  sub_1E1AF569C();
  sub_1E1AF564C();
  (*(v4 + 8))(v6, v3);
  v8 = v14;
  v9 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  *(v7 + 56) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = sub_1E1AF363C();
}

id sub_1E19EC840(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSStoreMetricsObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E19EC8E0(uint64_t *a1)
{
  sub_1E1AF364C();

  sub_1E19EC194(a1);
}

void sub_1E19EC950(uint64_t a1)
{
  v3 = *(sub_1E1AF364C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E19EC3EC(a1, v1 + v4, v5);
}

uint64_t UILabel.stringValue.getter()
{
  v1 = [v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E1AF5DFC();

  return v3;
}

void sub_1E19ECA74(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E1AF5DFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void UILabel.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E1AF5DBC();

  [v2 setText_];
}

uint64_t (*UILabel.stringValue.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E1AF5DFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1E19ECBC4;
}

void sub_1E19ECBC4(void *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {

    v3 = sub_1E1AF5DBC();

    [v2 setText_];
  }

  else
  {
    v3 = sub_1E1AF5DBC();

    [v2 setText_];
  }
}

id UILabel.stringColor.getter()
{
  v1 = [v0 textColor];

  return v1;
}

void UILabel.stringColor.setter(void *a1)
{
  [v1 setTextColor_];
}

void (*UILabel.stringColor.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 textColor];
  return sub_1E19ECD58;
}

void sub_1E19ECD58(id *a1)
{
  v1 = *a1;
  [a1[1] setTextColor_];
}

id (*UILabel.alignment.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 textAlignment];
  return sub_1E19ECE18;
}

uint64_t sub_1E19ECE2C()
{
  v1 = [*v0 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E1AF5DFC();

  return v3;
}

void sub_1E19ECE94(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1E1AF5DBC();

  [v3 setText_];
}

void (*sub_1E19ECEF8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UILabel.stringValue.modify(v2);
  return sub_1E135BEB4;
}

id sub_1E19ECF6C()
{
  v1 = [*v0 textColor];

  return v1;
}

void sub_1E19ECFA4(void *a1)
{
  [*v1 setTextColor_];
}

void (*sub_1E19ECFEC(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textColor];
  return sub_1E19ECD58;
}

id (*sub_1E19ED06C(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 textAlignment];
  return sub_1E19ECE18;
}

uint64_t MediumAdLockupWithScreenshotsBackground.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(a1, a2);
  return v4;
}

void *MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v63 = *v2;
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v71 = sub_1E1AF380C();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v57 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v57 - v21;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v68 = v5;
  v23 = *(v5 + 16);
  v24 = v11;
  v25 = v11;
  v26 = v72;
  v23(v25, v72, v4);
  v70 = v22;
  v59 = v19;
  v60 = v24;
  sub_1E1AF464C();
  v27 = v73;
  v23(v73, v26, v4);
  v28 = v64;
  sub_1E1AF381C();
  v29 = v65;
  v23(v65, v27, v4);
  type metadata accessor for Lockup(0);
  swift_allocObject();
  v30 = v66;
  v31 = Lockup.init(deserializing:using:)(v28, v29);
  if (v30)
  {
    v32 = *(v68 + 8);
    v32(v72, v4);
    v67[1](a1, v71);
    v32(v73, v4);
    sub_1E13814C0(v70);
    v33 = v69;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = a1;
    v33 = v69;
    *(v69 + 40) = v31;
    v35 = v59;
    sub_1E1AF381C();
    v58 = v4;
    v23(v60, v73, v4);
    type metadata accessor for Screenshots();
    sub_1E19EE220(&qword_1EE1F66F8, type metadata accessor for Screenshots, &protocol conformance descriptor for Screenshots);
    *(v33 + 48) = sub_1E1AF630C();
    v36 = v61;
    v37 = v34;
    sub_1E1AF381C();
    LOBYTE(v34) = sub_1E1AF370C();
    v66 = 0;
    v38 = v67[1];
    v39 = v36;
    v40 = v71;
    (v38)(v39, v71);
    *(v33 + 16) = (v34 == 2) | v34 & 1;
    sub_1E1AF381C();
    v41 = JSONObject.appStoreColor.getter();
    (v38)(v35, v40);
    *(v33 + 56) = v41;
    sub_1E1AF381C();
    v42 = JSONObject.appStoreColor.getter();
    (v38)(v35, v40);
    v67 = v38;
    *(v33 + 64) = v42;
    v43 = v62;
    sub_1E1AF381C();
    v44 = sub_1E1AF379C();
    v46 = v45;
    (v38)(v43, v40);
    if (v46)
    {
      v47 = 0;
    }

    else
    {
      v47 = v44;
    }

    *(v33 + 24) = v47;
    *(v33 + 32) = v46 & 1;
    sub_1E13815A4(v70, v33 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_impressionMetrics);
    type metadata accessor for Action(0);
    v48 = v37;
    sub_1E1AF381C();
    v49 = v72;
    v50 = static Action.tryToMakeInstance(byDeserializing:using:)(v35, v72);
    v51 = *(v68 + 8);
    v52 = v58;
    v51(v49, v58);
    v53 = v48;
    v54 = v71;
    v55 = v67;
    (v67)(v53, v71);
    (v55)(v35, v54);
    v51(v73, v52);
    sub_1E13814C0(v70);
    *(v33 + OBJC_IVAR____TtC11AppStoreKit39MediumAdLockupWithScreenshotsBackground_clickAction) = v50;
  }

  return v33;
}