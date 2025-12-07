void sub_1AAF0F8A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_1AAF8CA64();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v34) = sub_1AAF8F564();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v21) = sub_1AAF8F564();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1AAF0FE9C(&v54, &v53, &v52);
}

uint64_t sub_1AAF0FE9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1AAF8CA64();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1AAF0FF80(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAF10040(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = a3[2];
  v6 = *(v5 - 8);
  v32 = a3[3];
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_1AAF10364(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = *(a4[2] - 8);
  v36 = a4[3];
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v38 = a4[2];
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_1AAF107F0(uint64_t a1, uint64_t a2)
{
  sub_1AAF900D4();

  swift_getMetatypeMetadata();
  v2 = sub_1AAF8F664();
  MEMORY[0x1AC5982F0](v2);

  MEMORY[0x1AC5982F0](0x3D6469202CLL, 0xE500000000000000);
  v3 = sub_1AAF90474();
  MEMORY[0x1AC5982F0](v3);

  MEMORY[0x1AC5982F0](41, 0xE100000000000000);
  return 0x6574656D61726150;
}

uint64_t sub_1AAF10918(uint64_t a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF10970(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF108F0(v3, *v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF109CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF10A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  result = type metadata accessor for Signal(319, v4, a3, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for ParameterRef(319, v4, v6, v7);
    if (v9 <= 0x3F)
    {
      v10 = sub_1AAF8FE74();
      type metadata accessor for ParameterRef(255, v10, v11, v12);
      result = swift_getTupleTypeMetadata2();
      if (v13 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAF10AF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1AAF10C4C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1AAF10E58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v59 = a2;
  v60 = a3;
  v58 = sub_1AAF8E134();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = (v8 + 16);
  sub_1AAF14178(a1, v8);
  swift_beginAccess();
  v10 = *v9;

  if (!*(v10 + 16))
  {

    return 0;
  }

  v61 = v5;
  v11 = *(v10 + 176);
  v72 = *(v10 + 160);
  v73 = v11;
  v74 = *(v10 + 192);
  v75 = *(v10 + 208);
  v12 = *(v10 + 112);
  v68 = *(v10 + 96);
  v69 = v12;
  v13 = *(v10 + 144);
  v70 = *(v10 + 128);
  v71 = v13;
  v14 = *(v10 + 48);
  v64 = *(v10 + 32);
  v65 = v14;
  v15 = *(v10 + 80);
  v66 = *(v10 + 64);
  v67 = v15;
  v56 = v69;
  v57 = v64;
  if ((*(&v68 + 1) & 0x8000000000000000) != 0)
  {
    if ((SBYTE8(v68) & 0x80u) == 0)
    {
      v19 = DWORD2(v68);
    }

    else
    {
      v19 = v68;
    }

    v16 = *(&v65 + 1);
    v17 = v65;
    v18 = v66;
  }

  else
  {
    v17 = *(&v64 + 1);
    v16 = v65;
    v18 = BYTE8(v65);
    if ((SBYTE8(v67) & 0x80u) == 0)
    {
      v19 = BYTE8(v67);
    }

    else
    {
      v19 = BYTE8(v67) & 1;
    }
  }

  sub_1AACD7304(v17, v16, v18 & 1);

  sub_1AAEDC834(&v64, v63);
  sub_1AAF8E124();
  v20 = sub_1AAF8E974();
  v22 = v21;
  sub_1AAD04750(v17, v16, v18 & 1);

  v24 = v61 + 8;
  v23 = *(v61 + 8);
  v23(v7, v58);
  v25 = sub_1AAF13498(v57, v19, v20, v22, v59, v60, v62);

  if (!v25)
  {
    goto LABEL_27;
  }

  v61 = v24;
  v55 = v25;
  v26 = DWORD2(v73);
  if ((*(&v73 + 1) & 0x8000000000000000) != 0)
  {
    if (SBYTE8(v73) < 0)
    {
      v26 = v73;
    }

    v57 = v26;
    v29 = *(&v70 + 1);
    v28 = v70;
    v30 = v71;
  }

  else
  {
    v27 = BYTE8(v72);
    v28 = *(&v69 + 1);
    v29 = v70;
    v30 = BYTE8(v70);
    if (SBYTE8(v72) < 0)
    {
      v27 = BYTE8(v72) & 1;
    }

    v57 = v27;
  }

  sub_1AACD7304(v28, v29, v30 & 1);

  sub_1AAF8E124();
  v31 = sub_1AAF8E974();
  v33 = v32;
  sub_1AAD04750(v28, v29, v30 & 1);

  v23(v7, v58);
  v34 = sub_1AAF13498(v56, v57, v31, v33, v59, v60, v62);

  if (!v34)
  {
    swift_unknownObjectRelease();
LABEL_27:

LABEL_28:
    sub_1AAEDCEC4(&v64);
    return 0;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v36 = v35;
  v37 = sub_1AAF7C3F4();

  v38 = *(v37 + 16);
  if (v38)
  {
    v59 = v36;
    v63[0] = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    v40 = 0;
    v41 = (v37 + 80);
    v60 = v38;
    v61 = v37;
    while (v40 < *(v37 + 16))
    {
      ++v40;
      v42 = *(v41 - 6);
      v43 = *(v41 - 5);
      v44 = *(v41 - 32);
      v45 = *(v41 - 2);
      v46 = *(v41 - 8);
      v47 = *v41;
      v41 += 7;
      sub_1AACD7304(v42, v43, v44);

      sub_1AAF144A4(v45, v46, v47, v62);
      v48 = v43;
      v49 = v60;
      sub_1AAD04750(v42, v48, v44);

      sub_1AAF901B4();
      sub_1AAF901F4();
      v37 = v61;
      sub_1AAF90204();
      result = sub_1AAF901C4();
      if (v49 == v40)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    sub_1AAD59D08(0, &qword_1ED9B4480, 0x1E6959550);
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    v52 = sub_1AAF8F624();
    v53 = [v51 localizedStringForKey:v52 value:0 table:0];

    sub_1AAF8F634();
    v54 = sub_1AAF8FD84();
    sub_1AAEDCEC4(&v64);
    return v54;
  }

  return result;
}

uint64_t sub_1AAF11448(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(a5 + 32);
  v8 = *(a5 + 40);
  v9 = *(a5 + 48);
  sub_1AACD7304(v7, v8, v9);

  v10 = v5 - 1;
  if (v5 == 1)
  {
    return v7;
  }

  v12 = a5 + 88;
  v13 = v7;
  do
  {
    v28 = v13;
    v30 = v10;
    v14 = *(v12 - 24);
    v15 = *(v12 - 16);
    v16 = *(v12 - 8);
    v12 += 32;
    sub_1AACD7304(v14, v15, v16);

    v29 = v9;
    v17 = sub_1AAF8EA04();
    v19 = v18;
    v21 = v20;
    v22 = sub_1AAF8EA04();
    v26 = v23;
    v27 = v22;
    v25 = v24;
    sub_1AAD04750(v17, v19, v21 & 1);

    sub_1AAD04750(v14, v15, v16);

    sub_1AAD04750(v28, v8, v29 & 1);

    result = v27;
    v13 = v27;
    v8 = v26;
    v9 = v25;
    v10 = v30 - 1;
  }

  while (v30 != 1);
  return result;
}

void sub_1AAF1161C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = *(a5 + 16);
  if (v6 != a6)
  {
    if (v6 > a6)
    {
      v50 = a5 + 32;
      v7 = (a5 + 32 + 32 * a6);
      v8 = v7[3];
      if (!v8)
      {
LABEL_32:
        __break(1u);
        return;
      }

      v9 = v7[1];
      v55 = *v7;
      v10 = v7[2];
      v11 = a6 + 1;
      v12 = (a5 + 32 * a6 + 88);
      while (1)
      {
        if (v6 == v11)
        {
          goto LABEL_10;
        }

        v13 = *v12;
        if (*v12)
        {
          break;
        }

        v12 += 4;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_10:

          sub_1AADA61DC(v55, v9, v10, v8);
LABEL_11:

          return;
        }
      }

      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *(v12 - 3);
      swift_bridgeObjectRetain_n();
      sub_1AADA61DC(v55, v9, v10, v8);
      sub_1AADA61DC(v17, v15, v16, v13);
      sub_1AAD04750(v17, v15, v16 & 1);

      v18 = v10;
      v19 = v9;
      v20 = v55;
      v49 = v6;
      while (v11 < v6)
      {
        v35 = (v50 + 32 * v11);
        v36 = v35[3];
        if (!v36)
        {
          goto LABEL_31;
        }

        v21 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_27;
        }

        if (v6 < v21)
        {
          goto LABEL_28;
        }

        if (v21 < 0)
        {
          goto LABEL_29;
        }

        v37 = *v35;
        v38 = v35[1];
        v39 = v35[2];
        v56 = v18;
        v54 = v20;
        v53 = v38;
        if (v21 == v6)
        {
LABEL_13:
          v21 = v6;
          v22 = v37;
          sub_1AADA61DC(v37, v38, v39, v36);
        }

        else
        {
          v40 = a5 + 88 + 32 * v11;
          v41 = v40;
          while (1)
          {
            v43 = *v41;
            v41 += 4;
            v42 = v43;
            if (v43)
            {
              break;
            }

            ++v21;
            v40 = v41;
            if (v6 == v21)
            {
              goto LABEL_13;
            }
          }

          v44 = *(v40 - 8);
          v52 = *(v40 - 16);
          v45 = *(v40 - 24);
          v46 = v37;
          v47 = v38;

          v22 = v46;
          sub_1AADA61DC(v46, v47, v39, v36);
          sub_1AADA61DC(v45, v52, v44, v42);
          sub_1AAD04750(v45, v52, v44 & 1);
        }

        v23 = sub_1AAF8EA04();
        v25 = v24;
        v27 = v26;
        v51 = v19;
        v28 = v39 & 1;
        v29 = sub_1AAF8EA04();
        v31 = v30;
        v33 = v32;
        v34 = v23;
        v20 = v29;
        sub_1AAD04750(v34, v25, v27 & 1);

        sub_1AAD04750(v22, v53, v28);

        sub_1AAD04750(v54, v51, v56 & 1);

        v18 = v33;
        v19 = v31;
        v11 = v21;
        v6 = v49;
        if (v21 == v49)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }
}

__n128 sub_1AAF119A4(uint64_t a1, char **a2)
{
  v2 = a1;
  v3 = *(a1 + 240);
  v203 = *(a1 + 224);
  v204 = v3;
  v205 = *(a1 + 256);
  v206 = *(a1 + 272);
  v4 = *(a1 + 176);
  v199 = *(a1 + 160);
  v200 = v4;
  v5 = *(a1 + 208);
  v201 = *(a1 + 192);
  v202 = v5;
  v6 = *(a1 + 144);
  v197 = *(a1 + 128);
  v198 = v6;
  if (sub_1AAED0054(&v197) == 1)
  {
    goto LABEL_6;
  }

  v187 = v203;
  v188 = v204;
  v189 = v205;
  v190 = v206;
  v183 = v199;
  v184 = v200;
  v185 = v201;
  v186 = v202;
  v181 = v197;
  v182 = v198;
  v7 = sub_1AAF14CF0(&v181);
  if (v7 > 1)
  {
    sub_1AACBC764(&v181);
LABEL_6:
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v191 = 9;
    v196 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    v15 = sub_1AACBC764(&v181);
    v9 = *v15;
    v10 = *(v15 + 72) & 0xFB | 0x8000000000000000;
    v144 = *(v15 + 40);
    v145 = *(v15 + 8);
    v137 = *(v15 + 56);
    v141 = *(v15 + 24);
    v16 = *(v2 + 176);
    v173 = *(v2 + 160);
    v174 = v16;
    v17 = *(v2 + 144);
    __dst = *(v2 + 128);
    v172 = v17;
    v18 = *(v2 + 208);
    v175 = *(v2 + 192);
    v176 = v18;
    v180 = *(v2 + 272);
    v19 = *(v2 + 256);
    v178 = *(v2 + 240);
    v179 = v19;
    v177 = *(v2 + 224);
  }

  else
  {
    v8 = sub_1AACBC764(&v181);
    v9 = *v8;
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v144 = *(v8 + 40);
    v145 = *(v8 + 8);
    v137 = *(v8 + 56);
    v141 = *(v8 + 24);
    v11 = *(v2 + 176);
    v173 = *(v2 + 160);
    v174 = v11;
    v12 = *(v2 + 208);
    v175 = *(v2 + 192);
    v176 = v12;
    v180 = *(v2 + 272);
    v13 = *(v2 + 256);
    v178 = *(v2 + 240);
    v179 = v13;
    v177 = *(v2 + 224);
    v14 = *(v2 + 144);
    __dst = *(v2 + 128);
    v172 = v14;
  }

  sub_1AAD81BF4(&__dst, &v161);
  LOBYTE(v191) = v9;
  v193 = v141;
  v192 = v145;
  v195 = v137;
  v194 = v144;
  v196 = v10;
LABEL_9:
  v20 = (v2 + 440);
  v190 = *(v2 + 584);
  v21 = *(v2 + 552);
  v187 = *(v2 + 536);
  v188 = v21;
  v189 = *(v2 + 568);
  v22 = *(v2 + 488);
  v183 = *(v2 + 472);
  v184 = v22;
  v23 = *(v2 + 520);
  v185 = *(v2 + 504);
  v186 = v23;
  v24 = *(v2 + 456);
  v181 = *(v2 + 440);
  v182 = v24;
  v128 = v2;
  if (sub_1AAED0054(&v181) == 1)
  {
LABEL_14:
    v146 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v177 = v187;
  v178 = v188;
  v179 = v189;
  v180 = v190;
  v173 = v183;
  v174 = v184;
  v175 = v185;
  v176 = v186;
  __dst = v181;
  v172 = v182;
  v25 = sub_1AAF14CF0(&__dst);
  if (v25 > 1)
  {
    sub_1AACBC764(&__dst);
    goto LABEL_14;
  }

  if (v25)
  {
    v33 = sub_1AACBC764(&__dst);
    v27 = *v33;
    v142 = *(v33 + 24);
    v144 = *(v33 + 8);
    v134 = *(v33 + 56);
    v138 = *(v33 + 40);
    v28 = *(v33 + 72) & 0xFB | 0x8000000000000000;
    v34 = *(v2 + 488);
    v163 = *(v2 + 472);
    v164 = v34;
    v35 = *(v2 + 456);
    v161 = *v20;
    v162 = v35;
    v36 = *(v2 + 520);
    v165 = *(v2 + 504);
    v166 = v36;
    v170 = *(v2 + 584);
    v37 = *(v2 + 568);
    v168 = *(v2 + 552);
    v169 = v37;
    v167 = *(v2 + 536);
  }

  else
  {
    v26 = sub_1AACBC764(&__dst);
    v27 = *v26;
    v142 = *(v26 + 24);
    v144 = *(v26 + 8);
    v134 = *(v26 + 56);
    v138 = *(v26 + 40);
    v28 = *(v26 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v29 = *(v2 + 488);
    v163 = *(v2 + 472);
    v164 = v29;
    v30 = *(v2 + 520);
    v165 = *(v2 + 504);
    v166 = v30;
    v170 = *(v2 + 584);
    v31 = *(v2 + 568);
    v168 = *(v2 + 552);
    v169 = v31;
    v167 = *(v2 + 536);
    v32 = *(v2 + 456);
    v161 = *v20;
    v162 = v32;
  }

  sub_1AAD81BF4(&v161, v154);
  v38 = sub_1AAD6A4CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  v146 = v38;
  if (v40 >= v39 >> 1)
  {
    v146 = sub_1AAD6A4CC((v39 > 1), v40 + 1, 1, v38);
  }

  *(v146 + 2) = v40 + 1;
  v41 = &v146[80 * v40];
  v41[32] = v27;
  *(v41 + 56) = v142;
  *(v41 + 40) = v144;
  *(v41 + 88) = v134;
  *(v41 + 72) = v138;
  *(v41 + 13) = v28;
  v2 = v128;
LABEL_19:
  v42 = *(v2 + 120);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    v143 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = *(v44 + 1);
      v161 = *v44;
      v162 = v45;
      v46 = v44[2];
      v47 = v44[3];
      v48 = v44[5];
      v165 = v44[4];
      v166 = v48;
      v163 = v46;
      v164 = v47;
      v49 = v44[6];
      v50 = v44[7];
      v51 = v44[8];
      v170 = *(v44 + 18);
      v168 = v50;
      v169 = v51;
      v167 = v49;
      memmove(&__dst, v44, 0x98uLL);
      v52 = sub_1AAF14CF0(&__dst);
      if (v52 <= 1)
      {
        break;
      }

      sub_1AACBC764(&__dst);
LABEL_22:
      v44 = (v44 + 152);
      if (!--v43)
      {
        goto LABEL_53;
      }
    }

    if (v52)
    {
      v65 = sub_1AACBC764(&__dst);
      v66 = *v65;
      v68 = *(v65 + 8);
      v67 = *(v65 + 16);
      v69 = *(v65 + 24);
      v131 = *(v65 + 32);
      v133 = *(v65 + 40);
      v136 = *(v65 + 48);
      v70 = *(v65 + 64);
      v140 = *(v65 + 56);
      v71 = *(v65 + 72);
      *&v144 = v144 & 0xFFFFFFFFFFFFF00 | v71 & 0xFFFFFFFFFFFFFFFBLL | 0x8000000000000000;
      if ((v71 & 0x80) != 0 || v71 == 2)
      {
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v77 = sub_1AACBC764(v154);
        sub_1AAD81BF4(&v161, &v147);
        sub_1AAF14A78(v77, &v147, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v74 = *(v146 + 2);
        v78 = *(v146 + 3);
        v75 = v74 + 1;
        if (v74 >= v78 >> 1)
        {
          v146 = sub_1AAD6A4CC((v78 > 1), v74 + 1, 1, v146);
        }

        sub_1AAD81C50(&v161);
        v76 = v146;
      }

      else
      {
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v72 = sub_1AACBC764(v154);
        sub_1AAD81BF4(&v161, &v147);
        sub_1AAF14A78(v72, &v147, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1AAD6A4CC(0, *(v143 + 2) + 1, 1, v143);
        }

        v74 = *(v143 + 2);
        v73 = *(v143 + 3);
        v75 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v143 = sub_1AAD6A4CC((v73 > 1), v74 + 1, 1, v143);
        }

        sub_1AAD81C50(&v161);
        v76 = v143;
      }

      *(v76 + 2) = v75;
      v79 = &v76[80 * v74];
      v79[32] = v66;
      v80 = v153[0];
      *(v79 + 9) = *(v153 + 3);
      *(v79 + 33) = v80;
      *(v79 + 5) = v68;
      *(v79 + 6) = v67;
      *(v79 + 7) = v69;
      *(v79 + 8) = v131;
      *(v79 + 9) = v133;
      *(v79 + 10) = v136;
      *(v79 + 11) = v140;
      *(v79 + 12) = v70;
      *(v79 + 13) = v144;
      goto LABEL_22;
    }

    v53 = sub_1AACBC764(&__dst);
    v129 = *v53;
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
    v56 = *(v53 + 24);
    v58 = *(v53 + 40);
    v57 = *(v53 + 48);
    v59 = *(v53 + 56);
    v60 = *(v53 + 32);
    v130 = *(v53 + 24);
    v132 = *(v53 + 56);
    v139 = *(v53 + 64);
    v135 = *(v53 + 72) & 0xFFFFFFFFFFFFFFBLL;
    if ((v59 & 0x80000000) == 0)
    {
      if (v59 != 2)
      {
        sub_1AAD81BF4(&v161, v154);
        sub_1AACD7304(v55, v54, v56);

        sub_1AACD7C50(v58, v57, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1AAD6A4CC(0, *(v143 + 2) + 1, 1, v143);
        }

        v62 = *(v143 + 2);
        v81 = *(v143 + 3);
        v63 = v62 + 1;
        if (v62 >= v81 >> 1)
        {
          v143 = sub_1AAD6A4CC((v81 > 1), v62 + 1, 1, v143);
        }

        sub_1AAD81C50(&v161);
        v64 = v143;
        goto LABEL_51;
      }

      sub_1AACCAE10(v58, v57, 2);
    }

    sub_1AAD81BF4(&v161, v154);
    sub_1AACD7304(v55, v54, v56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
    }

    v62 = *(v146 + 2);
    v61 = *(v146 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v146 = sub_1AAD6A4CC((v61 > 1), v62 + 1, 1, v146);
    }

    sub_1AAD81C50(&v161);
    v64 = v146;
LABEL_51:
    *(v64 + 2) = v63;
    v82 = &v64[80 * v62];
    v82[32] = v129;
    v83 = v147;
    *(v82 + 9) = *(&v147 + 3);
    *(v82 + 33) = v83;
    *(v82 + 5) = v55;
    *(v82 + 6) = v54;
    *(v82 + 7) = v130;
    *(v82 + 8) = v60;
    *(v82 + 9) = v58;
    *(v82 + 10) = v57;
    *(v82 + 11) = v132;
    *(v82 + 12) = v139;
    *(v82 + 13) = v135;
    goto LABEL_22;
  }

  v143 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v84 = *(v128 + 280);
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = (v84 + 32);
    v147 = 9;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
    for (i = v85 - 1; ; --i)
    {
      v88 = *(v86 + 1);
      v161 = *v86;
      v162 = v88;
      v89 = v86[2];
      v90 = v86[3];
      v91 = v86[5];
      v165 = v86[4];
      v166 = v91;
      v163 = v89;
      v164 = v90;
      v92 = v86[6];
      v93 = v86[7];
      v94 = v86[8];
      v170 = *(v86 + 18);
      v168 = v93;
      v169 = v94;
      v167 = v92;
      memmove(&__dst, v86, 0x98uLL);
      v95 = sub_1AAF14CF0(&__dst);
      if (v95 > 1)
      {
        sub_1AACBC764(&__dst);
        v101 = v147;
        v160[0] = *(&v147 + 1);
        *(v160 + 3) = HIDWORD(v147);
        v105 = v148;
        v106 = v149;
        v107 = v150;
        v108 = v151;
        v109 = v152;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      else if (v95)
      {
        v110 = sub_1AACBC764(&__dst);
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v111 = sub_1AACBC764(v154);
        sub_1AAF14A78(v111, v153, sub_1AAF14CFC);
        sub_1AAF1496C(&v147, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v101 = *v110;
        v105 = *(v110 + 8);
        v106 = *(v110 + 24);
        v107 = *(v110 + 40);
        v108 = *(v110 + 56);
        v109 = v144 & 0xFFFFFFFFFFFFF00 | *(v110 + 72) & 0xFB | 0x8000000000000000;
        *&v144 = v109;
        if (!i)
        {
LABEL_63:
          v154[0] = v101;
          *&v154[1] = v160[0];
          *&v154[4] = *(v160 + 3);
          *&v154[8] = v105;
          *&v154[24] = v106;
          *&v154[40] = v107;
          *&v154[56] = v108;
          *&v154[72] = v109;
          goto LABEL_65;
        }
      }

      else
      {
        v96 = sub_1AACBC764(&__dst);
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v97 = sub_1AACBC764(v154);
        v98 = *(v97 + 40);
        v99 = *(v97 + 48);
        v100 = *(v97 + 56);
        sub_1AACD7304(*(v97 + 8), *(v97 + 16), *(v97 + 24));

        sub_1AACD7C50(v98, v99, v100);
        sub_1AAF1496C(&v147, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v101 = *v96;
        v102 = *(v96 + 40);
        v103 = *(v96 + 48);
        v104 = *(v96 + 56);
        sub_1AACD7304(*(v96 + 8), *(v96 + 16), *(v96 + 24));

        sub_1AACD7C50(v102, v103, v104);
        sub_1AAD81C50(&v161);
        v105 = *(v96 + 8);
        v106 = *(v96 + 24);
        v107 = *(v96 + 40);
        v108 = *(v96 + 56);
        v109 = *(v96 + 72) & 0xFFFFFFFFFFFFFFBLL;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v147) = v101;
      *(&v147 + 1) = v160[0];
      HIDWORD(v147) = *(v160 + 3);
      v148 = v105;
      v149 = v106;
      v150 = v107;
      v151 = v108;
      v152 = v109;
      v86 = (v86 + 152);
    }
  }

  memset(&v154[8], 0, 72);
  *v154 = 9;
LABEL_65:
  v112 = v191;
  if (v191 == 9)
  {
    v113 = MEMORY[0x1E69E6720];
    v114 = v154;
LABEL_69:
    sub_1AAF1496C(v114, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, v113);

    return result;
  }

  v115 = *v154;
  if (v154[0] == 9)
  {
    v113 = MEMORY[0x1E69E6720];
    v114 = &v191;
    goto LABEL_69;
  }

  v117 = *(v128 + 592);
  v173 = v194;
  v174 = v195;
  *&v175 = v196;
  __dst = v192;
  v172 = v193;
  v163 = *&v154[40];
  v164 = *&v154[56];
  *&v165 = *&v154[72];
  v161 = *&v154[8];
  v162 = *&v154[24];
  v118 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v118 = sub_1AAD6A38C(0, *(v118 + 2) + 1, 1, v118);
  }

  v120 = *(v118 + 2);
  v119 = *(v118 + 3);
  if (v120 >= v119 >> 1)
  {
    v118 = sub_1AAD6A38C((v119 > 1), v120 + 1, 1, v118);
  }

  *(v118 + 2) = v120 + 1;
  v121 = &v118[184 * v120];
  *(v121 + 4) = v112;
  *(v121 + 40) = __dst;
  v122 = v172;
  v123 = v173;
  v124 = v175;
  *(v121 + 88) = v174;
  *(v121 + 72) = v123;
  *(v121 + 56) = v122;
  *(v121 + 13) = v124;
  *(v121 + 14) = v115;
  *(v121 + 120) = v161;
  result = v162;
  v125 = v163;
  v126 = v165;
  *(v121 + 168) = v164;
  *(v121 + 152) = v125;
  *(v121 + 136) = result;
  *(v121 + 23) = v126;
  *(v121 + 24) = v146;
  *(v121 + 25) = v143;
  v121[208] = v117;
  *a2 = v118;
  return result;
}

__n128 sub_1AAF12708(uint64_t a1, char **a2)
{
  v2 = a1;
  v3 = *(a1 + 152);
  v206 = *(a1 + 136);
  v207 = v3;
  v208 = *(a1 + 168);
  v209 = *(a1 + 184);
  v4 = *(a1 + 88);
  v202 = *(a1 + 72);
  v203 = v4;
  v5 = *(a1 + 120);
  v204 = *(a1 + 104);
  v205 = v5;
  v6 = *(a1 + 56);
  v200 = *(a1 + 40);
  v201 = v6;
  if (sub_1AAED0054(&v200) == 1)
  {
    goto LABEL_6;
  }

  v190 = v206;
  v191 = v207;
  v192 = v208;
  v193 = v209;
  v186 = v202;
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v184 = v200;
  v185 = v201;
  v7 = sub_1AAF14CF0(&v184);
  if (v7 > 1)
  {
    sub_1AACBC764(&v184);
LABEL_6:
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v194 = 9;
    v199 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    v17 = sub_1AACBC764(&v184);
    v9 = *v17;
    v10 = *(v17 + 72) & 0xFB | 0x8000000000000000;
    v147 = *(v17 + 40);
    v148 = *(v17 + 8);
    v140 = *(v17 + 56);
    v144 = *(v17 + 24);
    v18 = *(v2 + 40);
    v19 = *(v2 + 88);
    v176 = *(v2 + 72);
    v177 = v19;
    v20 = *(v2 + 56);
    __dst = v18;
    v175 = v20;
    v21 = *(v2 + 120);
    v178 = *(v2 + 104);
    v179 = v21;
    v183 = *(v2 + 184);
    v22 = *(v2 + 168);
    v23 = *(v2 + 136);
    v181 = *(v2 + 152);
    v182 = v22;
    v180 = v23;
  }

  else
  {
    v8 = sub_1AACBC764(&v184);
    v9 = *v8;
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v147 = *(v8 + 40);
    v148 = *(v8 + 8);
    v140 = *(v8 + 56);
    v144 = *(v8 + 24);
    v11 = *(v2 + 40);
    v12 = *(v2 + 88);
    v176 = *(v2 + 72);
    v177 = v12;
    v13 = *(v2 + 120);
    v178 = *(v2 + 104);
    v179 = v13;
    v183 = *(v2 + 184);
    v14 = *(v2 + 168);
    v15 = *(v2 + 136);
    v181 = *(v2 + 152);
    v182 = v14;
    v180 = v15;
    v16 = *(v2 + 56);
    __dst = v11;
    v175 = v16;
  }

  sub_1AAD81BF4(&__dst, &v164);
  LOBYTE(v194) = v9;
  v196 = v144;
  v195 = v148;
  v198 = v140;
  v197 = v147;
  v199 = v10;
LABEL_9:
  v24 = *(v2 + 464);
  v190 = *(v2 + 448);
  v191 = v24;
  v192 = *(v2 + 480);
  v193 = *(v2 + 496);
  v25 = *(v2 + 400);
  v186 = *(v2 + 384);
  v187 = v25;
  v26 = *(v2 + 432);
  v188 = *(v2 + 416);
  v189 = v26;
  v27 = *(v2 + 368);
  v184 = *(v2 + 352);
  v185 = v27;
  v131 = v2;
  if (sub_1AAED0054(&v184) == 1)
  {
LABEL_14:
    v149 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v180 = v190;
  v181 = v191;
  v182 = v192;
  v183 = v193;
  v176 = v186;
  v177 = v187;
  v178 = v188;
  v179 = v189;
  __dst = v184;
  v175 = v185;
  v28 = sub_1AAF14CF0(&__dst);
  if (v28 > 1)
  {
    sub_1AACBC764(&__dst);
    goto LABEL_14;
  }

  if (v28)
  {
    v36 = sub_1AACBC764(&__dst);
    v30 = *v36;
    v145 = *(v36 + 24);
    v147 = *(v36 + 8);
    v137 = *(v36 + 56);
    v141 = *(v36 + 40);
    v31 = *(v36 + 72) & 0xFB | 0x8000000000000000;
    v37 = *(v2 + 400);
    v166 = *(v2 + 384);
    v167 = v37;
    v38 = *(v2 + 368);
    v164 = *(v2 + 352);
    v165 = v38;
    v39 = *(v2 + 432);
    v168 = *(v2 + 416);
    v169 = v39;
    v173 = *(v2 + 496);
    v40 = *(v2 + 480);
    v171 = *(v2 + 464);
    v172 = v40;
    v170 = *(v2 + 448);
  }

  else
  {
    v29 = sub_1AACBC764(&__dst);
    v30 = *v29;
    v145 = *(v29 + 24);
    v147 = *(v29 + 8);
    v137 = *(v29 + 56);
    v141 = *(v29 + 40);
    v31 = *(v29 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v32 = *(v2 + 400);
    v166 = *(v2 + 384);
    v167 = v32;
    v33 = *(v2 + 432);
    v168 = *(v2 + 416);
    v169 = v33;
    v173 = *(v2 + 496);
    v34 = *(v2 + 480);
    v171 = *(v2 + 464);
    v172 = v34;
    v170 = *(v2 + 448);
    v35 = *(v2 + 368);
    v164 = *(v2 + 352);
    v165 = v35;
  }

  sub_1AAD81BF4(&v164, v157);
  v41 = sub_1AAD6A4CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  v149 = v41;
  if (v43 >= v42 >> 1)
  {
    v149 = sub_1AAD6A4CC((v42 > 1), v43 + 1, 1, v41);
  }

  *(v149 + 2) = v43 + 1;
  v44 = &v149[80 * v43];
  v44[32] = v30;
  *(v44 + 56) = v145;
  *(v44 + 40) = v147;
  *(v44 + 88) = v137;
  *(v44 + 72) = v141;
  *(v44 + 13) = v31;
  v2 = v131;
LABEL_19:
  v45 = *(v2 + 32);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 32);
    v146 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v48 = *(v47 + 1);
      v164 = *v47;
      v165 = v48;
      v49 = v47[2];
      v50 = v47[3];
      v51 = v47[5];
      v168 = v47[4];
      v169 = v51;
      v166 = v49;
      v167 = v50;
      v52 = v47[6];
      v53 = v47[7];
      v54 = v47[8];
      v173 = *(v47 + 18);
      v171 = v53;
      v172 = v54;
      v170 = v52;
      memmove(&__dst, v47, 0x98uLL);
      v55 = sub_1AAF14CF0(&__dst);
      if (v55 <= 1)
      {
        break;
      }

      sub_1AACBC764(&__dst);
LABEL_22:
      v47 = (v47 + 152);
      if (!--v46)
      {
        goto LABEL_53;
      }
    }

    if (v55)
    {
      v68 = sub_1AACBC764(&__dst);
      v69 = *v68;
      v71 = *(v68 + 8);
      v70 = *(v68 + 16);
      v72 = *(v68 + 24);
      v134 = *(v68 + 32);
      v136 = *(v68 + 40);
      v139 = *(v68 + 48);
      v73 = *(v68 + 64);
      v143 = *(v68 + 56);
      v74 = *(v68 + 72);
      *&v147 = v147 & 0xFFFFFFFFFFFFF00 | v74 & 0xFFFFFFFFFFFFFFFBLL | 0x8000000000000000;
      if ((v74 & 0x80) != 0 || v74 == 2)
      {
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v80 = sub_1AACBC764(v157);
        sub_1AAD81BF4(&v164, &v150);
        sub_1AAF14A78(v80, &v150, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1AAD6A4CC(0, *(v149 + 2) + 1, 1, v149);
        }

        v77 = *(v149 + 2);
        v81 = *(v149 + 3);
        v78 = v77 + 1;
        if (v77 >= v81 >> 1)
        {
          v149 = sub_1AAD6A4CC((v81 > 1), v77 + 1, 1, v149);
        }

        sub_1AAD81C50(&v164);
        v79 = v149;
      }

      else
      {
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v75 = sub_1AACBC764(v157);
        sub_1AAD81BF4(&v164, &v150);
        sub_1AAF14A78(v75, &v150, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v77 = *(v146 + 2);
        v76 = *(v146 + 3);
        v78 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v146 = sub_1AAD6A4CC((v76 > 1), v77 + 1, 1, v146);
        }

        sub_1AAD81C50(&v164);
        v79 = v146;
      }

      *(v79 + 2) = v78;
      v82 = &v79[80 * v77];
      v82[32] = v69;
      v83 = v156[0];
      *(v82 + 9) = *(v156 + 3);
      *(v82 + 33) = v83;
      *(v82 + 5) = v71;
      *(v82 + 6) = v70;
      *(v82 + 7) = v72;
      *(v82 + 8) = v134;
      *(v82 + 9) = v136;
      *(v82 + 10) = v139;
      *(v82 + 11) = v143;
      *(v82 + 12) = v73;
      *(v82 + 13) = v147;
      goto LABEL_22;
    }

    v56 = sub_1AACBC764(&__dst);
    v132 = *v56;
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
    v59 = *(v56 + 24);
    v61 = *(v56 + 40);
    v60 = *(v56 + 48);
    v62 = *(v56 + 56);
    v63 = *(v56 + 32);
    v133 = *(v56 + 24);
    v135 = *(v56 + 56);
    v142 = *(v56 + 64);
    v138 = *(v56 + 72) & 0xFFFFFFFFFFFFFFBLL;
    if ((v62 & 0x80000000) == 0)
    {
      if (v62 != 2)
      {
        sub_1AAD81BF4(&v164, v157);
        sub_1AACD7304(v58, v57, v59);

        sub_1AACD7C50(v61, v60, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v65 = *(v146 + 2);
        v84 = *(v146 + 3);
        v66 = v65 + 1;
        if (v65 >= v84 >> 1)
        {
          v146 = sub_1AAD6A4CC((v84 > 1), v65 + 1, 1, v146);
        }

        sub_1AAD81C50(&v164);
        v67 = v146;
        goto LABEL_51;
      }

      sub_1AACCAE10(v61, v60, 2);
    }

    sub_1AAD81BF4(&v164, v157);
    sub_1AACD7304(v58, v57, v59);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_1AAD6A4CC(0, *(v149 + 2) + 1, 1, v149);
    }

    v65 = *(v149 + 2);
    v64 = *(v149 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v149 = sub_1AAD6A4CC((v64 > 1), v65 + 1, 1, v149);
    }

    sub_1AAD81C50(&v164);
    v67 = v149;
LABEL_51:
    *(v67 + 2) = v66;
    v85 = &v67[80 * v65];
    v85[32] = v132;
    v86 = v150;
    *(v85 + 9) = *(&v150 + 3);
    *(v85 + 33) = v86;
    *(v85 + 5) = v58;
    *(v85 + 6) = v57;
    *(v85 + 7) = v133;
    *(v85 + 8) = v63;
    *(v85 + 9) = v61;
    *(v85 + 10) = v60;
    *(v85 + 11) = v135;
    *(v85 + 12) = v142;
    *(v85 + 13) = v138;
    goto LABEL_22;
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v87 = *(v131 + 192);
  v88 = *(v87 + 16);
  if (v88)
  {
    v89 = (v87 + 32);
    v150 = 9;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    for (i = v88 - 1; ; --i)
    {
      v91 = *(v89 + 1);
      v164 = *v89;
      v165 = v91;
      v92 = v89[2];
      v93 = v89[3];
      v94 = v89[5];
      v168 = v89[4];
      v169 = v94;
      v166 = v92;
      v167 = v93;
      v95 = v89[6];
      v96 = v89[7];
      v97 = v89[8];
      v173 = *(v89 + 18);
      v171 = v96;
      v172 = v97;
      v170 = v95;
      memmove(&__dst, v89, 0x98uLL);
      v98 = sub_1AAF14CF0(&__dst);
      if (v98 > 1)
      {
        sub_1AACBC764(&__dst);
        v104 = v150;
        v163[0] = *(&v150 + 1);
        *(v163 + 3) = HIDWORD(v150);
        v108 = v151;
        v109 = v152;
        v110 = v153;
        v111 = v154;
        v112 = v155;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      else if (v98)
      {
        v113 = sub_1AACBC764(&__dst);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v114 = sub_1AACBC764(v157);
        sub_1AAF14A78(v114, v156, sub_1AAF14CFC);
        sub_1AAF1496C(&v150, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v104 = *v113;
        v108 = *(v113 + 8);
        v109 = *(v113 + 24);
        v110 = *(v113 + 40);
        v111 = *(v113 + 56);
        v112 = v147 & 0xFFFFFFFFFFFFF00 | *(v113 + 72) & 0xFB | 0x8000000000000000;
        *&v147 = v112;
        if (!i)
        {
LABEL_63:
          v157[0] = v104;
          *&v157[1] = v163[0];
          *&v157[4] = *(v163 + 3);
          *&v157[8] = v108;
          *&v157[24] = v109;
          *&v157[40] = v110;
          *&v157[56] = v111;
          *&v157[72] = v112;
          goto LABEL_65;
        }
      }

      else
      {
        v99 = sub_1AACBC764(&__dst);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v100 = sub_1AACBC764(v157);
        v101 = *(v100 + 40);
        v102 = *(v100 + 48);
        v103 = *(v100 + 56);
        sub_1AACD7304(*(v100 + 8), *(v100 + 16), *(v100 + 24));

        sub_1AACD7C50(v101, v102, v103);
        sub_1AAF1496C(&v150, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v104 = *v99;
        v105 = *(v99 + 40);
        v106 = *(v99 + 48);
        v107 = *(v99 + 56);
        sub_1AACD7304(*(v99 + 8), *(v99 + 16), *(v99 + 24));

        sub_1AACD7C50(v105, v106, v107);
        sub_1AAD81C50(&v164);
        v108 = *(v99 + 8);
        v109 = *(v99 + 24);
        v110 = *(v99 + 40);
        v111 = *(v99 + 56);
        v112 = *(v99 + 72) & 0xFFFFFFFFFFFFFFBLL;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v150) = v104;
      *(&v150 + 1) = v163[0];
      HIDWORD(v150) = *(v163 + 3);
      v151 = v108;
      v152 = v109;
      v153 = v110;
      v154 = v111;
      v155 = v112;
      v89 = (v89 + 152);
    }
  }

  memset(&v157[8], 0, 72);
  *v157 = 9;
LABEL_65:
  v115 = v194;
  if (v194 == 9)
  {
    v116 = MEMORY[0x1E69E6720];
    v117 = v157;
LABEL_69:
    sub_1AAF1496C(v117, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, v116);

    return result;
  }

  v118 = *v157;
  if (v157[0] == 9)
  {
    v116 = MEMORY[0x1E69E6720];
    v117 = &v194;
    goto LABEL_69;
  }

  v120 = *(v131 + 505);
  v176 = v197;
  v177 = v198;
  *&v178 = v199;
  __dst = v195;
  v175 = v196;
  v166 = *&v157[40];
  v167 = *&v157[56];
  *&v168 = *&v157[72];
  v164 = *&v157[8];
  v165 = *&v157[24];
  v121 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v121 = sub_1AAD6A38C(0, *(v121 + 2) + 1, 1, v121);
  }

  v123 = *(v121 + 2);
  v122 = *(v121 + 3);
  if (v123 >= v122 >> 1)
  {
    v121 = sub_1AAD6A38C((v122 > 1), v123 + 1, 1, v121);
  }

  *(v121 + 2) = v123 + 1;
  v124 = &v121[184 * v123];
  *(v124 + 4) = v115;
  *(v124 + 40) = __dst;
  v125 = v175;
  v126 = v176;
  v127 = v178;
  *(v124 + 88) = v177;
  *(v124 + 72) = v126;
  *(v124 + 56) = v125;
  *(v124 + 13) = v127;
  *(v124 + 14) = v118;
  *(v124 + 120) = v164;
  result = v165;
  v128 = v166;
  v129 = v168;
  *(v124 + 168) = v167;
  *(v124 + 152) = v128;
  *(v124 + 136) = result;
  *(v124 + 23) = v129;
  *(v124 + 24) = v149;
  *(v124 + 25) = v146;
  v124[208] = v120;
  *a2 = v121;
  return result;
}

id sub_1AAF13498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v9 = a1;
  sub_1AAF138CC(a1, a2, a5, a6, v35);
  if (sub_1AAE3929C(v35) == 1)
  {
    return 0;
  }

  *&v34[9] = *(v36 + 9);
  v32 = v35[4];
  v33 = v35[5];
  *v34 = v36[0];
  v30[0] = v35[0];
  v30[1] = v35[1];
  v30[2] = v35[2];
  v31 = v35[3];
  if (!v8)
  {
    if ((v34[8] & 1) == 0)
    {
      if (!BYTE8(v36[1]))
      {
        v10 = v31;
        if (*(a7 + 16) && (v19 = sub_1AACE1760(v9), (v20 & 1) != 0) && (sub_1AACE0A98(*(a7 + 56) + 48 * v19, &v24), v13 = v25[24], v25[24] != 255))
        {
          v26 = v24;
          v27 = *v25;
          v28 = *&v25[16];
        }

        else
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          v13 = 3;
        }

        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);

    return 0;
  }

  if (v8 != 1)
  {

    if (v34[8])
    {
      v14 = objc_allocWithZone(MEMORY[0x1E6959548]);

      v15 = sub_1AAF8F624();
      v16 = sub_1AAF8F824();

      v17 = [v14 initWithTitle:v15 categoryOrder:v16];

      sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      return v17;
    }

    goto LABEL_16;
  }

  if (v34[8])
  {
    goto LABEL_11;
  }

  if (BYTE8(v36[1]) != 1)
  {
LABEL_15:

LABEL_16:
    sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    return 0;
  }

  v10 = v31;
  if (*(a7 + 16) && (v11 = sub_1AACE1760(v9), (v12 & 1) != 0) && (sub_1AACE0A98(*(a7 + 56) + 48 * v11, &v24), v13 = v25[24], v25[24] != 255))
  {
    v26 = v24;
    v27 = *v25;
    v28 = *&v25[16];
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v13 = 3;
  }

LABEL_24:
  v29 = v13;
  sub_1AACEC978(v10);
  sub_1AAD59D08(0, &qword_1ED9B11C0, 0x1E69595F0);
  sub_1AACE0A98(&v26, &v24);
  v21 = swift_allocObject();
  v22 = *v25;
  v21[1] = v24;
  v21[2] = v22;
  *(v21 + 41) = *&v25[9];

  v23 = sub_1AAF8FE24();
  sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  sub_1AAD57C94(&v26);
  return v23;
}

void sub_1AAF138CC(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!*(a3 + 16) || (v10 = sub_1AACB6398(a1), (v11 & 1) == 0) || (v12 = *(a3 + 56) + 112 * v10, v14 = *(v12 + 16), v13 = *(v12 + 32), v76 = *v12, v77 = v14, v78 = v13, v16 = *(v12 + 64), v15 = *(v12 + 80), v17 = *(v12 + 48), *&v81[9] = *(v12 + 89), v80 = v16, *v81 = v15, v79 = v17, v18 = *(v12 + 16), v82 = *v12, v83 = v18, v19 = *(v12 + 32), v20 = *(v12 + 48), v21 = *(v12 + 64), v22 = *(v12 + 80), v88 = *(v12 + 96), v86 = v21, v87 = v22, v84 = v19, v85 = v20, v23 = v81[24], v81[24] == 255))
  {
    sub_1AAF149C8(&v89);
LABEL_11:
    v31 = *v94;
    a5[4] = v93;
    a5[5] = v31;
    a5[6] = *&v94[16];
    *(a5 + 105) = *&v94[25];
    v32 = v90;
    *a5 = v89;
    a5[1] = v32;
    v33 = v92;
    a5[2] = v91;
    a5[3] = v33;
    return;
  }

  if (!*(a4 + 16) || (v24 = sub_1AACB6398(a1), (v25 & 1) == 0))
  {
    if (a2)
    {
      v93 = v80;
      *v94 = *v81;
      *&v94[9] = *&v81[9];
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v92 = v79;
      sub_1AAF149F0(&v89, &v69);
      if (a2 == 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }
    }

    else
    {
      v93 = v80;
      *v94 = *v81;
      *&v94[9] = *&v81[9];
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v92 = v79;
      sub_1AAF149F0(&v89, &v69);
      v34 = 0;
    }

    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v26 = *(*(a4 + 56) + 8 * v24);
  v27 = *(v26 + 16);
  if (!a2)
  {
    if (!v27)
    {
      v93 = v80;
      *v94 = *v81;
      *&v94[9] = *&v81[9];
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v92 = v79;
      sub_1AAF149F0(&v89, &v69);
      v29 = MEMORY[0x1E69E7CC0];
      v34 = 0;
LABEL_34:
      v73 = v86;
      v74 = v87;
      *v75 = v88;
      v69 = v82;
      v70 = v83;
      v71 = v84;
      v72 = v85;
      v75[8] = v23;
      *&v75[16] = v29;
      v75[24] = v34;
      nullsub_1();
      v93 = v73;
      *v94 = v74;
      *&v94[16] = *v75;
      *&v94[25] = *&v75[9];
      v89 = v69;
      v90 = v70;
      v91 = v71;
      v92 = v72;
      goto LABEL_11;
    }

    sub_1AAF14A78(&v76, &v89, sub_1AACCF364);

    v46 = (v26 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    v47 = v46;
    while (1)
    {
      v48 = *v47;
      v47 += 16;
      if (!v48)
      {
        v49 = *(v46 - 1);
        v50 = *(v49 + 16);
        v51 = *(v29 + 2);
        v52 = v51 + v50;
        if (__OFADD__(v51, v50))
        {
          goto LABEL_81;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v52 <= *(v29 + 3) >> 1)
        {
          if (*(v49 + 16))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v51 <= v52)
          {
            v54 = v51 + v50;
          }

          else
          {
            v54 = v51;
          }

          v29 = sub_1AAD67B50(isUniquelyReferenced_nonNull_native, v54, 1, v29);
          if (*(v49 + 16))
          {
LABEL_49:
            v55 = *(v29 + 2);
            if ((*(v29 + 3) >> 1) - v55 < v50)
            {
              goto LABEL_85;
            }

            memcpy(&v29[8 * v55 + 32], (v49 + 32), 8 * v50);

            if (v50)
            {
              v56 = *(v29 + 2);
              v44 = __OFADD__(v56, v50);
              v57 = v56 + v50;
              if (v44)
              {
                goto LABEL_88;
              }

              *(v29 + 2) = v57;
            }

            goto LABEL_38;
          }
        }

        if (v50)
        {
          goto LABEL_82;
        }
      }

LABEL_38:
      v46 = v47;
      if (!--v27)
      {

        v34 = 0;
        goto LABEL_34;
      }
    }
  }

  if (a2 == 1)
  {
    if (v27)
    {
      sub_1AAF14A78(&v76, &v89, sub_1AACCF364);

      v28 = (v26 + 40);
      v29 = MEMORY[0x1E69E7CC0];
      v30 = v28;
      while (1)
      {
        v35 = *v30;
        v30 += 16;
        if (v35 == 1)
        {
          v36 = *(v28 - 1);
          v37 = *(v36 + 16);
          v38 = *(v29 + 2);
          v39 = v38 + v37;
          if (__OFADD__(v38, v37))
          {
            __break(1u);
            goto LABEL_78;
          }

          v40 = swift_isUniquelyReferenced_nonNull_native();
          if (v40 && v39 <= *(v29 + 3) >> 1)
          {
            if (*(v36 + 16))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v38 <= v39)
            {
              v41 = v38 + v37;
            }

            else
            {
              v41 = v38;
            }

            v29 = sub_1AAD67B50(v40, v41, 1, v29);
            if (*(v36 + 16))
            {
LABEL_27:
              v42 = *(v29 + 2);
              if ((*(v29 + 3) >> 1) - v42 < v37)
              {
                goto LABEL_83;
              }

              memcpy(&v29[8 * v42 + 32], (v36 + 32), 8 * v37);

              if (v37)
              {
                v43 = *(v29 + 2);
                v44 = __OFADD__(v43, v37);
                v45 = v43 + v37;
                if (v44)
                {
                  goto LABEL_86;
                }

                *(v29 + 2) = v45;
              }

              goto LABEL_16;
            }
          }

          if (v37)
          {
            goto LABEL_79;
          }
        }

LABEL_16:
        v28 = v30;
        if (!--v27)
        {

          v34 = 1;
          goto LABEL_34;
        }
      }
    }

    v93 = v80;
    *v94 = *v81;
    *&v94[9] = *&v81[9];
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v92 = v79;
    sub_1AAF149F0(&v89, &v69);
    v29 = MEMORY[0x1E69E7CC0];
    v34 = 1;
    goto LABEL_34;
  }

  if (!v27)
  {
    v93 = v80;
    *v94 = *v81;
    *&v94[9] = *&v81[9];
    v89 = v76;
    v90 = v77;
    v91 = v78;
    v92 = v79;
    sub_1AAF149F0(&v89, &v69);
    v29 = MEMORY[0x1E69E7CC0];
    v34 = 2;
    goto LABEL_34;
  }

  sub_1AAF14A78(&v76, &v89, sub_1AACCF364);

  v58 = (v26 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  v59 = v58;
  while (1)
  {
    v60 = *v59;
    v59 += 16;
    if (v60 != 2)
    {
      goto LABEL_56;
    }

    v61 = *(v58 - 1);
    v62 = *(v61 + 16);
    v63 = *(v29 + 2);
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      break;
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    if (v65 && v64 <= *(v29 + 3) >> 1)
    {
      if (*(v61 + 16))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v63 <= v64)
      {
        v66 = v63 + v62;
      }

      else
      {
        v66 = v63;
      }

      v29 = sub_1AAD67908(v65, v66, 1, v29);
      if (*(v61 + 16))
      {
LABEL_67:
        if ((*(v29 + 3) >> 1) - *(v29 + 2) < v62)
        {
          goto LABEL_84;
        }

        swift_arrayInitWithCopy();

        if (v62)
        {
          v67 = *(v29 + 2);
          v44 = __OFADD__(v67, v62);
          v68 = v67 + v62;
          if (v44)
          {
            goto LABEL_87;
          }

          *(v29 + 2) = v68;
        }

        goto LABEL_56;
      }
    }

    if (v62)
    {
      goto LABEL_80;
    }

LABEL_56:
    v58 = v59;
    if (!--v27)
    {

      v34 = 2;
      goto LABEL_34;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1AAF13F58(uint64_t a1, double a2)
{
  v4 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1AAEB36F8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0A98(a1, &v21);
  if (v24 - 1 >= 2)
  {
    if (v24)
    {
      v20 = a2;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AADABA9C(v17);
      sub_1AAF8F344();
      (*(v7 + 8))(v9, v6);
      return *&v18[0];
    }

    else
    {
      v18[0] = v21;
      v18[1] = v22;
      v11 = v23;
      v19 = v23;
      v20 = a2;
      v12 = *(&v22 + 1);
      v13 = sub_1AACBB42C(v18, *(&v22 + 1));
      v14 = MEMORY[0x1E69E63B0];
      sub_1AAF7743C(v13, &v20, MEMORY[0x1E69E63B0], v12, v11);
      v16 = v15;
      sub_1AAF1496C(v18, &qword_1ED9B2790, v14, type metadata accessor for AnyFormatStyle.Wrapper);
      return v16;
    }
  }

  else
  {
    sub_1AAD57C94(&v21);
    return 0;
  }
}

void sub_1AAF14178(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1 >> 60;
  if ((a1 >> 60) > 1)
  {
    if (v7 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v31);
      v13 = v31[1];
      v14 = *(v31[1] + 16);
      if (!v14)
      {
LABEL_19:
        sub_1AAF14C40(v31);
        return;
      }

      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v13 + 32 + 8 * v15);

        sub_1AAF14178(v17, a2);

        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      if (v7 != 11)
      {
        if (v7 == 12)
        {
          memcpy(v31, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), sizeof(v31));
          swift_beginAccess();
          sub_1AAF14AE0(v31, v30);
          sub_1AAF119A4(v31, (a2 + 16));
          swift_endAccess();
          sub_1AAF14B3C(v31);
        }

        return;
      }

      memcpy(v31, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x120uLL);
      v18 = v31[34];
      v19 = *(v31[34] + 16);
      sub_1AAF14B90(v31, v30);

      if (!v19)
      {
LABEL_24:
        sub_1AAF14BEC(v31);

        return;
      }

      v20 = 0;
      while (v20 < *(v18 + 16))
      {
        v21 = v20 + 1;
        v22 = *(v18 + 32 + 8 * v20);

        sub_1AAF14178(v22, a2);

        v20 = v21;
        if (v19 == v21)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (!v7)
  {
    v23 = swift_projectBox();
    sub_1AAF14A78(v23, v6, type metadata accessor for SgGroup);
    v24 = *(v6 + 1);
    v25 = *(v24 + 16);
    if (!v25)
    {
LABEL_29:
      sub_1AAF14C94(v6);
      return;
    }

    v26 = 0;
    while (v26 < *(v24 + 16))
    {
      v27 = v26 + 1;
      v28 = *(v24 + 32 + 8 * v26);

      sub_1AAF14178(v28, a2);

      v26 = v27;
      if (v25 == v27)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  if (v7 != 1)
  {
    return;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      v11 = v10 + 1;
      v12 = *(v8 + 32 + 8 * v10);

      sub_1AAF14178(v12, a2);

      v10 = v11;
      if (v9 == v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_34;
  }

LABEL_12:
}

id sub_1AAF144A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v5 = sub_1AAF8E134();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1AAD414C0(0, v7, 0);
    v8 = v77;
    v9 = (a1 + 32);
    do
    {
      v58 = v8;
      v10 = v9[1];
      v72 = *v9;
      v73 = v10;
      v11 = v9[3];
      v74 = v9[2];
      v75 = v11;
      v76 = v9[4];
      v13 = *(&v72 + 1);
      v12 = v73;
      v14 = BYTE8(v73);
      v15 = *(&v74 + 1);
      v16 = v11;
      LOBYTE(v60) = v72;
      *(&v60 + 1) = *(&v72 + 1);
      *&v61 = v73;
      BYTE8(v61) = BYTE8(v73);
      *(&v61 + 9) = *(&v73 + 9);
      HIBYTE(v61) = (*(&v73 + 9) | ((*(&v73 + 13) | (HIBYTE(v73) << 16)) << 32)) >> 48;
      *(&v61 + 13) = *(&v73 + 13);
      v62 = v74;
      v63 = v11;
      if ((*(&v76 + 1) & 0x8000000000000000) != 0)
      {
        *&v64 = v76;
        BYTE8(v64) = BYTE8(v76);
        BYTE9(v64) = 3;
        sub_1AAEDA174(&v60);
        sub_1AAD81924(&v72, v70);
      }

      else
      {
        v64 = v76;
        LOBYTE(v65) = 3;
        sub_1AAE0C0B0(&v60);
        sub_1AACD7304(v13, v12, v14 & 1);

        sub_1AACD7C50(v15, v16, SBYTE8(v16));
      }

      v70[6] = v66;
      v70[7] = v67;
      v70[8] = v68;
      v71 = v69;
      v70[2] = v62;
      v70[3] = v63;
      v70[4] = v64;
      v70[5] = v65;
      v70[0] = v60;
      v70[1] = v61;
      nullsub_1();
      v78[6] = v66;
      v78[7] = v67;
      v78[8] = v68;
      v79 = v69;
      v78[2] = v62;
      v78[3] = v63;
      v78[4] = v64;
      v78[5] = v65;
      v78[0] = v60;
      v78[1] = v61;
      sub_1AAD81924(&v72, &v59);
      v17 = sub_1AAF72FD4(v78, v57);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      sub_1AAD81980(&v72);
      sub_1AAD81980(&v72);
      v8 = v58;
      v77 = v58;
      v25 = *(v58 + 16);
      v24 = *(v58 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1AAD414C0((v24 > 1), v25 + 1, 1);
        v8 = v77;
      }

      *(v8 + 16) = v25 + 1;
      v26 = (v8 + 32 * v25);
      v26[4] = v17;
      v26[5] = v19;
      v26[6] = v21;
      v26[7] = v23;
      v9 += 5;
      --v7;
    }

    while (v7);
  }

  v27 = *(v8 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = (v8 + 56);
    while (1)
    {
      v30 = *v29;
      if (*v29)
      {
        break;
      }

      ++v28;
      v29 += 4;
      if (v27 == v28)
      {
        goto LABEL_13;
      }
    }

    v37 = *(v29 - 2);
    v36 = *(v29 - 1);
    v38 = *(v29 - 3);
    v39 = v8;

    sub_1AADA61DC(v38, v37, v36, v30);
    sub_1AAD04750(v38, v37, v36 & 1);

    sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v39, v28);
    v31 = v40;
    v35 = v41;
    v32 = v42;
    v44 = v43;
    swift_bridgeObjectRelease_n();
    v33 = v32 & 1;
    sub_1AACD7304(v31, v35, v32 & 1);

    v58 = v35;
    v34 = v44;
  }

  else
  {
LABEL_13:

    v31 = 0;
    v32 = 0;
    v58 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v45 = v52;
  sub_1AAF8E124();
  v46 = sub_1AAF8E974();
  v48 = v47;
  sub_1AAD04750(v31, v35, v32 & 1);

  (*(v53 + 8))(v45, v54);
  v49 = sub_1AAF74684(v46, v48, v55 & 1, v56);

  sub_1AADA6198(v31, v58, v33, v34);
  return v49;
}

uint64_t sub_1AAF1496C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACCB940(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AAF149C8(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 104) = xmmword_1AAFC2E60;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1AAF149F0(uint64_t a1, uint64_t a2)
{
  sub_1AACCB940(0, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF14A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF14C94(uint64_t a1)
{
  v2 = type metadata accessor for SgGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAF14CFC()
{
  if (!qword_1EB427090)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB427090);
    }
  }
}

void sub_1AAF14D68(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB494(v2);
  }

  v3 = v2[2];
  v16[0] = (v2 + 4);
  v16[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (v12[42] >= v12[4])
          {
            break;
          }

          memcpy(__dst, v12 + 42, sizeof(__dst));
          memcpy(v12 + 42, v12 + 4, 0x130uLL);
          memcpy(v12 + 4, __dst, 0x130uLL);
          v12 -= 38;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 38;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_1AAD45FFC(0);
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    __dst[0] = (v7 + 32);
    __dst[1] = v6;
    sub_1AAF1F678(__dst, v17, v16, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
}

void sub_1AAF14EF0(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = sub_1AADF8EA0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = v8 + 16;
  sub_1AAF1BE68(a1, v4, v7, a2, v8, v5);
  swift_beginAccess();
  v10 = *(v5 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v6 = sub_1AAD6C36C(v11, 0);
    v36 = sub_1AADA9504(v40, v6 + 32, v11, v10);
    v12 = v40[0];
    swift_bridgeObjectRetain_n();
    sub_1AACC9C00(v12);
    if (v36 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v40[0] = v6;
  sub_1AAF14D68(v40);

  v13 = *(v40[0] + 16);
  if (v13)
  {
    v14 = v13 - 1;
    for (i = (v40[0] + 40); ; i += 304)
    {
      memcpy(__dst, i - 8, sizeof(__dst));
      v16 = __dst[37];
      memcpy(__src, i, sizeof(__src));
      nullsub_1();
      memcpy(v40, __src, 0x120uLL);
      v40[36] = v16;
      v41 = 1;
      v42 = a2;
      sub_1AAF20668(__dst, v37, sub_1AAD45FFC);
      sub_1AAF14B90(&__dst[1], v37);

      sub_1AAF153B8(v17);
      v19 = v18;
      swift_beginAccess();
      v20 = *(v19 + 16);
      v21 = *v9;
      v22 = *(*v9 + 16);
      v23 = (v22 + v20);
      if (__OFADD__(v22, v20))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v23 <= v21[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v22 <= v23)
        {
          v29 = v22 + v20;
        }

        else
        {
          v29 = v22;
        }

        v21 = sub_1AAD6A1F4(isUniquelyReferenced_nonNull_native, v29, 1, v21);
        if (*(v19 + 16))
        {
LABEL_11:
          v22 = v21[2];
          v25 = (v21[3] >> 1) - v22;
          sub_1AACFDAA8(0);
          if (v25 < v20)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v26 = v21[2];
            v27 = __OFADD__(v26, v20);
            v28 = v26 + v20;
            if (v27)
            {
              goto LABEL_33;
            }

            v21[2] = v28;
          }

          goto LABEL_20;
        }
      }

      if (v20)
      {
        goto LABEL_31;
      }

LABEL_20:
      *v9 = v21;
      swift_endAccess();
      sub_1AAF14BEC(&__dst[1]);
      if (!v14)
      {
        break;
      }

      --v14;
    }
  }

  swift_beginAccess();
  v30 = *v9;
  v31 = *(*v9 + 16);
  if (v31)
  {
    v32 = 0;
    v22 = 0;
    v33 = -v31;
    while (1)
    {
      v34 = v30[2];
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AADB820C(v30);
      }

      if (v22 >= v30[2])
      {
        break;
      }

      sub_1AACFDAA8(0);
      *(v30 + ((*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80)) + *(*(v35 - 8) + 72) * v22 + 40) = (v32 + v34);
      *v9 = v30;
      swift_endAccess();
      --v32;
      ++v22;
      if (v33 == v32)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

void sub_1AAF153B8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v378 = &v374 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACFDAA8(0);
  v407 = v4;
  v399 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v374 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v409 = &v374 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v374 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v391 = (&v374 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v390 = &v374 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v377 = &v374 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v374 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v397 = &v374 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v395 = &v374 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v374 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v406 = &v374 - v29;
  v30 = *(v1 + 304);
  v31 = *(v1 + 288);
  memcpy(v465, v1, sizeof(v465));
  memcpy(v488, v1, sizeof(v488));
  memcpy(v489, v1, 0x120uLL);
  v32 = sub_1AAF201B8(v489);
  v396 = v31;
  if (v32 == 1)
  {
    v33 = *(v31 + 16);
    goto LABEL_3;
  }

  v69 = *(v1 + 296);
  memcpy(v464, v488, 0x120uLL);
  if (v69)
  {
    v70 = v396;
    v33 = *(v396 + 16);
    if (v33 <= 1)
    {
LABEL_3:
      if (v33)
      {
        v397 = v11;
        v398 = v6;
        v393 = v30;

        v406 = v33 - 1;
        v35 = (v34 + 88);
        v408 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          memcpy(v445, v35 - 56, 0x260uLL);
          v400 = v35;
          *&v410 = *(&v445[6] + 1);
          v401 = *&v445[6];
          v36 = *&v445[7];
          v37 = v35[1];
          v464[0] = *v35;
          v464[1] = v37;
          v476 = *(&v445[2] + 8);
          v38 = *(&v445[5] + 1);
          v39 = *&v445[0];
          v404 = *(&v445[1] + 8);
          v405 = *(v445 + 8);
          sub_1AAF14AE0(v445, v443);
          v40 = sub_1AAF1A164(v445, v465);
          v42 = v41;
          v44 = v43;
          v46 = v45;
          *(&v443[1] + 8) = v404;
          *(v443 + 8) = v405;
          *&v443[0] = v39;
          *(&v443[2] + 1) = 0;
          sub_1AAF201D0();
          LODWORD(v402) = v44;
          v47 = v401;
          v403 = v42;
          *&v404 = v40;
          *&v405 = v46;
          sub_1AAF8EB44();
          v48 = v410;
          v444[0] = v464[0];
          v444[1] = v464[1];
          v444[4] = v476;
          *&v444[2] = v38;
          *(&v444[2] + 1) = v47;
          *&v444[3] = v410;
          *(&v444[3] + 1) = v36;
          LOBYTE(v444[5]) = 0;
          sub_1AADA61DC(v38, v47, v410, v36);
          sub_1AADA61DC(v38, v47, v48, v36);
          sub_1AAF20224(v464, v443, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
          sub_1AAF20224(&v476, v443, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
          sub_1AAE0F9F0(v444);
          if (v36)
          {
            v49 = v38;
            v50 = v47;
            v51 = v48;
          }

          else
          {

            v53 = sub_1AAF739C0(v52, v393);
            v55 = v54;
            v57 = v56;
            v59 = v58;

            if (v59)
            {
              v49 = v53;
            }

            else
            {
              v49 = 0;
            }

            if (v59)
            {
              v50 = v55;
            }

            else
            {
              v50 = 0xE000000000000000;
            }

            if (v59)
            {
              v51 = v57;
            }

            else
            {
              v51 = 0;
            }
          }

          v60 = v397;
          v61 = v409;
          sub_1AAF8DF44();
          sub_1AAD04750(v49, v50, v51 & 1);

          sub_1AAF20890(v61, sub_1AACFDAA8);
          v443[0] = v464[0];
          v443[1] = v464[1];
          v443[4] = v476;
          *&v443[2] = v38;
          *(&v443[2] + 1) = v47;
          v62 = v410;
          *&v443[3] = v410;
          *(&v443[3] + 1) = v36;
          LOBYTE(v443[5]) = 0;
          v63 = MEMORY[0x1E69E6158];
          sub_1AAF20224(&v476, v486, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
          sub_1AADA61DC(v38, v47, v62, v36);
          sub_1AAF20224(v464, v486, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
          sub_1AAF20224(&v476, v486, &qword_1ED9B2A98, v63);
          sub_1AAE0F9F0(v443);
          if (*(&v476 + 1))
          {
            v64 = v395;
            sub_1AAF8DF54();
            sub_1AAF20734(&v476, &qword_1ED9B2A98, v63);
            sub_1AAF20890(v60, sub_1AACFDAA8);
            sub_1AAF206D0(v64, v60);
          }

          v65 = v398;
          sub_1AAF20668(v60, v398, sub_1AACFDAA8);
          v66 = v408;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1AAD6A1F4(0, v66[2] + 1, 1, v66);
          }

          v68 = v66[2];
          v67 = v66[3];
          if (v68 >= v67 >> 1)
          {
            v66 = sub_1AAD6A1F4((v67 > 1), v68 + 1, 1, v66);
          }

          sub_1AAD04750(v404, v403, v402 & 1);

          sub_1AAF14B3C(v445);
          sub_1AAF20890(v60, sub_1AACFDAA8);
          v66[2] = v68 + 1;
          sub_1AAF206D0(v65, v66 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v68);
          if (!v406)
          {
            break;
          }

          v408 = v66;
          --v406;
          v35 = v400 + 38;
        }
      }

      goto LABEL_220;
    }

    v71 = *(v464 + 1);
    v72 = v464[1];
    v73 = *&v464[2];
    sub_1AAF20224(v488, v445, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);

    v74 = v73;
    v75 = *&v72;
    v76 = v71;
    v77 = *(&v72 + 1);
    v78 = v70 + 64;
    do
    {
      *&v76 = CGRectUnion(*&v76, *(v78 - 24));
      v78 += 608;
      --v33;
    }

    while (v33);
    Height = v74;
    v80 = v75;
    v81 = v76;
    v82 = v77;
  }

  else
  {
    v81 = *(v464 + 1);
    v82 = *(&v464[1] + 1);
    v80 = *&v464[1];
    Height = *&v464[2];
    memcpy(v445, v488, 0x120uLL);
    sub_1AAF14B90(v445, v443);
  }

  v490.origin.x = v81;
  v490.origin.y = v80;
  v490.size.width = v82;
  v490.size.height = Height;
  v83 = 0x401C5BF891B4EF6ALL;
  if (CGRectGetWidth(v490) >= 7.0898154)
  {
    *&v86 = v82;
    v87 = v81;
    v88 = v80;
  }

  else
  {
    v491.origin.x = v81;
    v491.origin.y = v80;
    v491.size.width = v82;
    v491.size.height = Height;
    v84 = CGRectGetMinX(v491) + -3.5449077;
    v492.origin.x = v81;
    v492.origin.y = v80;
    v492.size.width = v82;
    v492.size.height = Height;
    MinY = CGRectGetMinY(v492);
    v493.origin.x = v81;
    v493.origin.y = v80;
    v493.size.width = v82;
    v493.size.height = Height;
    Height = CGRectGetHeight(v493);
    *&v86 = 7.0898154;
    v87 = v84;
    v88 = MinY;
  }

  MinX = v87;
  v90 = v88;
  Width = *&v86;
  v92 = Height;
  v93 = Height;
  v94 = CGRectGetHeight(*&v87);
  v403 = v27;
  *&v404 = v20;
  if (v94 >= 7.0898154)
  {
    v83 = *&Height;
  }

  else
  {
    v95 = MinX;
    v494.origin.x = MinX;
    v494.origin.y = v90;
    v494.size.width = Width;
    v494.size.height = v92;
    MinX = CGRectGetMinX(v494);
    v495.origin.x = v95;
    v495.origin.y = v90;
    v495.size.width = Width;
    v495.size.height = v92;
    v96 = CGRectGetMinY(v495) + -3.5449077;
    v496.origin.x = v95;
    v496.origin.y = v90;
    v496.size.width = Width;
    v496.size.height = v92;
    Width = CGRectGetWidth(v496);
    v90 = v96;
  }

  v393 = v30;
  v450 = *&v464[0];
  v451 = MinX;
  v452 = v90;
  v453 = Width;
  v454 = v83;
  v455 = 0;
  v97 = v464[4];
  v98 = v464[5];
  v99 = v464[6];
  v100 = *&v464[7];
  v101 = *(&v464[3] + 1);
  v456 = *(&v464[3] + 1);
  v102 = *&v464[3];
  v457 = v464[4];
  v458 = v464[5];
  v459 = v464[6];
  v460 = *&v464[7];
  *&v410 = *(&v464[2] + 1);
  v461 = *(&v464[2] + 1);
  v462 = *&v464[3];
  v463 = 0;
  sub_1AADA61DC(*(&v464[3] + 1), *&v464[4], SBYTE8(v464[4]), *&v464[5]);
  *&v409 = v101;
  sub_1AADA61DC(v101, v97, SBYTE8(v97), v98);
  v400 = *(&v99 + 1);
  v402 = v99;
  *&v405 = v100;
  sub_1AADA61DC(*(&v98 + 1), v99, SBYTE8(v99), v100);
  v408 = v102;

  sub_1AAE0F9F0(&v456);
  v401 = v98;
  if (v98)
  {
    v103 = v409;
    v104 = v97;
    v105 = BYTE8(v97);
    v106 = *(&v97 + 1);
  }

  else
  {
    v486[6] = *(&v464[13] + 8);
    v486[7] = *(&v464[14] + 8);
    v486[8] = *(&v464[15] + 8);
    v487 = *(&v464[16] + 1);
    v486[2] = *(&v464[9] + 8);
    v486[3] = *(&v464[10] + 8);
    v486[4] = *(&v464[11] + 8);
    v486[5] = *(&v464[12] + 8);
    v486[0] = *(&v464[7] + 8);
    v486[1] = *(&v464[8] + 8);
    sub_1AAF20224(&v464[7] + 8, v445, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v103 = sub_1AAF72FD4(v486, v393);
    v104 = v107;
    v109 = v108;
    v111 = v110;
    sub_1AAF20734(&v464[7] + 8, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    if (v111)
    {
      v105 = v109;
    }

    else
    {
      v103 = 0;
      v104 = 0xE000000000000000;
      v105 = 0;
    }

    v106 = *(&v97 + 1);
  }

  sub_1AAF201D0();
  sub_1AAF8EB44();
  sub_1AAD04750(v103, v104, v105 & 1);

  v112 = v409;
  v448[0] = v409;
  v448[1] = v97;
  v448[2] = v106;
  v448[3] = *(&v97 + 1);
  v448[4] = *(&v98 + 1);
  v113 = v402;
  v448[5] = v402;
  v114 = v106;
  v115 = v400;
  v448[6] = v400;
  v116 = v405;
  v448[7] = v405;
  v448[8] = v410;
  v448[9] = v408;
  v449 = 0;
  sub_1AADA61DC(*(&v98 + 1), v402, v400, v405);
  v394 = v114;
  sub_1AADA61DC(v112, v97, v114, *(&v97 + 1));
  sub_1AADA61DC(*(&v98 + 1), v113, v115, v116);

  sub_1AAE0F9F0(v448);
  v398 = v97;
  v392 = *(&v98 + 1);
  v118 = v403;
  if (v116)
  {
    v119 = *(&v98 + 1);
    v120 = v113;
    v121 = v115;
    v122 = v115;
  }

  else
  {
    sub_1AAF1AAD0(v396, v393, v117);
    v119 = v123;
    v121 = v115;
    v122 = v124;
  }

  v125 = v120;
  sub_1AAF8DF44();
  sub_1AAD04750(v119, v125, v122 & 1);

  sub_1AAF20890(v118, sub_1AACFDAA8);
  v126 = v408;
  v127 = v409;
  v446[0] = v409;
  v128 = v398;
  v446[1] = v398;
  LOBYTE(v125) = v394;
  v446[2] = v394;
  v130 = v401;
  v129 = v402;
  v446[3] = v401;
  v131 = v392;
  v446[4] = v392;
  v446[5] = v402;
  v446[6] = v121;
  v132 = v405;
  v446[7] = v405;
  v446[8] = v410;
  v446[9] = v408;
  v447 = 0;

  v133 = v128;
  v134 = v406;
  sub_1AADA61DC(v127, v133, v125, v130);
  sub_1AADA61DC(v131, v129, v121, v132);

  v135 = sub_1AAE0F9F0(v446);
  if (v126)
  {
    v136 = v395;
    sub_1AAF8DF54();

    sub_1AAF20890(v134, sub_1AACFDAA8);
    v135 = sub_1AAF206D0(v136, v134);
  }

  v137 = v396;
  v138 = *(v396 + 16);
  if (v138 <= 9)
  {
    v139 = MEMORY[0x1E69E7CC0];
    v140 = sub_1AAD6A0A8(0, v138, 0, MEMORY[0x1E69E7CC0]);
    v126 = v140;
    v141 = *(v137 + 16);
    if (!v141)
    {
      goto LABEL_151;
    }

    v142 = 0;
    *&v410 = v141 - 1;
    v409 = xmmword_1AAF92AB0;
    while (1)
    {
      memcpy(v445, (v137 + 32), 0x260uLL);
      KeyPath = *(&v445[7] + 1);
      v144 = *(v137 + 488);
      v444[0] = *(v137 + 472);
      v444[1] = v144;
      v145 = *(v137 + 552);
      v147 = *(v137 + 504);
      v146 = *(v137 + 520);
      v444[4] = *(v137 + 536);
      v444[5] = v145;
      v444[2] = v147;
      v444[3] = v146;
      v149 = *(v137 + 584);
      v148 = *(v137 + 600);
      v150 = *(v137 + 568);
      *&v444[9] = *(v137 + 616);
      v444[7] = v149;
      v444[8] = v148;
      v444[6] = v150;
      if (sub_1AAED0054(v444) == 1)
      {
        sub_1AAF14AE0(v445, v443);
      }

      else
      {
        sub_1AAF20A28(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
        v151 = swift_allocObject();
        v152 = v444[6];
        v153 = v444[8];
        *(v151 + 144) = v444[7];
        *(v151 + 160) = v153;
        v154 = v444[2];
        v155 = v444[4];
        v156 = v444[5];
        *(v151 + 80) = v444[3];
        *(v151 + 96) = v155;
        *(v151 + 112) = v156;
        *(v151 + 128) = v152;
        v157 = v444[0];
        v158 = v444[1];
        *(v151 + 16) = v409;
        *(v151 + 32) = v157;
        *(v151 + 176) = *&v444[9];
        *(v151 + 48) = v158;
        *(v151 + 64) = v154;
        *&v476 = KeyPath;
        sub_1AAF14AE0(v445, v443);
        sub_1AAF20224(&v445[27] + 8, v443, qword_1ED9B2098, &type metadata for AccessibilityDataField);

        sub_1AADC92A4(v151);
        KeyPath = v476;
      }

      v443[6] = v445[14];
      v443[7] = v445[15];
      v443[8] = v445[16];
      *&v443[9] = *&v445[17];
      v443[2] = v445[10];
      v443[3] = v445[11];
      v443[4] = v445[12];
      v443[5] = v445[13];
      v443[0] = v445[8];
      v443[1] = v445[9];
      if (sub_1AAED0054(v443) != 1)
      {
        v482 = v443[6];
        v483 = v443[7];
        v484 = v443[8];
        v485 = *&v443[9];
        v478 = v443[2];
        v479 = v443[3];
        v480 = v443[4];
        v481 = v443[5];
        v476 = v443[0];
        v477 = v443[1];
        v159 = sub_1AAF14CF0(&v476);
        v160 = sub_1AACBC764(&v476);
        if (v159 <= 1)
        {
          if (v159)
          {
            v161 = *(v160 + 72);
            if (v161 < 0 || v161 == 2)
            {
              goto LABEL_69;
            }
          }

          else if (*(v160 + 56) < 0 || *(v160 + 56) >= 2u)
          {
            goto LABEL_69;
          }

          v472 = v445[14];
          v473 = v445[15];
          v474 = v445[16];
          v475 = *&v445[17];
          v468 = v445[10];
          v469 = v445[11];
          v470 = v445[12];
          v471 = v445[13];
          v466 = v445[8];
          v467 = v445[9];
          sub_1AAD81BF4(&v466, &v425);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            KeyPath = sub_1AAD6931C(0, *(KeyPath + 2) + 1, 1, KeyPath);
          }

          v163 = *(KeyPath + 2);
          v162 = *(KeyPath + 3);
          if (v163 >= v162 >> 1)
          {
            KeyPath = sub_1AAD6931C((v162 > 1), v163 + 1, 1, KeyPath);
          }

          v429 = v445[12];
          v430 = v445[13];
          v427 = v445[10];
          v428 = v445[11];
          v434 = *&v445[17];
          v432 = v445[15];
          v433 = v445[16];
          v431 = v445[14];
          v425 = v445[8];
          v426 = v445[9];
          *(KeyPath + 2) = v163 + 1;
          v164 = &KeyPath[152 * v163];
          v165 = v426;
          *(v164 + 2) = v425;
          *(v164 + 3) = v165;
          v166 = v427;
          v167 = v428;
          v168 = v430;
          *(v164 + 6) = v429;
          *(v164 + 7) = v168;
          *(v164 + 4) = v166;
          *(v164 + 5) = v167;
          v169 = v431;
          v170 = v432;
          v171 = v433;
          *(v164 + 22) = v434;
          *(v164 + 9) = v170;
          *(v164 + 10) = v171;
          *(v164 + 8) = v169;
        }
      }

LABEL_69:
      v172 = *(&v445[17] + 1);
      v174 = v126[2];
      v173 = v126[3];

      if (v174 >= v173 >> 1)
      {
        v126 = sub_1AAD6A0A8((v173 > 1), v174 + 1, 1, v126);
      }

      sub_1AAF14B3C(v445);
      v126[2] = v174 + 1;
      v175 = &v126[2 * v174];
      v175[4] = KeyPath;
      v175[5] = v172;
      if (v410 == v142)
      {
        goto LABEL_150;
      }

      ++v142;
      v176 = *(v396 + 16);
      v137 += 608;
      if (v142 >= v176)
      {
        goto LABEL_227;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v135);
  *(&v374 - 4) = &type metadata for SgAccessibilityGroup;
  *(&v374 - 3) = &type metadata for SgAccessibilityIndividual;
  v372 = &off_1F1FE82A0;
  v373 = &off_1F1FE8320;
  KeyPath = swift_getKeyPath();

  v177 = sub_1AAF7BAE0(v137, KeyPath);

  v374 = v177[2];
  if (!v374)
  {

    v173 = v406;
    goto LABEL_218;
  }

  v375 = v177 + 4;
  v389 = v177;

  v178 = 0;
  *&v404 = 0;
  v173 = v406;
  while (1)
  {
    v176 = v389[2];
    if (v178 >= v176)
    {
      goto LABEL_237;
    }

    v376 = v178;
    v179 = &v375[2 * v178];
    KeyPath = v179[1];
    v180 = *(KeyPath + 2);
    v379 = *v179;

    v400 = v180;
    v401 = KeyPath;
    if (v180)
    {
      v181 = 0;
      v126 = KeyPath + 312;
      v182 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v176 = *(v401 + 2);
        if (v181 >= v176)
        {
          break;
        }

        *&v445[0] = MEMORY[0x1E69E7CD0];

        v184 = v404;
        KeyPath = sub_1AAF202A4(v183);
        *&v404 = v184;

        v180 = *(KeyPath + 2);
        v173 = *(v182 + 2);
        v185 = v173 + v180;
        if (__OFADD__(v173, v180))
        {
          goto LABEL_224;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v185 > *(v182 + 3) >> 1)
        {
          if (v173 <= v185)
          {
            v187 = v173 + v180;
          }

          else
          {
            v187 = v173;
          }

          v182 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v187, 1, v182);
        }

        v173 = v406;
        if (*(KeyPath + 2))
        {
          v176 = *(v182 + 2);
          if (((*(v182 + 3) >> 1) - v176) < v180)
          {
            goto LABEL_226;
          }

          swift_arrayInitWithCopy();

          if (v180)
          {
            v188 = *(v182 + 2);
            v189 = __OFADD__(v188, v180);
            v176 = v188 + v180;
            if (v189)
            {
              goto LABEL_228;
            }

            *(v182 + 2) = v176;
          }
        }

        else
        {

          if (v180)
          {
            goto LABEL_225;
          }
        }

        ++v181;
        v126 += 76;
        if (v400 == v181)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
      goto LABEL_231;
    }

    v182 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v190 = sub_1AAF7C3F0();
    v191 = *(v190 + 16);
    if (v191)
    {
      break;
    }

LABEL_76:

    KeyPath = (v376 + 1);

    v178 = KeyPath;
    if (KeyPath == v374)
    {
LABEL_222:
      swift_bridgeObjectRelease_n();
LABEL_218:
      sub_1AAF20668(v173, v377, sub_1AACFDAA8);
      v126 = sub_1AAD6A1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v173 = v126[2];
      v176 = v126[3];
      KeyPath = (v173 + 1);
      if (v173 >= v176 >> 1)
      {
        goto LABEL_238;
      }

      goto LABEL_219;
    }
  }

  v192 = 0;
  v193 = *(v182 + 2);
  v387 = v190;
  v388 = v190 + 32;
  v392 = v182 + 32;
  *&v410 = v193;
  v380 = v193 - 1;
  v408 = v182;
  v386 = v191;
  do
  {
    v194 = v388 + 72 * v192;
    v425 = *v194;
    v195 = *(v194 + 16);
    v196 = *(v194 + 32);
    v197 = *(v194 + 48);
    v198 = *(v194 + 64);
    v397 = v192;
    v398 = v198;
    *&v429 = v198;
    v427 = v196;
    v428 = v197;
    v426 = v195;
    if (v191 == 1)
    {
      sub_1AAF20668(&v425, v445, sub_1AAF207A4);
      LODWORD(v403) = 0;
      v394 = 0xE000000000000000;
      v395 = 0;
      v402 = MEMORY[0x1E69E7CC0];
      if (!v410)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v222 = *(&v425 + 1);
      v180 = v425;
      v223 = v426;
      v126 = *(&v426 + 1);
      if (((*(&v428 + 1) | ((*(&v428 + 5) | (SBYTE7(v428) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        *&v409 = *(&v428 + 1);
        sub_1AAF20668(&v425, v445, sub_1AAF207A4);
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v225 = [objc_opt_self() bundleForClass_];
        LOWORD(v373) = 256;
        v372 = 0;
        v180 = sub_1AAF8EA44();
        v222 = v226;
        v223 = v227;
        v126 = v228;
      }

      else
      {
        sub_1AAF20668(&v425, v445, sub_1AAF207A4);
        sub_1AACD7304(v180, v222, v223 & 1);
      }

      v229 = sub_1AAF8EA04();
      v394 = v230;
      v395 = v229;
      LODWORD(v403) = v231;
      v402 = v232;
      sub_1AAD04750(v180, v222, v223 & 1);

      if (!v410)
      {
LABEL_126:
        *&v405 = MEMORY[0x1E69E7CC0];
        goto LABEL_127;
      }
    }

    v199 = 0;
    *&v405 = MEMORY[0x1E69E7CC0];
    do
    {
      KeyPath = &v392[152 * v199];
      v173 = v199;
      while (1)
      {
        if (v173 >= *(v182 + 2))
        {
          __break(1u);
LABEL_173:

          v126 = v180;
          goto LABEL_175;
        }

        v200 = *(KeyPath + 1);
        v443[0] = *KeyPath;
        v443[1] = v200;
        v201 = *(KeyPath + 2);
        v202 = *(KeyPath + 3);
        v203 = *(KeyPath + 5);
        v443[4] = *(KeyPath + 4);
        v443[5] = v203;
        v443[2] = v201;
        v443[3] = v202;
        v204 = *(KeyPath + 6);
        v205 = *(KeyPath + 7);
        v206 = *(KeyPath + 8);
        *&v443[9] = *(KeyPath + 18);
        v443[7] = v205;
        v443[8] = v206;
        v443[6] = v204;
        memmove(v445, KeyPath, 0x98uLL);
        v207 = sub_1AAF14CF0(v445);
        if (v207 > 1)
        {
          if (v207 == 2)
          {
LABEL_107:
            v216 = sub_1AACBC764(v445);
            if (*(v216 + 56) < 0)
            {
              goto LABEL_240;
            }

            if (*(v216 + 56))
            {
              goto LABEL_241;
            }

            v180 = *(v216 + 40);
            goto LABEL_113;
          }

          sub_1AACBC764(v445);
          v444[6] = v443[6];
          v444[7] = v443[7];
          v444[8] = v443[8];
          *&v444[9] = *&v443[9];
          v444[2] = v443[2];
          v444[3] = v443[3];
          v444[4] = v443[4];
          v444[5] = v443[5];
          v444[0] = v443[0];
          v444[1] = v443[1];
          v217 = sub_1AACBC764(v444);
          v218 = *(v217 + 8);
          v217 += 8;
          v214 = v218;
          v126 = *(v217 + 56);
          *&v409 = *(v217 + 48);
          v209 = *(v217 + 64);
          v211 = *(v217 + 8);
          v210 = *(v217 + 16);
          v212 = *(v217 + 24);
          v213 = *(v217 + 32);
          v180 = *(v217 + 40);
          sub_1AAE63EFC(v217, &v476);
        }

        else
        {
          if (!v207)
          {
            goto LABEL_107;
          }

          sub_1AACBC764(v445);
          v482 = v443[6];
          v483 = v443[7];
          v484 = v443[8];
          v485 = *&v443[9];
          v478 = v443[2];
          v479 = v443[3];
          v480 = v443[4];
          v481 = v443[5];
          v476 = v443[0];
          v477 = v443[1];
          v208 = sub_1AACBC764(&v476);
          v126 = *(v208 + 64);
          *&v409 = *(v208 + 56);
          v209 = *(v208 + 72);
          v211 = *(v208 + 16);
          v210 = *(v208 + 24);
          v212 = *(v208 + 32);
          v213 = *(v208 + 40);
          v180 = *(v208 + 48);
          v214 = *(v208 + 8);
          *&v444[9] = *&v443[9];
          v444[4] = v443[4];
          v444[5] = v443[5];
          v444[7] = v443[7];
          v444[8] = v443[8];
          v444[6] = v443[6];
          v444[2] = v443[2];
          v444[3] = v443[3];
          v444[0] = v443[0];
          v444[1] = v443[1];
          v215 = sub_1AACBC764(v444);
          sub_1AAF20668(v215, &v466, sub_1AAF14CFC);
        }

        *&v444[0] = v214;
        *(&v444[0] + 1) = v211;
        *&v444[1] = v210;
        BYTE8(v444[1]) = v212;
        *&v444[2] = v213;
        *(&v444[2] + 1) = v180;
        *&v444[3] = v409;
        *(&v444[3] + 1) = v126;
        LOBYTE(v444[4]) = v209;
        if ((v209 & 0x80) != 0)
        {
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:

          __break(1u);
          return;
        }

        sub_1AAE63F58(v444);
        v182 = v408;
        if (v209)
        {
          __break(1u);
          goto LABEL_222;
        }

LABEL_113:
        if ((~v180 & 0x7FF0000000000000) != 0)
        {
          break;
        }

        ++v173;
        KeyPath += 152;
        if (v410 == v173)
        {
          goto LABEL_127;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v405 = sub_1AAD67B50(0, *(v405 + 16) + 1, 1, v405);
      }

      v220 = *(v405 + 16);
      v219 = *(v405 + 24);
      if (v220 >= v219 >> 1)
      {
        *&v405 = sub_1AAD67B50((v219 > 1), v220 + 1, 1, v405);
      }

      v199 = v173 + 1;
      v221 = v405;
      *(v405 + 16) = v220 + 1;
      *(v221 + 8 * v220 + 32) = v180;
    }

    while (v380 != v173);
LABEL_127:
    if (v389[2] <= 1uLL)
    {
      sub_1AAD04750(v395, v394, v403 & 1);

      sub_1AAD81A30(&v425);

      v173 = v406;
      goto LABEL_147;
    }

    v173 = v406;
    if (!*(v398 + 2))
    {
      goto LABEL_242;
    }

    v233 = *(v398 + 9);
    v443[6] = *(v398 + 8);
    v443[7] = v233;
    v443[8] = *(v398 + 10);
    *&v443[9] = *(v398 + 22);
    v234 = *(v398 + 5);
    v443[2] = *(v398 + 4);
    v443[3] = v234;
    v235 = *(v398 + 7);
    v443[4] = *(v398 + 6);
    v443[5] = v235;
    v236 = *(v398 + 3);
    v443[0] = *(v398 + 2);
    v443[1] = v236;
    sub_1AAD81BF4(v443, v445);

    v445[6] = v443[6];
    v445[7] = v443[7];
    v445[8] = v443[8];
    v445[2] = v443[2];
    v445[3] = v443[3];
    v445[4] = v443[4];
    v445[5] = v443[5];
    v445[0] = v443[0];
    *&v445[9] = *&v443[9];
    v445[1] = v443[1];
    sub_1AAF14CF0(v445);
    KeyPath = sub_1AACBC764(v445);
    sub_1AAD81C50(v443);
    v237 = v393;
    if (*(v393 + 16) && (v238 = *KeyPath, KeyPath = v393, v239 = sub_1AACE1760(v238), (v240 & 1) != 0) && (sub_1AACE0A98(*(v237 + 56) + 48 * v239, &v476), v241 = BYTE8(v478), BYTE8(v478) != 255))
    {
      v242 = *&v476;
      v444[0] = v476;
      v444[1] = v477;
      *&v444[2] = v478;
    }

    else
    {
      v241 = 3;
      v242 = 0.0;
      memset(v444, 0, 40);
    }

    BYTE8(v444[2]) = v241;
    v176 = v400;
    if (!v400)
    {
      goto LABEL_229;
    }

    v176 = *(v401 + 2);
    if (!v176)
    {
      goto LABEL_230;
    }

    sub_1AAF73C2C(v405, v401[625], v242);
    v385 = v243;
    *&v409 = v244;
    LODWORD(v384) = v245;
    v398 = v246;

    sub_1AAF20668(v173, v391, sub_1AACFDAA8);
    v247 = sub_1AAF739C0(v379, v237);
    if (v250)
    {
      v251 = v247;
    }

    else
    {
      v251 = 0;
    }

    if (v250)
    {
      v252 = v248;
    }

    else
    {
      v252 = 0xE000000000000000;
    }

    if (v250)
    {
      v253 = v249;
    }

    else
    {
      v253 = 0;
    }

    v254 = v394;
    v255 = v395;
    v381 = sub_1AAF8EA04();
    v382 = v256;
    LODWORD(v405) = v257;
    v383 = v258;
    sub_1AAD04750(v251, v252, v253 & 1);

    v372 = 0;
    v373 = v407;
    v259 = v384;
    v260 = v382;
    v261 = v385;
    v180 = v409;
    v126 = v391;
    sub_1AAF8DF34();
    sub_1AAD04750(v255, v254, v403 & 1);

    sub_1AAD81A30(&v425);
    v262 = v260;
    v182 = v408;
    sub_1AAD04750(v381, v262, v405 & 1);

    sub_1AAD04750(v261, v180, v259 & 1);
    v173 = v406;

    sub_1AAF20890(v126, sub_1AACFDAA8);
    sub_1AAD57C94(v444);
    sub_1AAF20890(v173, sub_1AACFDAA8);
    sub_1AAF206D0(v390, v173);
LABEL_147:
    v192 = (v397 + 1);
    v191 = v386;
    if (v397 + 1 == v386)
    {
      goto LABEL_76;
    }
  }

  while (v192 < *(v387 + 16));
  __break(1u);
LABEL_150:

  v139 = MEMORY[0x1E69E7CC0];
LABEL_151:
  MEMORY[0x1EEE9AC00](v140);
  v372 = v465;
  sub_1AADE5E58(sub_1AAF20830, (&v374 - 4), v126);
  KeyPath = v263;
  v264 = *(sub_1AAD81218(v263) + 16);

  v265 = *(KeyPath + 2);

  if (v264 == v265)
  {
    goto LABEL_175;
  }

  v173 = v126[2];
  if (!v173)
  {

    v126 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v278 = 0;
    v384 = v126;
    v385 = 0;
    v387 = 0;
    v279 = v465[36];
    v382 = v126 + 4;
    v383 = v465[36] + 32;
    v396 = v465[36];
    v173 = v406;
    while (1)
    {
      if (v278)
      {
        goto LABEL_182;
      }

      v176 = *(v279 + 16);
      if (v387 == v176)
      {
        goto LABEL_182;
      }

      if (v387 >= v176)
      {
        goto LABEL_233;
      }

      KeyPath = (v383 + 608 * v387);
      memcpy(v443, KeyPath, 0x260uLL);
      ++v387;
      v176 = v384[2];
      if (v385 == v176)
      {
LABEL_182:
        sub_1AAF20868(v443);
        memcpy(v445, v443, 0x270uLL);
        v285 = 1;
      }

      else
      {
        if (v385 >= v176)
        {
          goto LABEL_235;
        }

        v325 = v385 + 1;
        v410 = *&v382[2 * v385];
        memmove(v445, KeyPath, 0x260uLL);
        v445[38] = v410;
        nullsub_1();
        sub_1AAF14AE0(v443, v444);

        v285 = 0;
        v385 = v325;
        v173 = v406;
      }

      memcpy(v443, v445, sizeof(v443));
      if (sub_1AAF20850(v443) == 1)
      {

        goto LABEL_218;
      }

      LODWORD(v395) = v285;
      v400 = *(&v445[38] + 1);
      v401 = *&v445[38];
      memcpy(v444, v445, sizeof(v444));
      sub_1AAF20668(v173, v404, sub_1AACFDAA8);
      v286 = *(&v444[3] + 1);
      v288 = *(&v444[4] + 1);
      v287 = *&v444[4];
      v289 = *(&v444[5] + 1);
      v290 = *&v444[5];
      v291 = v444[6];
      v292 = *&v444[7];
      v435 = *(&v444[3] + 1);
      v403 = *&v444[3];
      v436 = v444[4];
      v437 = v444[5];
      v438 = v444[6];
      v439 = *&v444[7];
      v389 = *(&v444[2] + 1);
      v440 = *(&v444[2] + 1);
      v441 = *&v444[3];
      v442 = 0;
      sub_1AADA61DC(*(&v444[3] + 1), *&v444[4], SBYTE8(v444[4]), *&v444[5]);
      v390 = v287;
      v391 = v286;
      v293 = v287;
      v294 = v288;
      sub_1AADA61DC(v286, v293, v288, v290);
      v408 = v289;
      v295 = v289;
      v296 = *(&v291 + 1);
      v402 = v291;
      *&v405 = v292;
      sub_1AADA61DC(v295, v291, SBYTE8(v291), v292);

      sub_1AAE0F9F0(&v435);
      v398 = v288;
      if (v290)
      {
        v297 = v390;
        v298 = v391;
        v393 = v390;
        v394 = v391;
        LODWORD(v409) = v294;
        v392 = v290;
        goto LABEL_202;
      }

      v386 = 0;
      v299 = v401;
      v300 = *(v401 + 2);
      v388 = *(&v291 + 1);
      if (v300)
      {
        *&v410 = v465[38];
        v412[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD414C0(0, v300, 0);
        v301 = v412[0];
        v302 = v299 + 32;
        do
        {
          v303 = v302[1];
          v415 = *v302;
          v416 = v303;
          v304 = v302[2];
          v305 = v302[3];
          v306 = v302[5];
          v419 = v302[4];
          v420 = v306;
          v417 = v304;
          v418 = v305;
          v307 = v302[6];
          v308 = v302[7];
          v309 = v302[8];
          v424 = *(v302 + 18);
          v422 = v308;
          v423 = v309;
          v421 = v307;
          memmove(&v425, v302, 0x98uLL);
          nullsub_1();
          v482 = v431;
          v483 = v432;
          v484 = v433;
          v485 = v434;
          v478 = v427;
          v479 = v428;
          v480 = v429;
          v481 = v430;
          v476 = v425;
          v477 = v426;
          sub_1AAD81BF4(&v415, v414);
          v310 = sub_1AAF72FD4(&v476, v410);
          v312 = v311;
          v314 = v313;
          v316 = v315;
          sub_1AAD81C50(&v415);
          v412[0] = v301;
          v318 = *(v301 + 16);
          v317 = *(v301 + 24);
          if (v318 >= v317 >> 1)
          {
            sub_1AAD414C0((v317 > 1), v318 + 1, 1);
            v301 = v412[0];
          }

          *(v301 + 16) = v318 + 1;
          v319 = (v301 + 32 * v318);
          v319[4] = v310;
          v319[5] = v312;
          v319[6] = v314;
          v319[7] = v316;
          v302 = (v302 + 152);
          --v300;
        }

        while (v300);
        v320 = MEMORY[0x1E69E7CC0];
        v296 = v388;
        v321 = *(v301 + 16);
        if (v321)
        {
LABEL_194:
          v322 = 0;
          v323 = (v301 + 56);
          while (1)
          {
            v324 = *v323;
            if (*v323)
            {
              break;
            }

            ++v322;
            v323 += 4;
            if (v321 == v322)
            {
              goto LABEL_197;
            }
          }

          v327 = *(v323 - 2);
          v326 = *(v323 - 1);
          v328 = *(v323 - 3);

          sub_1AADA61DC(v328, v327, v326, v324);
          v296 = v388;
          sub_1AAD04750(v328, v327, v326 & 1);

          sub_1AAF1161C(8236, 0xE200000000000000, 0, v320, v301, v322);
          v393 = v330;
          v394 = v329;
          LODWORD(v409) = v331;
          v392 = v332;
          swift_bridgeObjectRelease_n();
          v297 = v390;
          v298 = v391;
          v294 = v398;
          sub_1AADA6198(v391, v390, v398, 0);
          goto LABEL_201;
        }
      }

      else
      {
        v301 = MEMORY[0x1E69E7CC0];
        v320 = MEMORY[0x1E69E7CC0];
        v321 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v321)
        {
          goto LABEL_194;
        }
      }

LABEL_197:

      v297 = v390;
      v298 = v391;
      v294 = v398;
      sub_1AADA6198(v391, v390, v398, 0);
      LODWORD(v409) = 0;
      v393 = 0xE000000000000000;
      v394 = 0;
      v392 = v320;
LABEL_201:
      v290 = v386;
LABEL_202:
      v412[0] = v298;
      v412[1] = v297;
      v412[2] = v294;
      v412[3] = v290;
      v333 = v408;
      v334 = v402;
      v412[4] = v408;
      v412[5] = v402;
      v335 = v405;
      v412[6] = v296;
      v412[7] = v405;
      v412[8] = v389;
      v412[9] = v403;
      v413 = 0;
      sub_1AADA61DC(v408, v402, v296, v405);
      v336 = v296;
      v337 = v334;
      sub_1AADA61DC(v298, v297, v398, v290);
      sub_1AADA61DC(v333, v334, v336, v335);

      sub_1AAE0F9F0(v412);
      if (v335)
      {

        v280 = v336;
        v281 = v409;
        goto LABEL_177;
      }

      v388 = v336;
      v338 = v400;
      v339 = *(v400 + 2);
      v281 = v409;
      if (v339)
      {
        *&v410 = v465[38];
        v411 = MEMORY[0x1E69E7CC0];
        sub_1AAD414C0(0, v339, 0);
        v340 = v411;
        v341 = v338 + 2;
        do
        {
          v342 = v341[1];
          v415 = *v341;
          v416 = v342;
          v343 = v341[2];
          v344 = v341[3];
          v345 = v341[5];
          v419 = v341[4];
          v420 = v345;
          v417 = v343;
          v418 = v344;
          v346 = v341[6];
          v347 = v341[7];
          v348 = v341[8];
          v424 = *(v341 + 18);
          v422 = v347;
          v423 = v348;
          v421 = v346;
          memmove(&v425, v341, 0x98uLL);
          nullsub_1();
          v472 = v431;
          v473 = v432;
          v474 = v433;
          v475 = v434;
          v468 = v427;
          v469 = v428;
          v470 = v429;
          v471 = v430;
          v466 = v425;
          v467 = v426;
          sub_1AAD81BF4(&v415, v414);
          v349 = sub_1AAF72FD4(&v466, v410);
          v351 = v350;
          v353 = v352;
          v355 = v354;
          sub_1AAD81C50(&v415);
          v411 = v340;
          v357 = *(v340 + 16);
          v356 = *(v340 + 24);
          if (v357 >= v356 >> 1)
          {
            sub_1AAD414C0((v356 > 1), v357 + 1, 1);
            v340 = v411;
          }

          *(v340 + 16) = v357 + 1;
          v358 = (v340 + 32 * v357);
          v358[4] = v349;
          v358[5] = v351;
          v358[6] = v353;
          v358[7] = v355;
          v341 = (v341 + 152);
          --v339;
        }

        while (v339);
        v359 = MEMORY[0x1E69E7CC0];
        v281 = v409;
        v360 = *(v340 + 16);
        if (v360)
        {
LABEL_211:
          v361 = 0;
          v362 = (v340 + 56);
          while (1)
          {
            v363 = *v362;
            if (*v362)
            {
              break;
            }

            ++v361;
            v362 += 4;
            if (v360 == v361)
            {
              goto LABEL_214;
            }
          }

          v366 = *(v362 - 2);
          v365 = *(v362 - 1);
          v367 = *(v362 - 3);

          sub_1AADA61DC(v367, v366, v365, v363);
          sub_1AAD04750(v367, v366, v365 & 1);

          sub_1AAF1161C(8236, 0xE200000000000000, 0, v359, v340, v361);
          v364 = v368;
          v337 = v369;
          v280 = v370;
          *&v405 = v371;

          swift_bridgeObjectRelease_n();
          goto LABEL_216;
        }
      }

      else
      {
        v340 = MEMORY[0x1E69E7CC0];
        v359 = MEMORY[0x1E69E7CC0];
        v360 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v360)
        {
          goto LABEL_211;
        }
      }

LABEL_214:

      v364 = 0;
      v280 = 0;
      v337 = 0xE000000000000000;
      *&v405 = v359;
LABEL_216:
      sub_1AADA6198(v408, v402, v388, 0);
      v408 = v364;
LABEL_177:
      LODWORD(v409) = v281;
      v372 = 0;
      v373 = v407;
      v282 = v393;
      v283 = v394;
      v284 = v408;
      v126 = v405;
      sub_1AAF8DF34();
      sub_1AAD04750(v284, v337, v280 & 1);

      sub_1AAD04750(v283, v282, v409 & 1);

      sub_1AAF14B3C(v444);
      KeyPath = sub_1AACFDAA8;
      sub_1AAF20890(v404, sub_1AACFDAA8);
      v173 = v406;
      sub_1AAF20890(v406, sub_1AACFDAA8);
      sub_1AAF206D0(v397, v173);
      v279 = v396;
      v278 = v395;
    }
  }

  *&v445[0] = v139;
  sub_1AAD414E0(0, v173, 0);
  v180 = *&v445[0];
  v266 = v126 + 5;
  while (1)
  {
    v267 = *(v266 - 1);
    v268 = *v266;
    KeyPath = *(*v266 + 16);
    v269 = *(v267 + 2);
    v270 = &KeyPath[v269];
    if (__OFADD__(v269, KeyPath))
    {
      break;
    }

    v271 = swift_isUniquelyReferenced_nonNull_native();
    if (!v271 || v270 > *(v267 + 3) >> 1)
    {
      if (v269 <= v270)
      {
        v272 = &KeyPath[v269];
      }

      else
      {
        v272 = v269;
      }

      v267 = sub_1AAD6931C(v271, v272, 1, v267);
    }

    v273 = MEMORY[0x1E69E7CC0];
    if (*(v268 + 16))
    {
      v176 = *(v267 + 2);
      if (((*(v267 + 3) >> 1) - v176) < KeyPath)
      {
        goto LABEL_234;
      }

      swift_arrayInitWithCopy();

      if (KeyPath)
      {
        v274 = *(v267 + 2);
        v189 = __OFADD__(v274, KeyPath);
        v176 = &KeyPath[v274];
        if (v189)
        {
          goto LABEL_236;
        }

        *(v267 + 2) = v176;
      }
    }

    else
    {

      if (KeyPath)
      {
        goto LABEL_232;
      }
    }

    v275 = v180;
    *&v445[0] = v180;
    v277 = *(v180 + 16);
    v276 = *(v180 + 24);
    if (v277 >= v276 >> 1)
    {
      KeyPath = v445;
      sub_1AAD414E0((v276 > 1), v277 + 1, 1);
      v275 = *&v445[0];
    }

    *(v275 + 16) = v277 + 1;
    v180 = v275;
    v176 = v275 + 16 * v277;
    *(v176 + 32) = v267;
    *(v176 + 40) = v273;
    v266 += 2;
    if (!--v173)
    {
      goto LABEL_173;
    }
  }

LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  v126 = sub_1AAD6A1F4((v176 > 1), KeyPath, 1, v126);
LABEL_219:
  sub_1AAF20734(v488, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);
  sub_1AAF20890(v406, sub_1AACFDAA8);
  v126[2] = KeyPath;
  sub_1AAF206D0(v377, v126 + ((*(v399 + 80) + 32) & ~*(v399 + 80)) + *(v399 + 72) * v173);
LABEL_220:
  memcpy(v443, v465, 0x120uLL);
  sub_1AAF20734(v443, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);
}

void sub_1AAF17C04(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v362 = &v358 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACFDAA8(0);
  v390 = v4;
  v381 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v358 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v393 = &v358 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v358 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v374 = &v358 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v373 = &v358 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v361 = &v358 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v358 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v386 = &v358 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v377 = &v358 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v358 - v26;
  MEMORY[0x1EEE9AC00](v28);
  *&v389 = &v358 - v29;
  v378 = *(v1 + 312);
  v30 = *(v1 + 296);
  memcpy(v421, v1, sizeof(v421));
  memcpy(v445, v1, 0x121uLL);
  memcpy(v446, v1, 0x121uLL);
  v31 = sub_1AAF209BC(v446);
  v383 = v30;
  if (v31 == 1)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_221;
  }

  v61 = *(v1 + 304);
  memcpy(v420, v445, 0x121uLL);
  memcpy(v444, v445, sizeof(v444));
  if (v61)
  {
    v32 = *(v383 + 16);
    if (v32 <= 1)
    {
      if (v32)
      {
LABEL_3:

        v33 = MEMORY[0x1E69E7CC0];
        v34 = 32;
        v379 = v11;
        v380 = v6;
        do
        {
          v391 = v32;
          *&v392 = v33;
          v385 = v34;
          memcpy(v418, (v383 + v34), 0x251uLL);
          v35 = *(&v418[34] + 1);
          v384 = *&v418[34];
          v36 = v418[35];
          v37 = *(&v418[35] + 1);
          v38 = *(&v418[36] + 1);
          v382 = *&v418[36];
          v388 = v418[1];
          v389 = v418[0];
          sub_1AAECFFF8(v418, v416);
          v39 = sub_1AAF1A674(v418, v421);
          v41 = v40;
          v43 = v42;
          v45 = v44;
          *(&v416[1] + 8) = v388;
          *(v416 + 8) = v389;
          *&v416[0] = 0;
          *(&v416[2] + 1) = 0;
          sub_1AAF201D0();
          LODWORD(v386) = v43;
          v387 = v41;
          *&v388 = v39;
          *&v389 = v45;
          sub_1AAF8EB44();
          if (v37)
          {
            v46 = v384;
            v47 = v384;
            v48 = v35;
            v49 = v36;
          }

          else
          {

            v47 = sub_1AAF739C0(v50, v378);
            v48 = v51;
            v49 = v52;
            v54 = v53;

            if (!v54)
            {
              v47 = 0;
              v48 = 0xE000000000000000;
              v49 = 0;
            }

            v46 = v384;
          }

          sub_1AADA61DC(v46, v35, v36, v37);
          v55 = v379;
          v56 = v393;
          sub_1AAF8DF44();
          sub_1AAD04750(v47, v48, v49 & 1);

          sub_1AAF20890(v56, sub_1AACFDAA8);
          if (v38)
          {

            v57 = v377;
            sub_1AAF8DF54();

            sub_1AAF20890(v55, sub_1AACFDAA8);
            sub_1AAF206D0(v57, v55);
          }

          v58 = v380;
          sub_1AAF20668(v55, v380, sub_1AACFDAA8);
          v33 = v392;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1AAD6A1F4(0, v33[2] + 1, 1, v33);
          }

          v60 = v33[2];
          v59 = v33[3];
          if (v60 >= v59 >> 1)
          {
            v33 = sub_1AAD6A1F4((v59 > 1), v60 + 1, 1, v33);
          }

          sub_1AAD04750(v388, v387, v386 & 1);

          sub_1AAF209D4(v418);
          sub_1AAF20890(v55, sub_1AACFDAA8);
          v33[2] = v60 + 1;
          sub_1AAF206D0(v58, v33 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v60);
          v34 = v385 + 600;
          v32 = (v391 - 1);
        }

        while (v391 != 1);
      }

LABEL_221:
      memcpy(v416, v421, 0x121uLL);
      sub_1AAF20734(v416, &qword_1EB427098, &type metadata for ChartAccessibilityContent.GroupItem);

      return;
    }
  }

  memcpy(v419, v445, 0x121uLL);
  sub_1AAECFF4C(v419, v418);
  sub_1AAED1330();
  if (v61)
  {
    sub_1AAED1330();
    v66 = *(v383 + 16);
    if (v66)
    {
      v67 = v64;
      v68 = v62;
      v69 = v63;
      v70 = v65;

      v72 = v70;
      v73 = v69;
      v74 = v68;
      v75 = v67;
      v76 = v71 + 56;
      do
      {
        *&v74 = CGRectUnion(*&v74, *(v76 - 24));
        v76 += 600;
        --v66;
      }

      while (v66);
      v77 = v75;
      v78 = v74;
      v79 = v73;
      v80 = v72;

      v65 = v80;
      v63 = v79;
      v62 = v78;
      v64 = v77;
    }
  }

  v81 = v62;
  v82 = v63;
  v83 = v64;
  v84 = v65;
  v85 = 0x401C5BF891B4EF6ALL;
  if (CGRectGetWidth(*&v62) >= 7.0898154)
  {
    *&v89 = v83;
    v90 = v81;
    v91 = v82;
    Height = v84;
  }

  else
  {
    v447.origin.x = v81;
    v447.origin.y = v82;
    v447.size.width = v83;
    v447.size.height = v84;
    v86 = CGRectGetMinX(v447) + -3.5449077;
    v448.origin.x = v81;
    v448.origin.y = v82;
    v448.size.width = v83;
    v448.size.height = v84;
    MinY = CGRectGetMinY(v448);
    v449.origin.x = v81;
    v449.origin.y = v82;
    v449.size.width = v83;
    v449.size.height = v84;
    Height = CGRectGetHeight(v449);
    *&v89 = 7.0898154;
    v90 = v86;
    v91 = MinY;
  }

  MinX = v90;
  v93 = v91;
  Width = *&v89;
  v95 = Height;
  if (CGRectGetHeight(*&v90) >= 7.0898154)
  {
    v85 = *&v95;
  }

  else
  {
    v96 = MinX;
    v450.origin.x = MinX;
    v450.origin.y = v93;
    v450.size.width = Width;
    v450.size.height = v95;
    MinX = CGRectGetMinX(v450);
    v451.origin.x = v96;
    v451.origin.y = v93;
    v451.size.width = Width;
    v451.size.height = v95;
    v97 = CGRectGetMinY(v451) + -3.5449077;
    v452.origin.x = v96;
    v452.origin.y = v93;
    v452.size.width = Width;
    v452.size.height = v95;
    Width = CGRectGetWidth(v452);
    v93 = v97;
  }

  v391 = v20;
  *&v416[0] = 0;
  *(v416 + 1) = MinX;
  *&v416[1] = v93;
  *(&v416[1] + 1) = Width;
  v416[2] = v85;
  v98 = v420[2];
  v99 = v420[3];
  v100 = v420[4];
  v101 = v420[5];
  v387 = v420[7];
  *&v388 = v420[6];
  v384 = v420[9];
  v385 = v420[8];
  v382 = v420[10];
  *&v393 = v420[11];
  *&v392 = v27;
  if (v420[5])
  {
    v102 = v420[2];
    v103 = v420[3];
    v104 = v420[4];
  }

  else
  {
    v442[6] = *&v420[25];
    v442[7] = *&v420[27];
    v442[8] = *&v420[29];
    v443 = v420[31];
    v442[2] = *&v420[17];
    v442[3] = *&v420[19];
    v442[4] = *&v420[21];
    v442[5] = *&v420[23];
    v442[0] = *&v420[13];
    v442[1] = *&v420[15];
    sub_1AAF20224(&v420[13], v418, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v105 = sub_1AAF72FD4(v442, v378);
    v107 = v106;
    v380 = v108;
    v110 = v109;
    sub_1AAF20734(&v420[13], qword_1ED9B2098, &type metadata for AccessibilityDataField);
    if (v110)
    {
      v102 = v105;
    }

    else
    {
      v102 = 0;
    }

    if (v110)
    {
      v103 = v107;
    }

    else
    {
      v103 = 0xE000000000000000;
    }

    if (v110)
    {
      v104 = v380;
    }

    else
    {
      v104 = 0;
    }
  }

  sub_1AADA61DC(v98, v99, v100, v101);
  sub_1AAF201D0();
  sub_1AAF8EB44();
  sub_1AAD04750(v102, v103, v104 & 1);

  v112 = v384;
  if (v384)
  {
    v114 = v387;
    v113 = v388;
    v115 = v388;
    v116 = v387;
    v117 = v385;
    v118 = v385;
  }

  else
  {
    sub_1AAF1B49C(v383, v378, v111);
    v115 = v119;
    v116 = v120;
    v118 = v121;
    v114 = v387;
    v113 = v388;
    v117 = v385;
  }

  sub_1AADA61DC(v113, v114, v117, v112);
  v122 = v389;
  v123 = v392;
  sub_1AAF8DF44();
  sub_1AAD04750(v115, v116, v118 & 1);

  v124 = sub_1AAF20890(v123, sub_1AACFDAA8);
  v125 = v393;
  if (v393)
  {

    v126 = v377;
    sub_1AAF8DF54();

    sub_1AAF20890(v122, sub_1AACFDAA8);
    v124 = sub_1AAF206D0(v126, v122);
  }

  v127 = v383;
  v128 = *(v383 + 16);
  if (v128 <= 9)
  {
    v129 = sub_1AAD6A0A8(0, v128, 0, MEMORY[0x1E69E7CC0]);
    v130 = v129;
    v131 = *(v127 + 16);
    if (!v131)
    {
      goto LABEL_151;
    }

    v132 = 0;
    *&v393 = v131 - 1;
    v392 = xmmword_1AAF92AB0;
    while (1)
    {
      memcpy(v418, (v127 + 32), 0x251uLL);
      KeyPath = *&v418[2];
      v134 = *(v127 + 400);
      v417[0] = *(v127 + 384);
      v417[1] = v134;
      v135 = *(v127 + 464);
      v137 = *(v127 + 416);
      v136 = *(v127 + 432);
      v417[4] = *(v127 + 448);
      v417[5] = v135;
      v417[2] = v137;
      v417[3] = v136;
      v139 = *(v127 + 496);
      v138 = *(v127 + 512);
      v140 = *(v127 + 480);
      *&v417[9] = *(v127 + 528);
      v417[7] = v139;
      v417[8] = v138;
      v417[6] = v140;
      if (sub_1AAED0054(v417) == 1)
      {
        sub_1AAECFFF8(v418, v416);
      }

      else
      {
        sub_1AAF20A28(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
        v141 = swift_allocObject();
        v142 = v417[6];
        v143 = v417[8];
        *(v141 + 144) = v417[7];
        *(v141 + 160) = v143;
        v144 = v417[2];
        v145 = v417[4];
        v146 = v417[5];
        *(v141 + 80) = v417[3];
        *(v141 + 96) = v145;
        *(v141 + 112) = v146;
        *(v141 + 128) = v142;
        v147 = v417[0];
        v148 = v417[1];
        *(v141 + 16) = v392;
        *(v141 + 32) = v147;
        *(v141 + 176) = *&v417[9];
        *(v141 + 48) = v148;
        *(v141 + 64) = v144;
        *&v432 = KeyPath;
        sub_1AAECFFF8(v418, v416);
        sub_1AAF20224(&v418[22], v416, qword_1ED9B2098, &type metadata for AccessibilityDataField);

        sub_1AADC92A4(v141);
        KeyPath = v432;
      }

      v416[6] = *(&v418[8] + 8);
      v416[7] = *(&v418[9] + 8);
      v416[8] = *(&v418[10] + 8);
      *&v416[9] = *(&v418[11] + 1);
      v416[2] = *(&v418[4] + 8);
      v416[3] = *(&v418[5] + 8);
      v416[4] = *(&v418[6] + 8);
      v416[5] = *(&v418[7] + 8);
      v416[0] = *(&v418[2] + 8);
      v416[1] = *(&v418[3] + 8);
      if (sub_1AAED0054(v416) != 1)
      {
        v438 = v416[6];
        v439 = v416[7];
        v440 = v416[8];
        v441 = *&v416[9];
        v434 = v416[2];
        v435 = v416[3];
        v436 = v416[4];
        v437 = v416[5];
        v432 = v416[0];
        v433 = v416[1];
        v149 = sub_1AAF14CF0(&v432);
        v150 = sub_1AACBC764(&v432);
        if (v149 <= 1)
        {
          if (v149)
          {
            v151 = *(v150 + 72);
            if (v151 < 0 || v151 == 2)
            {
              goto LABEL_66;
            }
          }

          else if (*(v150 + 56) < 0 || *(v150 + 56) >= 2u)
          {
            goto LABEL_66;
          }

          v428 = *(&v418[8] + 8);
          v429 = *(&v418[9] + 8);
          v430 = *(&v418[10] + 8);
          v431 = *(&v418[11] + 1);
          v424 = *(&v418[4] + 8);
          v425 = *(&v418[5] + 8);
          v426 = *(&v418[6] + 8);
          v427 = *(&v418[7] + 8);
          v422 = *(&v418[2] + 8);
          v423 = *(&v418[3] + 8);
          sub_1AAD81BF4(&v422, &v405);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            KeyPath = sub_1AAD6931C(0, *(KeyPath + 2) + 1, 1, KeyPath);
          }

          v153 = *(KeyPath + 2);
          v152 = *(KeyPath + 3);
          if (v153 >= v152 >> 1)
          {
            KeyPath = sub_1AAD6931C((v152 > 1), v153 + 1, 1, KeyPath);
          }

          v409 = *(&v418[6] + 8);
          v410 = *(&v418[7] + 8);
          v407 = *(&v418[4] + 8);
          v408 = *(&v418[5] + 8);
          v414 = *(&v418[11] + 1);
          v412 = *(&v418[9] + 8);
          v413 = *(&v418[10] + 8);
          v411 = *(&v418[8] + 8);
          v405 = *(&v418[2] + 8);
          v406 = *(&v418[3] + 8);
          *(KeyPath + 2) = v153 + 1;
          v154 = &KeyPath[152 * v153];
          v155 = v406;
          *(v154 + 2) = v405;
          *(v154 + 3) = v155;
          v156 = v407;
          v157 = v408;
          v158 = v410;
          *(v154 + 6) = v409;
          *(v154 + 7) = v158;
          *(v154 + 4) = v156;
          *(v154 + 5) = v157;
          v159 = v411;
          v160 = v412;
          v161 = v413;
          *(v154 + 22) = v414;
          *(v154 + 9) = v160;
          *(v154 + 10) = v161;
          *(v154 + 8) = v159;
        }
      }

LABEL_66:
      v162 = *&v418[12];
      v125 = v130[2];
      v163 = v130[3];

      if (v125 >= v163 >> 1)
      {
        v130 = sub_1AAD6A0A8((v163 > 1), v125 + 1, 1, v130);
      }

      sub_1AAF209D4(v418);
      v130[2] = v125 + 1;
      v164 = &v130[2 * v125];
      v164[4] = KeyPath;
      v164[5] = v162;
      if (v393 == v132)
      {

LABEL_151:
        MEMORY[0x1EEE9AC00](v129);
        v356 = v421;
        sub_1AADE5E58(sub_1AAF20A78, (&v358 - 4), v130);
        KeyPath = v252;
        v253 = *(sub_1AAD81218(v252) + 16);

        v125 = *(KeyPath + 2);

        if (v253 == v125)
        {
          v375 = v130;
          goto LABEL_176;
        }

        v163 = v130[2];
        if (!v163)
        {

          v375 = MEMORY[0x1E69E7CC0];
          goto LABEL_176;
        }

        *&v418[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD414E0(0, v163, 0);
        v165 = *&v418[0];
        v375 = *&v418[0];
        v254 = v130 + 5;
        v125 = 152;
        while (2)
        {
          v255 = *(v254 - 1);
          v256 = *v254;
          KeyPath = *(*v254 + 16);
          v257 = *(v255 + 2);
          v258 = &KeyPath[v257];
          if (__OFADD__(v257, KeyPath))
          {
            goto LABEL_232;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v258 <= *(v255 + 3) >> 1)
          {
            if (*(v256 + 16))
            {
LABEL_159:
              v165 = *(v255 + 2);
              if (((*(v255 + 3) >> 1) - v165) < KeyPath)
              {
                goto LABEL_235;
              }

              swift_arrayInitWithCopy();

              if (KeyPath)
              {
                v260 = *(v255 + 2);
                v178 = __OFADD__(v260, KeyPath);
                v165 = &KeyPath[v260];
                if (v178)
                {
                  goto LABEL_237;
                }

                *(v255 + 2) = v165;
              }

              goto LABEL_168;
            }
          }

          else
          {
            if (v257 <= v258)
            {
              v261 = &KeyPath[v257];
            }

            else
            {
              v261 = v257;
            }

            v255 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v261, 1, v255);
            if (*(v256 + 16))
            {
              goto LABEL_159;
            }
          }

          if (KeyPath)
          {
            goto LABEL_233;
          }

LABEL_168:
          *&v418[0] = v375;
          v263 = *(v375 + 2);
          v262 = *(v375 + 3);
          if (v263 >= v262 >> 1)
          {
            KeyPath = v418;
            sub_1AAD414E0((v262 > 1), v263 + 1, 1);
            v375 = *&v418[0];
          }

          v264 = v375;
          *(v375 + 2) = v263 + 1;
          v165 = &v264[16 * v263];
          *(v165 + 32) = v255;
          *(v165 + 40) = MEMORY[0x1E69E7CC0];
          v254 += 2;
          if (!--v163)
          {
            goto LABEL_174;
          }

          continue;
        }
      }

      ++v132;
      v165 = *(v383 + 16);
      v127 += 600;
      if (v132 >= v165)
      {
        goto LABEL_228;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v124);
  *(&v358 - 4) = &type metadata for ChartAccessibilityContent.GroupItem;
  *(&v358 - 3) = &type metadata for ChartAccessibilityContent.LeafItem;
  v356 = &off_1F1FE8278;
  v357 = &off_1F1FE82C8;
  KeyPath = swift_getKeyPath();

  v166 = sub_1AAF7BF80(v127, KeyPath);

  v358 = v166[2];
  if (!v358)
  {

    v163 = v389;
LABEL_219:
    sub_1AAF20668(v163, v361, sub_1AACFDAA8);
    v125 = sub_1AAD6A1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v163 = *(v125 + 16);
    v165 = *(v125 + 24);
    KeyPath = (v163 + 1);
    if (v163 >= v165 >> 1)
    {
LABEL_239:
      v125 = sub_1AAD6A1F4((v165 > 1), KeyPath, 1, v125);
    }

    sub_1AAF20734(v445, &qword_1EB427098, &type metadata for ChartAccessibilityContent.GroupItem);
    sub_1AAF20890(v389, sub_1AACFDAA8);
    *(v125 + 16) = KeyPath;
    sub_1AAF206D0(v361, v125 + ((*(v381 + 80) + 32) & ~*(v381 + 80)) + *(v381 + 72) * v163);
    goto LABEL_221;
  }

  v359 = v166 + 4;
  v372 = v166;

  v167 = 0;
  v387 = 0;
  v163 = v389;
LABEL_73:
  v165 = v372[2];
  if (v167 >= v165)
  {
    goto LABEL_238;
  }

  v360 = v167;
  v168 = &v359[2 * v167];
  KeyPath = v168[1];
  v125 = *(KeyPath + 2);
  v363 = *v168;

  v384 = KeyPath;
  v382 = v125;
  if (v125)
  {
    v169 = 0;
    v170 = KeyPath + 224;
    v171 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v165 = *(v384 + 2);
      if (v169 >= v165)
      {
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      *&v418[0] = MEMORY[0x1E69E7CD0];

      v173 = v387;
      KeyPath = sub_1AAF202A4(v172);
      v387 = v173;

      v125 = *(KeyPath + 2);
      v163 = *(v171 + 2);
      v174 = v163 + v125;
      if (__OFADD__(v163, v125))
      {
        goto LABEL_224;
      }

      v175 = swift_isUniquelyReferenced_nonNull_native();
      if (!v175 || v174 > *(v171 + 3) >> 1)
      {
        if (v163 <= v174)
        {
          v176 = v163 + v125;
        }

        else
        {
          v176 = v163;
        }

        v171 = sub_1AAD6931C(v175, v176, 1, v171);
      }

      v163 = v389;
      if (*(KeyPath + 2))
      {
        v165 = *(v171 + 2);
        if (((*(v171 + 3) >> 1) - v165) < v125)
        {
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
          goto LABEL_231;
        }

        swift_arrayInitWithCopy();

        if (v125)
        {
          v177 = *(v171 + 2);
          v178 = __OFADD__(v177, v125);
          v165 = v177 + v125;
          if (v178)
          {
            goto LABEL_229;
          }

          *(v171 + 2) = v165;
        }
      }

      else
      {

        if (v125)
        {
          goto LABEL_225;
        }
      }

      ++v169;
      v170 = (v170 + 600);
      if (v382 == v169)
      {
        goto LABEL_92;
      }
    }
  }

  v171 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v179 = sub_1AAF7C3F0();
  v180 = *(v179 + 16);
  if (!v180)
  {
    goto LABEL_146;
  }

  v181 = 0;
  v182 = *(v171 + 2);
  v370 = v179;
  v371 = (v179 + 32);
  v375 = v171 + 32;
  *&v393 = v182;
  v364 = v182 - 1;
  v391 = v171;
  v369 = v180;
  while (2)
  {
    v183 = v371 + 72 * v181;
    v405 = *v183;
    v184 = *(v183 + 1);
    v185 = *(v183 + 2);
    v186 = *(v183 + 3);
    v187 = *(v183 + 8);
    v379 = v181;
    v380 = v187;
    *&v409 = v187;
    v407 = v185;
    v408 = v186;
    v406 = v184;
    if (v180 == 1)
    {
      sub_1AAF20668(&v405, v418, sub_1AAF207A4);
      LODWORD(v386) = 0;
      v376 = 0xE000000000000000;
      v377 = 0;
      v385 = MEMORY[0x1E69E7CC0];
      if (!v393)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v212 = *(&v405 + 1);
      v125 = v405;
      v213 = v406;
      if (((*(&v408 + 1) | ((*(&v408 + 5) | (SBYTE7(v408) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        *&v392 = *(&v408 + 1);
        sub_1AAF20668(&v405, v418, sub_1AAF207A4);
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v215 = [objc_opt_self() bundleForClass_];
        LOWORD(v357) = 256;
        v356 = 0;
        v125 = sub_1AAF8EA44();
        v212 = v216;
        v213 = v217;
      }

      else
      {
        sub_1AAF20668(&v405, v418, sub_1AAF207A4);
        sub_1AACD7304(v125, v212, v213 & 1);
      }

      v218 = sub_1AAF8EA04();
      v376 = v219;
      v377 = v218;
      LODWORD(v386) = v220;
      v385 = v221;
      sub_1AAD04750(v125, v212, v213 & 1);

      if (!v393)
      {
LABEL_122:
        *&v388 = MEMORY[0x1E69E7CC0];
        goto LABEL_123;
      }
    }

    v188 = 0;
    *&v388 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      KeyPath = &v375[152 * v188];
      v163 = v188;
      while (1)
      {
        if (v163 >= *(v171 + 2))
        {
          __break(1u);
LABEL_174:

LABEL_176:
          v265 = 0;
          v376 = 0;
          v383 = v421[37];
          v373 = v421[37] + 32;
          v374 = 0;
          v371 = (&v418[37] + 8);
          v372 = v375 + 32;
          v163 = v389;
          while (1)
          {
            if (v265)
            {
              goto LABEL_183;
            }

            v165 = *(v383 + 16);
            if (v376 == v165)
            {
              goto LABEL_183;
            }

            if (v376 >= v165)
            {
              goto LABEL_234;
            }

            KeyPath = (v373 + 600 * v376);
            memcpy(v416, KeyPath, 0x251uLL);
            v125 = ++v376;
            v165 = *(v375 + 2);
            if (v374 == v165)
            {
LABEL_183:
              sub_1AAF20AB0(v416);
              memcpy(v418, v416, 0x268uLL);
              v271 = 1;
            }

            else
            {
              if (v374 >= v165)
              {
                goto LABEL_236;
              }

              v308 = v374 + 1;
              v393 = *&v372[2 * v374];
              memmove(v418, KeyPath, 0x251uLL);
              *v371 = v393;
              nullsub_1();
              sub_1AAECFFF8(v416, v417);

              v271 = 0;
              v374 = v308;
              v163 = v389;
            }

            v272 = v390;
            memcpy(v416, v418, 0x268uLL);
            if (sub_1AAF20A98(v416) == 1)
            {
              break;
            }

            LODWORD(v385) = v271;
            v273 = *(&v418[37] + 1);
            v274 = *&v418[38];
            memcpy(v417, v418, 0x251uLL);
            sub_1AAF20668(v163, v391, sub_1AACFDAA8);
            v275 = *(&v417[33] + 1);
            v276 = *(&v417[34] + 1);
            v277 = *(&v417[35] + 1);
            v278 = *&v417[35];
            *&v392 = *&v417[33];
            v387 = v274;
            *&v388 = *(&v417[32] + 1);
            if (*(&v417[33] + 1))
            {
              v279 = *&v417[35];
              v280 = *&v417[34];
              v281 = *&v417[32];
              sub_1AACD7304(*&v417[32], *(&v417[32] + 1), v417[33] & 1);

              v282 = v281;
              v283 = v280;
              v278 = v279;
            }

            else
            {
              v384 = *(&v417[35] + 1);
              v379 = *&v417[32];
              v380 = *&v417[34];
              v284 = *(v273 + 16);
              v377 = *&v417[35];
              v382 = v273;
              if (v284)
              {
                v378 = *(&v417[34] + 1);
                *&v393 = v421[39];
                v415 = MEMORY[0x1E69E7CC0];
                sub_1AAD414C0(0, v284, 0);
                v285 = v415;
                v286 = (v273 + 32);
                do
                {
                  v287 = v286[1];
                  v395 = *v286;
                  v396 = v287;
                  v288 = v286[2];
                  v289 = v286[3];
                  v290 = v286[5];
                  v399 = v286[4];
                  v400 = v290;
                  v397 = v288;
                  v398 = v289;
                  v291 = v286[6];
                  v292 = v286[7];
                  v293 = v286[8];
                  v404 = *(v286 + 18);
                  v402 = v292;
                  v403 = v293;
                  v401 = v291;
                  memmove(&v405, v286, 0x98uLL);
                  nullsub_1();
                  v438 = v411;
                  v439 = v412;
                  v440 = v413;
                  v441 = v414;
                  v434 = v407;
                  v435 = v408;
                  v436 = v409;
                  v437 = v410;
                  v432 = v405;
                  v433 = v406;
                  sub_1AAD81BF4(&v395, v394);
                  v294 = sub_1AAF72FD4(&v432, v393);
                  v296 = v295;
                  v298 = v297;
                  v300 = v299;
                  sub_1AAD81C50(&v395);
                  v415 = v285;
                  v302 = *(v285 + 16);
                  v301 = *(v285 + 24);
                  if (v302 >= v301 >> 1)
                  {
                    sub_1AAD414C0((v301 > 1), v302 + 1, 1);
                    v285 = v415;
                  }

                  *(v285 + 16) = v302 + 1;
                  v303 = (v285 + 32 * v302);
                  v303[4] = v294;
                  v303[5] = v296;
                  v303[6] = v298;
                  v303[7] = v300;
                  v286 = (v286 + 152);
                  --v284;
                }

                while (v284);
                v278 = v377;
                v276 = v378;
              }

              else
              {
                v285 = MEMORY[0x1E69E7CC0];
              }

              v304 = *(v285 + 16);
              v283 = v380;
              if (v304)
              {
                v305 = 0;
                v306 = (v285 + 56);
                while (1)
                {
                  v307 = *v306;
                  if (*v306)
                  {
                    break;
                  }

                  ++v305;
                  v306 += 4;
                  if (v304 == v305)
                  {
                    goto LABEL_198;
                  }
                }

                v310 = *(v306 - 2);
                v309 = *(v306 - 1);
                v311 = v276;
                v312 = *(v306 - 3);

                sub_1AADA61DC(v312, v310, v309, v307);
                v313 = v312;
                v276 = v311;
                sub_1AAD04750(v313, v310, v309 & 1);

                sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v285, v305);
                v315 = v314;
                v317 = v316;
                v319 = v318;
                v275 = v320;
                swift_bridgeObjectRelease_n();
                sub_1AADA6198(v379, v388, v392, 0);
                v282 = v315;
                *&v388 = v317;
                *&v392 = v319;
                v278 = v377;
              }

              else
              {
LABEL_198:

                sub_1AADA6198(v379, v388, v392, 0);
                v282 = 0;
                *&v392 = 0;
                *&v388 = 0xE000000000000000;
                v275 = MEMORY[0x1E69E7CC0];
              }

              v272 = v390;
              v273 = v382;
              v277 = v384;
            }

            v384 = v275;
            if (v277)
            {
              v266 = v282;
              sub_1AACD7304(v283, v276, v278 & 1);

              v267 = v278;
              v268 = v283;
            }

            else
            {
              v382 = v273;
              v321 = *(v387 + 16);
              v380 = v283;
              v378 = v276;
              if (v321)
              {
                v322 = v387;
                v377 = v278;
                v379 = v282;
                *&v393 = v421[39];
                v415 = MEMORY[0x1E69E7CC0];
                sub_1AAD414C0(0, v321, 0);
                v323 = v415;
                v324 = (v322 + 32);
                do
                {
                  v325 = v324[1];
                  v395 = *v324;
                  v396 = v325;
                  v326 = v324[2];
                  v327 = v324[3];
                  v328 = v324[5];
                  v399 = v324[4];
                  v400 = v328;
                  v397 = v326;
                  v398 = v327;
                  v329 = v324[6];
                  v330 = v324[7];
                  v331 = v324[8];
                  v404 = *(v324 + 18);
                  v402 = v330;
                  v403 = v331;
                  v401 = v329;
                  memmove(&v405, v324, 0x98uLL);
                  nullsub_1();
                  v428 = v411;
                  v429 = v412;
                  v430 = v413;
                  v431 = v414;
                  v424 = v407;
                  v425 = v408;
                  v426 = v409;
                  v427 = v410;
                  v422 = v405;
                  v423 = v406;
                  sub_1AAD81BF4(&v395, v394);
                  v332 = sub_1AAF72FD4(&v422, v393);
                  v334 = v333;
                  v336 = v335;
                  v338 = v337;
                  sub_1AAD81C50(&v395);
                  v415 = v323;
                  v340 = *(v323 + 16);
                  v339 = *(v323 + 24);
                  if (v340 >= v339 >> 1)
                  {
                    sub_1AAD414C0((v339 > 1), v340 + 1, 1);
                    v323 = v415;
                  }

                  *(v323 + 16) = v340 + 1;
                  v341 = (v323 + 32 * v340);
                  v341[4] = v332;
                  v341[5] = v334;
                  v341[6] = v336;
                  v341[7] = v338;
                  v324 = (v324 + 152);
                  --v321;
                }

                while (v321);
                v282 = v379;
                v283 = v380;
                LOBYTE(v278) = v377;
              }

              else
              {
                v323 = MEMORY[0x1E69E7CC0];
              }

              v342 = *(v323 + 16);
              if (v342)
              {
                v343 = 0;
                v344 = (v323 + 56);
                while (1)
                {
                  v345 = *v344;
                  if (*v344)
                  {
                    break;
                  }

                  ++v343;
                  v344 += 4;
                  if (v342 == v343)
                  {
                    goto LABEL_215;
                  }
                }

                v346 = v278;
                v347 = *(v344 - 2);
                v278 = *(v344 - 1);
                v348 = v282;
                v349 = *(v344 - 3);

                sub_1AADA61DC(v349, v347, v278, v345);
                v350 = v278 & 1;
                LOBYTE(v278) = v346;
                v283 = v380;
                v351 = v347;
                v266 = v348;
                sub_1AAD04750(v349, v351, v350);

                sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v323, v343);
                v268 = v352;
                v276 = v353;
                v355 = v354;

                v267 = v355;
                swift_bridgeObjectRelease_n();
              }

              else
              {
LABEL_215:
                v266 = v282;

                v268 = 0;
                v267 = 0;
                v276 = 0xE000000000000000;
              }

              sub_1AADA6198(v283, v378, v278, 0);
              v272 = v390;
            }

            v356 = 0;
            v357 = v272;
            v269 = v388;
            v270 = v268;
            v125 = v267;
            sub_1AAF8DF34();
            sub_1AAD04750(v270, v276, v267 & 1);

            sub_1AAD04750(v266, v269, v392 & 1);

            sub_1AAF209D4(v417);
            KeyPath = sub_1AACFDAA8;
            sub_1AAF20890(v391, sub_1AACFDAA8);
            v163 = v389;
            sub_1AAF20890(v389, sub_1AACFDAA8);
            sub_1AAF206D0(v386, v163);
            v265 = v385;
          }

          goto LABEL_219;
        }

        v189 = *(KeyPath + 1);
        v416[0] = *KeyPath;
        v416[1] = v189;
        v190 = *(KeyPath + 2);
        v191 = *(KeyPath + 3);
        v192 = *(KeyPath + 5);
        v416[4] = *(KeyPath + 4);
        v416[5] = v192;
        v416[2] = v190;
        v416[3] = v191;
        v193 = *(KeyPath + 6);
        v194 = *(KeyPath + 7);
        v195 = *(KeyPath + 8);
        *&v416[9] = *(KeyPath + 18);
        v416[7] = v194;
        v416[8] = v195;
        v416[6] = v193;
        memmove(v418, KeyPath, 0x98uLL);
        v196 = sub_1AAF14CF0(v418);
        if (v196 > 1)
        {
          if (v196 == 2)
          {
LABEL_103:
            v206 = sub_1AACBC764(v418);
            if (*(v206 + 56) < 0)
            {
              goto LABEL_241;
            }

            if (*(v206 + 56))
            {
              goto LABEL_242;
            }

            v125 = *(v206 + 40);
            goto LABEL_109;
          }

          sub_1AACBC764(v418);
          v417[6] = v416[6];
          v417[7] = v416[7];
          v417[8] = v416[8];
          *&v417[9] = *&v416[9];
          v417[2] = v416[2];
          v417[3] = v416[3];
          v417[4] = v416[4];
          v417[5] = v416[5];
          v417[0] = v416[0];
          v417[1] = v416[1];
          v207 = sub_1AACBC764(v417);
          v208 = *(v207 + 8);
          v207 += 8;
          v204 = v208;
          v198 = *(v207 + 56);
          *&v392 = *(v207 + 48);
          v199 = *(v207 + 64);
          v201 = *(v207 + 8);
          v200 = *(v207 + 16);
          v202 = *(v207 + 24);
          v203 = *(v207 + 32);
          v125 = *(v207 + 40);
          sub_1AAE63EFC(v207, &v432);
        }

        else
        {
          if (!v196)
          {
            goto LABEL_103;
          }

          sub_1AACBC764(v418);
          v438 = v416[6];
          v439 = v416[7];
          v440 = v416[8];
          v441 = *&v416[9];
          v434 = v416[2];
          v435 = v416[3];
          v436 = v416[4];
          v437 = v416[5];
          v432 = v416[0];
          v433 = v416[1];
          v197 = sub_1AACBC764(&v432);
          v198 = *(v197 + 64);
          *&v392 = *(v197 + 56);
          v199 = *(v197 + 72);
          v201 = *(v197 + 16);
          v200 = *(v197 + 24);
          v202 = *(v197 + 32);
          v203 = *(v197 + 40);
          v125 = *(v197 + 48);
          v204 = *(v197 + 8);
          *&v417[9] = *&v416[9];
          v417[4] = v416[4];
          v417[5] = v416[5];
          v417[7] = v416[7];
          v417[8] = v416[8];
          v417[6] = v416[6];
          v417[2] = v416[2];
          v417[3] = v416[3];
          v417[0] = v416[0];
          v417[1] = v416[1];
          v205 = sub_1AACBC764(v417);
          sub_1AAF20668(v205, &v422, sub_1AAF14CFC);
        }

        *&v417[0] = v204;
        *(&v417[0] + 1) = v201;
        *&v417[1] = v200;
        BYTE8(v417[1]) = v202;
        *&v417[2] = v203;
        *(&v417[2] + 1) = v125;
        *&v417[3] = v392;
        *(&v417[3] + 1) = v198;
        LOBYTE(v417[4]) = v199;
        if ((v199 & 0x80) != 0)
        {
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        sub_1AAE63F58(v417);
        v171 = v391;
        if (v199)
        {
          __break(1u);
          goto LABEL_223;
        }

LABEL_109:
        if ((~v125 & 0x7FF0000000000000) != 0)
        {
          break;
        }

        ++v163;
        KeyPath += 152;
        if (v393 == v163)
        {
          goto LABEL_123;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v388 = sub_1AAD67B50(0, *(v388 + 16) + 1, 1, v388);
      }

      v210 = *(v388 + 16);
      v209 = *(v388 + 24);
      if (v210 >= v209 >> 1)
      {
        *&v388 = sub_1AAD67B50((v209 > 1), v210 + 1, 1, v388);
      }

      v188 = v163 + 1;
      v211 = v388;
      *(v388 + 16) = v210 + 1;
      *(v211 + 8 * v210 + 32) = v125;
      if (v364 != v163)
      {
        continue;
      }

      break;
    }

LABEL_123:
    if (v372[2] <= 1uLL)
    {
      sub_1AAD04750(v377, v376, v386 & 1);

      sub_1AAD81A30(&v405);

      v163 = v389;
      goto LABEL_143;
    }

    v163 = v389;
    if (*(v380 + 2))
    {
      v222 = *(v380 + 9);
      v416[6] = *(v380 + 8);
      v416[7] = v222;
      v416[8] = *(v380 + 10);
      *&v416[9] = *(v380 + 22);
      v223 = *(v380 + 5);
      v416[2] = *(v380 + 4);
      v416[3] = v223;
      v224 = *(v380 + 7);
      v416[4] = *(v380 + 6);
      v416[5] = v224;
      v225 = *(v380 + 3);
      v416[0] = *(v380 + 2);
      v416[1] = v225;
      sub_1AAD81BF4(v416, v418);

      v418[6] = v416[6];
      v418[7] = v416[7];
      v418[8] = v416[8];
      v418[2] = v416[2];
      v418[3] = v416[3];
      v418[4] = v416[4];
      v418[5] = v416[5];
      v125 = v416;
      v418[0] = v416[0];
      *&v418[9] = *&v416[9];
      v418[1] = v416[1];
      sub_1AAF14CF0(v418);
      v226 = sub_1AACBC764(v418);
      sub_1AAD81C50(v416);
      KeyPath = v378;
      if (*(v378 + 16) && (v227 = sub_1AACE1760(*v226), KeyPath = v378, (v228 & 1) != 0) && (sub_1AACE0A98(*(v378 + 56) + 48 * v227, &v432), KeyPath = v378, v229 = BYTE8(v434), BYTE8(v434) != 255))
      {
        v230 = *&v432;
        v417[0] = v432;
        v417[1] = v433;
        *&v417[2] = v434;
      }

      else
      {
        v229 = 3;
        v230 = 0.0;
        memset(v417, 0, 40);
      }

      BYTE8(v417[2]) = v229;
      v165 = v382;
      if (!v382)
      {
        goto LABEL_230;
      }

      v165 = *(v384 + 2);
      if (!v165)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      sub_1AAF73C2C(v388, v384[536], v230);
      v367 = v231;
      v368 = v232;
      v380 = v233;
      LODWORD(v392) = v234;

      sub_1AAF20668(v163, v374, sub_1AACFDAA8);
      v235 = sub_1AAF739C0(v363, KeyPath);
      if (v238)
      {
        v239 = v235;
      }

      else
      {
        v239 = 0;
      }

      if (v238)
      {
        v240 = v236;
      }

      else
      {
        v240 = 0xE000000000000000;
      }

      if (v238)
      {
        v241 = v237;
      }

      else
      {
        v241 = 0;
      }

      v242 = v376;
      v243 = v377;
      v365 = sub_1AAF8EA04();
      v366 = v244;
      v246 = v245;
      *&v388 = v247;
      sub_1AAD04750(v239, v240, v241 & 1);

      v356 = 0;
      v357 = v390;
      v248 = v366;
      v125 = v367;
      v249 = v380;
      v250 = v374;
      sub_1AAF8DF34();
      sub_1AAD04750(v243, v242, v386 & 1);

      sub_1AAD81A30(&v405);
      v251 = v248;
      v163 = v389;
      sub_1AAD04750(v365, v251, v246 & 1);

      sub_1AAD04750(v125, v249, v392 & 1);

      v171 = v391;
      sub_1AAF20890(v250, sub_1AACFDAA8);
      sub_1AAD57C94(v417);
      sub_1AAF20890(v163, sub_1AACFDAA8);
      sub_1AAF206D0(v373, v163);
LABEL_143:
      v181 = (v379 + 1);
      v180 = v369;
      KeyPath = v370;
      if (v379 + 1 != v369)
      {
        v165 = *(v370 + 16);
        if (v181 >= v165)
        {
LABEL_226:
          __break(1u);
          goto LABEL_227;
        }

        continue;
      }

LABEL_146:

      KeyPath = (v360 + 1);

      v167 = KeyPath;
      if (KeyPath == v358)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_219;
      }

      goto LABEL_73;
    }

    break;
  }

LABEL_243:

  __break(1u);
}

uint64_t sub_1AAF1A164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v86 = *(a1 + 56);
  v87 = v3;
  v4 = *(a1 + 104);
  v85[0] = *(a1 + 88);
  v85[1] = v4;
  v84 = *(a1 + 40);
  v5 = v86;
  v6 = v3;
  v63 = *(&v85[0] + 1);
  v7 = v4;
  v64 = *&v85[0];
  v8 = MEMORY[0x1E6981148];
  sub_1AAF20224(&v86, v90, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
  sub_1AAF20224(&v86, v90, &qword_1ED9B2B78, v8);
  sub_1AAF20224(v85, v90, &qword_1ED9B2B78, v8);
  sub_1AAF20224(&v84, v90, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
  sub_1AADA6198(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_1AADA6198(v64, v63, v7, *(&v7 + 1));

  if (*(&v87 + 1))
  {
    return v86;
  }

  v10 = *(a1 + 400);
  v11 = *(a1 + 368);
  v80 = *(a1 + 384);
  v81 = v10;
  v12 = *(a1 + 400);
  v82 = *(a1 + 416);
  v13 = *(a1 + 336);
  v14 = *(a1 + 304);
  v76 = *(a1 + 320);
  v77 = v13;
  v15 = *(a1 + 336);
  v16 = *(a1 + 368);
  v78 = *(a1 + 352);
  v79 = v16;
  v17 = *(a1 + 304);
  v75[0] = *(a1 + 288);
  v75[1] = v17;
  v88[6] = v80;
  v88[7] = v12;
  v88[8] = *(a1 + 416);
  v88[2] = v76;
  v88[3] = v15;
  v88[4] = v78;
  v88[5] = v11;
  v83 = *(a1 + 432);
  v89 = *(a1 + 432);
  v88[0] = v75[0];
  v88[1] = v14;
  if (sub_1AAED0054(v88) != 1)
  {
    v18 = *(a2 + 304);

    sub_1AAF20224(v75, v90, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v19 = sub_1AAF72FD4(v75, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (v25)
    {
      v26 = sub_1AAD69E2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AAD69E2C((v27 > 1), v28 + 1, 1, v26);
      }

      sub_1AAF20734(v75, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v26 + 2) = v28 + 1;
      v29 = &v26[32 * v28];
      *(v29 + 4) = v19;
      *(v29 + 5) = v21;
      v29[48] = v23 & 1;
      *(v29 + 7) = v25;
      goto LABEL_10;
    }

    sub_1AAF20734(v75, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v30 = *(a1 + 552);
  v31 = *(a1 + 520);
  v71 = *(a1 + 536);
  v72 = v30;
  v32 = *(a1 + 552);
  v73 = *(a1 + 568);
  v33 = *(a1 + 488);
  v34 = *(a1 + 456);
  v67 = *(a1 + 472);
  v68 = v33;
  v35 = *(a1 + 488);
  v36 = *(a1 + 520);
  v69 = *(a1 + 504);
  v70 = v36;
  v37 = *(a1 + 456);
  v66[0] = *(a1 + 440);
  v66[1] = v37;
  v90[6] = v71;
  v90[7] = v32;
  v90[8] = *(a1 + 568);
  v90[2] = v67;
  v90[3] = v35;
  v90[4] = v69;
  v90[5] = v31;
  v74 = *(a1 + 584);
  v91 = *(a1 + 584);
  v90[0] = v66[0];
  v90[1] = v34;
  if (sub_1AAED0054(v90) != 1)
  {
    v38 = *(a2 + 304);

    sub_1AAF20224(v66, v65, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v39 = sub_1AAF72FD4(v66, v38);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if (v45)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AAD69E2C(0, *(v26 + 2) + 1, 1, v26);
      }

      v47 = *(v26 + 2);
      v46 = *(v26 + 3);
      if (v47 >= v46 >> 1)
      {
        v26 = sub_1AAD69E2C((v46 > 1), v47 + 1, 1, v26);
      }

      sub_1AAF20734(v66, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v26 + 2) = v47 + 1;
      v48 = &v26[32 * v47];
      *(v48 + 4) = v39;
      *(v48 + 5) = v41;
      v48[48] = v43 & 1;
      *(v48 + 7) = v45;
    }

    else
    {
      sub_1AAF20734(v66, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    }
  }

  v49 = *(a1 + 120);
  if (*(v49 + 16))
  {
    v50 = *(a2 + 304);

    v51 = sub_1AAF739C0(v49, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;

    if (v57)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AAD69E2C(0, *(v26 + 2) + 1, 1, v26);
      }

      v59 = *(v26 + 2);
      v58 = *(v26 + 3);
      if (v59 >= v58 >> 1)
      {
        v26 = sub_1AAD69E2C((v58 > 1), v59 + 1, 1, v26);
      }

      *(v26 + 2) = v59 + 1;
      v60 = &v26[32 * v59];
      *(v60 + 4) = v51;
      *(v60 + 5) = v53;
      v60[48] = v55 & 1;
      *(v60 + 7) = v57;
    }
  }

  v61 = sub_1AAF11448(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v26);

  return v61;
}

uint64_t sub_1AAF1A674(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  v75[0] = *(a1 + 512);
  v75[1] = v2;
  if (*(&v2 + 1))
  {
    v3 = *&v75[0];
    goto LABEL_26;
  }

  v6 = *(a1 + 248);
  v68[2] = *(a1 + 232);
  v68[3] = v6;
  v7 = *(a1 + 216);
  v68[0] = *(a1 + 200);
  v68[1] = v7;
  v8 = *(a1 + 312);
  v9 = *(a1 + 280);
  v71 = *(a1 + 296);
  v72 = v8;
  v10 = *(a1 + 312);
  v73 = *(a1 + 328);
  v11 = *(a1 + 280);
  v69 = *(a1 + 264);
  v70 = v11;
  v76[6] = v71;
  v76[7] = v10;
  v76[8] = *(a1 + 328);
  v12 = *(a1 + 248);
  v76[2] = *(a1 + 232);
  v76[3] = v12;
  v74 = *(a1 + 344);
  v77 = *(a1 + 344);
  v76[4] = v69;
  v76[5] = v9;
  v13 = *(a1 + 216);
  v76[0] = *(a1 + 200);
  v76[1] = v13;
  if (sub_1AAED0054(v76) != 1)
  {
    v14 = *(a2 + 312);

    sub_1AAF20224(v68, v78, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v15 = sub_1AAF72FD4(v68, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if (v21)
    {
      v22 = sub_1AAD69E2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AAD69E2C((v23 > 1), v24 + 1, 1, v22);
      }

      sub_1AAF20734(v68, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v22 + 2) = v24 + 1;
      v25 = &v22[32 * v24];
      *(v25 + 4) = v15;
      *(v25 + 5) = v17;
      v25[48] = v19 & 1;
      *(v25 + 7) = v21;
      goto LABEL_10;
    }

    sub_1AAF20734(v68, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v26 = *(a1 + 464);
  v27 = *(a1 + 432);
  v64 = *(a1 + 448);
  v65 = v26;
  v28 = *(a1 + 464);
  v66 = *(a1 + 480);
  v29 = *(a1 + 400);
  v30 = *(a1 + 368);
  v60 = *(a1 + 384);
  v61 = v29;
  v31 = *(a1 + 400);
  v32 = *(a1 + 432);
  v62 = *(a1 + 416);
  v63 = v32;
  v33 = *(a1 + 368);
  v59[0] = *(a1 + 352);
  v59[1] = v33;
  v78[6] = v64;
  v78[7] = v28;
  v78[8] = *(a1 + 480);
  v78[2] = v60;
  v78[3] = v31;
  v78[4] = v62;
  v78[5] = v27;
  v67 = *(a1 + 496);
  v79 = *(a1 + 496);
  v78[0] = v59[0];
  v78[1] = v30;
  if (sub_1AAED0054(v78) != 1)
  {
    v34 = *(a2 + 312);

    sub_1AAF20224(v59, v58, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v35 = sub_1AAF72FD4(v59, v34);
    v37 = v36;
    v39 = v38;
    v41 = v40;

    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AAD69E2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      if (v43 >= v42 >> 1)
      {
        v22 = sub_1AAD69E2C((v42 > 1), v43 + 1, 1, v22);
      }

      sub_1AAF20734(v59, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v22 + 2) = v43 + 1;
      v44 = &v22[32 * v43];
      *(v44 + 4) = v35;
      *(v44 + 5) = v37;
      v44[48] = v39 & 1;
      *(v44 + 7) = v41;
    }

    else
    {
      sub_1AAF20734(v59, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    }
  }

  v45 = *(a1 + 32);
  if (*(v45 + 16))
  {
    v46 = *(a2 + 312);

    v47 = sub_1AAF739C0(v45, v46);
    v49 = v48;
    v51 = v50;
    v53 = v52;

    if (v53)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AAD69E2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v55 = *(v22 + 2);
      v54 = *(v22 + 3);
      if (v55 >= v54 >> 1)
      {
        v22 = sub_1AAD69E2C((v54 > 1), v55 + 1, 1, v22);
      }

      *(v22 + 2) = v55 + 1;
      v56 = &v22[32 * v55];
      *(v56 + 4) = v47;
      *(v56 + 5) = v49;
      v56[48] = v51 & 1;
      *(v56 + 7) = v53;
    }
  }

  v3 = sub_1AAF11448(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v22);

LABEL_26:
  sub_1AAF20224(v75, v58, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
  return v3;
}

void sub_1AAF1AAD0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v99 = MEMORY[0x1E69E7CC0];
    v6 = 312;
    v7 = *(a1 + 16);
    do
    {
      *&v125[0] = MEMORY[0x1E69E7CD0];

      v9 = sub_1AAF202A4(v8);

      v10 = *(v9 + 16);
      v11 = *(v99 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v99;
      if (!isUniquelyReferenced_nonNull_native || v12 > *(v99 + 3) >> 1)
      {
        if (v11 <= v12)
        {
          v15 = v11 + v10;
        }

        else
        {
          v15 = v11;
        }

        v14 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v15, 1, v99);
      }

      v99 = v14;
      if (*(v9 + 16))
      {
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v10)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = *(v99 + 2);
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_66;
          }

          *(v99 + 2) = v18;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_60;
        }
      }

      v6 += 608;
      --v7;
    }

    while (v7);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v21 = 608 * v7 + 472;
    v22 = v7;
    while (v22 < v5)
    {
      v23 = v101 + v21;
      v24 = *(v101 + v21 + 96);
      v25 = *(v101 + v21 + 128);
      v109 = *(v101 + v21 + 112);
      v110 = v25;
      v111 = *(v101 + v21 + 144);
      v26 = *(v101 + v21 + 48);
      v104 = *(v101 + v21 + 32);
      v105 = v26;
      v27 = *(v101 + v21 + 80);
      v106 = *(v101 + v21 + 64);
      v107 = v27;
      v108 = v24;
      v28 = *(v101 + v21 + 16);
      v102 = *(v101 + v21);
      v103 = v28;
      v7 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_62;
      }

      v29 = *(v23 + 112);
      v125[6] = *(v23 + 96);
      v125[7] = v29;
      v125[8] = *(v23 + 128);
      v30 = *(v23 + 48);
      v125[2] = *(v23 + 32);
      v125[3] = v30;
      v31 = *(v23 + 80);
      v125[4] = *(v23 + 64);
      v125[5] = v31;
      v32 = *(v23 + 16);
      v125[0] = *v23;
      *&v125[9] = *(v23 + 144);
      v125[1] = v32;
      if (sub_1AAED0054(v125) != 1)
      {
        v132 = v108;
        v133 = v109;
        v134 = v110;
        v128 = v104;
        v129 = v105;
        v130 = v106;
        v131 = v107;
        v126 = v102;
        v135 = v111;
        v127 = v103;
        sub_1AAD81BF4(&v126, &v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1AAD6931C(0, *(v20 + 2) + 1, 1, v20);
        }

        v34 = *(v20 + 2);
        v33 = *(v20 + 3);
        if (v34 >= v33 >> 1)
        {
          v20 = sub_1AAD6931C((v33 > 1), v34 + 1, 1, v20);
        }

        v119 = v106;
        v120 = v107;
        v117 = v104;
        v118 = v105;
        v124 = v111;
        v123 = v110;
        v122 = v109;
        v121 = v108;
        v115 = v102;
        v116 = v103;
        *(v20 + 2) = v34 + 1;
        v35 = &v20[152 * v34];
        v36 = v116;
        *(v35 + 2) = v115;
        *(v35 + 3) = v36;
        v37 = v117;
        v38 = v118;
        v39 = v120;
        *(v35 + 6) = v119;
        *(v35 + 7) = v39;
        *(v35 + 4) = v37;
        *(v35 + 5) = v38;
        v40 = v121;
        v41 = v122;
        v42 = v123;
        *(v35 + 22) = v124;
        *(v35 + 9) = v41;
        *(v35 + 10) = v42;
        *(v35 + 8) = v40;
        if (v7 != v5)
        {
          goto LABEL_18;
        }

LABEL_29:
        v43 = sub_1AAD81110(v20);

        v44 = *(v43 + 16);

        v45 = 0;
        if (v44 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v44;
        }

        v97 = v46;
        v47 = 472;
        while (1)
        {
          v48 = v101 + v47;
          v49 = *(v101 + v47 + 112);
          v125[6] = *(v101 + v47 + 96);
          v125[7] = v49;
          v125[8] = *(v101 + v47 + 128);
          v50 = *(v101 + v47 + 48);
          v125[2] = *(v101 + v47 + 32);
          v125[3] = v50;
          v51 = *(v101 + v47 + 80);
          v125[4] = *(v101 + v47 + 64);
          v125[5] = v51;
          v52 = *(v101 + v47 + 16);
          v125[0] = *(v101 + v47);
          *&v125[9] = *(v101 + v47 + 144);
          v125[1] = v52;
          if (sub_1AAED0054(v125) != 1)
          {
            break;
          }

          v53 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_65;
          }

          ++v45;
          v47 += 608;
          if (v53 == v5)
          {
            sub_1AAE2D7EC(&v115);
            goto LABEL_40;
          }
        }

        v56 = *(v48 + 80);
        v132 = *(v48 + 96);
        v57 = *(v48 + 96);
        v133 = *(v48 + 112);
        v58 = *(v48 + 112);
        v134 = *(v48 + 128);
        v59 = *(v48 + 16);
        v128 = *(v48 + 32);
        v60 = *(v48 + 32);
        v129 = *(v48 + 48);
        v61 = *(v48 + 48);
        v130 = *(v48 + 64);
        v62 = *(v48 + 64);
        v131 = *(v48 + 80);
        v126 = *v48;
        v63 = *v48;
        v127 = *(v48 + 16);
        v107 = v56;
        v108 = v57;
        v64 = *(v48 + 128);
        v109 = v58;
        v110 = v64;
        v104 = v60;
        v105 = v61;
        v106 = v62;
        v135 = *(v48 + 144);
        v111 = *(v48 + 144);
        v102 = v63;
        v103 = v59;
        if (sub_1AAED0054(&v102) == 1)
        {
          goto LABEL_67;
        }

        v113[6] = v132;
        v113[7] = v133;
        v113[8] = v134;
        v114 = v135;
        v113[2] = v128;
        v113[3] = v129;
        v113[4] = v130;
        v113[5] = v131;
        v113[0] = v126;
        v113[1] = v127;
        sub_1AAD81BF4(v113, v112);
        v122 = v133;
        v123 = v134;
        v124 = v135;
        v117 = v128;
        v118 = v129;
        v119 = v130;
        v120 = v131;
        v121 = v132;
        v115 = v126;
        v116 = v127;
LABEL_40:
        v132 = v121;
        v133 = v122;
        v134 = v123;
        v128 = v117;
        v129 = v118;
        v130 = v119;
        v131 = v120;
        v126 = v115;
        v135 = v124;
        v127 = v116;
        *&v125[0] = v19;
        sub_1AAD41520(0, v5, 0);
        v65 = 152;
        v66 = *&v125[0];
        do
        {
          v67 = *(v101 + v65);
          *&v125[0] = v66;
          v69 = *(v66 + 16);
          v68 = *(v66 + 24);

          if (v69 >= v68 >> 1)
          {
            sub_1AAD41520((v68 > 1), v69 + 1, 1);
            v66 = *&v125[0];
          }

          *(v66 + 16) = v69 + 1;
          *(v66 + 8 * v69 + 32) = v67;
          v65 += 608;
          --v5;
        }

        while (v5);
        v71 = sub_1AAD81080(v66, v70);

        v96 = *(v71 + 16);

        v72 = sub_1AAF7C3F0();
        memcpy(v125, (v101 + 32), sizeof(v125));
        sub_1AAF14AE0(v125, &v102);

        v73 = *(v72 + 16);
        if (!v73)
        {
          v95 = MEMORY[0x1E69E7CC0];
LABEL_58:

          sub_1AAF11448(8251, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v95);
          sub_1AAF20734(&v115, qword_1ED9B2098, &type metadata for AccessibilityDataField);

          sub_1AAF14B3C(v125);
          return;
        }

        v74 = 0;
        v100 = *(v72 + 16);
        v94 = v73 - 1;
        v95 = MEMORY[0x1E69E7CC0];
LABEL_46:
        v75 = 72 * v74 + 32;
        v76 = v74;
        while (v76 < *(v72 + 16))
        {
          v102 = *(v72 + v75);
          v77 = *(v72 + v75 + 16);
          v78 = *(v72 + v75 + 32);
          v79 = *(v72 + v75 + 48);
          *&v106 = *(v72 + v75 + 64);
          v80 = v106;
          v104 = v78;
          v105 = v79;
          v103 = v77;
          v112[0] = *(v72 + v75);
          v112[1] = *(v72 + v75 + 16);
          v112[2] = *(v72 + v75 + 32);
          v112[3] = *(v72 + v75 + 48);
          v74 = v76 + 1;
          sub_1AAF20668(&v102, v113, sub_1AAF207A4);
          sub_1AAF1CCBC(v112, v80, v72, a2, v96, v125, v97, &v126, v101);
          v82 = v81;
          v84 = v83;
          v86 = v85;
          v88 = v87;
          sub_1AAF20890(&v102, sub_1AAF207A4);
          if (v88)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_1AAD69E2C(0, *(v95 + 2) + 1, 1, v95);
            }

            v90 = *(v95 + 2);
            v89 = *(v95 + 3);
            v91 = v90 + 1;
            if (v90 >= v89 >> 1)
            {
              v93 = sub_1AAD69E2C((v89 > 1), v90 + 1, 1, v95);
              v91 = v90 + 1;
              v95 = v93;
            }

            *(v95 + 2) = v91;
            v92 = &v95[32 * v90];
            *(v92 + 4) = v82;
            *(v92 + 5) = v84;
            v92[48] = v86 & 1;
            *(v92 + 7) = v88;
            if (v94 != v76)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }

          v75 += 72;
          ++v76;
          if (v100 == v74)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_64;
      }

      ++v22;
      v21 += 608;
      if (v7 == v5)
      {
        goto LABEL_29;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
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
  }

  else
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    *&v125[0] = 0;
    sub_1AAF8E1B4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass_];
    sub_1AAF8EA44();
  }
}

void sub_1AAF1B49C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = a1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v99 = MEMORY[0x1E69E7CC0];
    v6 = 224;
    v7 = *(a1 + 16);
    do
    {
      *&v125[0] = MEMORY[0x1E69E7CD0];

      v9 = sub_1AAF202A4(v8);

      v10 = *(v9 + 16);
      v11 = *(v99 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v99;
      if (!isUniquelyReferenced_nonNull_native || v12 > *(v99 + 3) >> 1)
      {
        if (v11 <= v12)
        {
          v15 = v11 + v10;
        }

        else
        {
          v15 = v11;
        }

        v14 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v15, 1, v99);
      }

      v99 = v14;
      if (*(v9 + 16))
      {
        if ((*(v14 + 3) >> 1) - *(v14 + 2) < v10)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v16 = *(v99 + 2);
          v17 = __OFADD__(v16, v10);
          v18 = v16 + v10;
          if (v17)
          {
            goto LABEL_66;
          }

          *(v99 + 2) = v18;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_60;
        }
      }

      v6 += 600;
      --v7;
    }

    while (v7);
    v19 = MEMORY[0x1E69E7CC0];
    v20 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v21 = 600 * v7 + 384;
    v22 = v7;
    while (v22 < v5)
    {
      v23 = v101 + v21;
      v24 = *(v101 + v21 + 96);
      v25 = *(v101 + v21 + 128);
      v109 = *(v101 + v21 + 112);
      v110 = v25;
      v111 = *(v101 + v21 + 144);
      v26 = *(v101 + v21 + 48);
      v104 = *(v101 + v21 + 32);
      v105 = v26;
      v27 = *(v101 + v21 + 80);
      v106 = *(v101 + v21 + 64);
      v107 = v27;
      v108 = v24;
      v28 = *(v101 + v21 + 16);
      v102 = *(v101 + v21);
      v103 = v28;
      v7 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_62;
      }

      v29 = *(v23 + 112);
      v125[6] = *(v23 + 96);
      v125[7] = v29;
      v125[8] = *(v23 + 128);
      v30 = *(v23 + 48);
      v125[2] = *(v23 + 32);
      v125[3] = v30;
      v31 = *(v23 + 80);
      v125[4] = *(v23 + 64);
      v125[5] = v31;
      v32 = *(v23 + 16);
      v125[0] = *v23;
      *&v125[9] = *(v23 + 144);
      v125[1] = v32;
      if (sub_1AAED0054(v125) != 1)
      {
        v132 = v108;
        v133 = v109;
        v134 = v110;
        v128 = v104;
        v129 = v105;
        v130 = v106;
        v131 = v107;
        v126 = v102;
        v135 = v111;
        v127 = v103;
        sub_1AAD81BF4(&v126, &v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1AAD6931C(0, *(v20 + 2) + 1, 1, v20);
        }

        v34 = *(v20 + 2);
        v33 = *(v20 + 3);
        if (v34 >= v33 >> 1)
        {
          v20 = sub_1AAD6931C((v33 > 1), v34 + 1, 1, v20);
        }

        v119 = v106;
        v120 = v107;
        v117 = v104;
        v118 = v105;
        v124 = v111;
        v123 = v110;
        v122 = v109;
        v121 = v108;
        v115 = v102;
        v116 = v103;
        *(v20 + 2) = v34 + 1;
        v35 = &v20[152 * v34];
        v36 = v116;
        *(v35 + 2) = v115;
        *(v35 + 3) = v36;
        v37 = v117;
        v38 = v118;
        v39 = v120;
        *(v35 + 6) = v119;
        *(v35 + 7) = v39;
        *(v35 + 4) = v37;
        *(v35 + 5) = v38;
        v40 = v121;
        v41 = v122;
        v42 = v123;
        *(v35 + 22) = v124;
        *(v35 + 9) = v41;
        *(v35 + 10) = v42;
        *(v35 + 8) = v40;
        if (v7 != v5)
        {
          goto LABEL_18;
        }

LABEL_29:
        v43 = sub_1AAD81110(v20);

        v44 = *(v43 + 16);

        v45 = 0;
        if (v44 <= 1)
        {
          v46 = 1;
        }

        else
        {
          v46 = v44;
        }

        v97 = v46;
        v47 = 384;
        while (1)
        {
          v48 = v101 + v47;
          v49 = *(v101 + v47 + 112);
          v125[6] = *(v101 + v47 + 96);
          v125[7] = v49;
          v125[8] = *(v101 + v47 + 128);
          v50 = *(v101 + v47 + 48);
          v125[2] = *(v101 + v47 + 32);
          v125[3] = v50;
          v51 = *(v101 + v47 + 80);
          v125[4] = *(v101 + v47 + 64);
          v125[5] = v51;
          v52 = *(v101 + v47 + 16);
          v125[0] = *(v101 + v47);
          *&v125[9] = *(v101 + v47 + 144);
          v125[1] = v52;
          if (sub_1AAED0054(v125) != 1)
          {
            break;
          }

          v53 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_65;
          }

          ++v45;
          v47 += 600;
          if (v53 == v5)
          {
            sub_1AAE2D7EC(&v115);
            goto LABEL_40;
          }
        }

        v56 = *(v48 + 80);
        v132 = *(v48 + 96);
        v57 = *(v48 + 96);
        v133 = *(v48 + 112);
        v58 = *(v48 + 112);
        v134 = *(v48 + 128);
        v59 = *(v48 + 16);
        v128 = *(v48 + 32);
        v60 = *(v48 + 32);
        v129 = *(v48 + 48);
        v61 = *(v48 + 48);
        v130 = *(v48 + 64);
        v62 = *(v48 + 64);
        v131 = *(v48 + 80);
        v126 = *v48;
        v63 = *v48;
        v127 = *(v48 + 16);
        v107 = v56;
        v108 = v57;
        v64 = *(v48 + 128);
        v109 = v58;
        v110 = v64;
        v104 = v60;
        v105 = v61;
        v106 = v62;
        v135 = *(v48 + 144);
        v111 = *(v48 + 144);
        v102 = v63;
        v103 = v59;
        if (sub_1AAED0054(&v102) == 1)
        {
          goto LABEL_67;
        }

        v113[6] = v132;
        v113[7] = v133;
        v113[8] = v134;
        v114 = v135;
        v113[2] = v128;
        v113[3] = v129;
        v113[4] = v130;
        v113[5] = v131;
        v113[0] = v126;
        v113[1] = v127;
        sub_1AAD81BF4(v113, v112);
        v122 = v133;
        v123 = v134;
        v124 = v135;
        v117 = v128;
        v118 = v129;
        v119 = v130;
        v120 = v131;
        v121 = v132;
        v115 = v126;
        v116 = v127;
LABEL_40:
        v132 = v121;
        v133 = v122;
        v134 = v123;
        v128 = v117;
        v129 = v118;
        v130 = v119;
        v131 = v120;
        v126 = v115;
        v135 = v124;
        v127 = v116;
        *&v125[0] = v19;
        sub_1AAD41520(0, v5, 0);
        v65 = *&v125[0];
        v66 = 64;
        do
        {
          v67 = *(v101 + v66);
          *&v125[0] = v65;
          v69 = *(v65 + 16);
          v68 = *(v65 + 24);

          if (v69 >= v68 >> 1)
          {
            sub_1AAD41520((v68 > 1), v69 + 1, 1);
            v65 = *&v125[0];
          }

          *(v65 + 16) = v69 + 1;
          *(v65 + 8 * v69 + 32) = v67;
          v66 += 600;
          --v5;
        }

        while (v5);
        v71 = sub_1AAD81080(v65, v70);

        v96 = *(v71 + 16);

        v72 = sub_1AAF7C3F0();
        memcpy(v125, (v101 + 32), 0x251uLL);
        sub_1AAECFFF8(v125, &v102);

        v73 = *(v72 + 16);
        if (!v73)
        {
          v95 = MEMORY[0x1E69E7CC0];
LABEL_58:

          sub_1AAF11448(8251, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v95);
          sub_1AAF20734(&v115, qword_1ED9B2098, &type metadata for AccessibilityDataField);

          sub_1AAF209D4(v125);
          return;
        }

        v74 = 0;
        v100 = *(v72 + 16);
        v94 = v73 - 1;
        v95 = MEMORY[0x1E69E7CC0];
LABEL_46:
        v75 = 72 * v74 + 32;
        v76 = v74;
        while (v76 < *(v72 + 16))
        {
          v102 = *(v72 + v75);
          v77 = *(v72 + v75 + 16);
          v78 = *(v72 + v75 + 32);
          v79 = *(v72 + v75 + 48);
          *&v106 = *(v72 + v75 + 64);
          v80 = v106;
          v104 = v78;
          v105 = v79;
          v103 = v77;
          v112[0] = *(v72 + v75);
          v112[1] = *(v72 + v75 + 16);
          v112[2] = *(v72 + v75 + 32);
          v112[3] = *(v72 + v75 + 48);
          v74 = v76 + 1;
          sub_1AAF20668(&v102, v113, sub_1AAF207A4);
          sub_1AAF1E194(v112, v80, v72, a2, v96, v125, v97, &v126, v101);
          v82 = v81;
          v84 = v83;
          v86 = v85;
          v88 = v87;
          sub_1AAF20890(&v102, sub_1AAF207A4);
          if (v88)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_1AAD69E2C(0, *(v95 + 2) + 1, 1, v95);
            }

            v90 = *(v95 + 2);
            v89 = *(v95 + 3);
            v91 = v90 + 1;
            if (v90 >= v89 >> 1)
            {
              v93 = sub_1AAD69E2C((v89 > 1), v90 + 1, 1, v95);
              v91 = v90 + 1;
              v95 = v93;
            }

            *(v95 + 2) = v91;
            v92 = &v95[32 * v90];
            *(v92 + 4) = v82;
            *(v92 + 5) = v84;
            v92[48] = v86 & 1;
            *(v92 + 7) = v88;
            if (v94 != v76)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }

          v75 += 72;
          ++v76;
          if (v100 == v74)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_64;
      }

      ++v22;
      v21 += 600;
      if (v7 == v5)
      {
        goto LABEL_29;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
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
  }

  else
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    *&v125[0] = 0;
    sub_1AAF8E1B4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass_];
    sub_1AAF8EA44();
  }
}

void sub_1AAF1BE68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v11 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 >> 60;
  if ((a1 >> 60) > 1)
  {
    if (v14 != 2)
    {
      if (v14 != 11)
      {
        if (v14 == 12)
        {
          memcpy(v51, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x260uLL);
          swift_beginAccess();
          v15 = *(a2 + 16);
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          sub_1AAF14AE0(v51, v50);
          sub_1AAF1C3A4(v51, v15, a4, (a3 + 16), (a6 + 16));
          swift_endAccess();
          swift_endAccess();
          swift_endAccess();
          sub_1AAF14B3C(v51);
        }

        return;
      }

      memcpy(v50, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x120uLL);
      swift_beginAccess();
      v26 = *(a2 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_40;
      }

      *(a2 + 16) = v28;
      v29 = v50[34];
      v30 = *(v50[34] + 16);
      sub_1AAF14B90(v50, v51);

      if (!v30)
      {
LABEL_25:

        swift_beginAccess();
        if (*(a2 + 16) == 1)
        {
          memcpy(v49, v50, sizeof(v49));
          nullsub_1();
          swift_beginAccess();
          v34 = *(a3 + 16);
          memcpy(v51, v49, 0x120uLL);
          v51[36] = v34;
          LOBYTE(v51[37]) = 0;
          v51[38] = a4;
          sub_1AAF14B90(v50, &v48);

          sub_1AAF153B8(v35);
          v37 = v36;
          swift_beginAccess();
          sub_1AADC939C(v37);
          swift_endAccess();
          sub_1AAF14BEC(v50);
          swift_beginAccess();
          *(a3 + 16) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1AAF14BEC(v50);
        }

        swift_beginAccess();
        v44 = *(a2 + 16);
        v27 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (!v27)
        {
          *(a2 + 16) = v45;
          return;
        }

LABEL_41:
        __break(1u);
        return;
      }

      v31 = 0;
      while (v31 < *(v29 + 16))
      {
        v32 = v31 + 1;
        v33 = *(v29 + 32 + 8 * v31);

        sub_1AAF1BE68(v33, a2, a3, a4, v47, a6);

        v31 = v32;
        if (v30 == v32)
        {
          goto LABEL_25;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v51);
    v21 = v51[1];
    v22 = *(v51[1] + 16);
    if (!v22)
    {
LABEL_19:
      sub_1AAF14C40(v51);
      return;
    }

    v23 = 0;
    while (v23 < *(v21 + 16))
    {
      v24 = v23 + 1;
      v25 = *(v21 + 32 + 8 * v23);

      sub_1AAF1BE68(v25, a2, a3, a4, v47, a6);

      v23 = v24;
      if (v22 == v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  if (!v14)
  {
    v38 = swift_projectBox();
    sub_1AAF20668(v38, v13, type metadata accessor for SgGroup);
    v46 = v13;
    v39 = *(v13 + 1);
    v40 = *(v39 + 16);
    if (!v40)
    {
LABEL_31:
      sub_1AAF20890(v46, type metadata accessor for SgGroup);
      return;
    }

    v41 = 0;
    while (v41 < *(v39 + 16))
    {
      v42 = v41 + 1;
      v43 = *(v39 + 32 + 8 * v41);

      sub_1AAF1BE68(v43, a2, a3, a4, v47, a6);

      v41 = v42;
      if (v40 == v42)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v14 != 1)
  {
    return;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      v19 = v18 + 1;
      v20 = *(v16 + 32 + 8 * v18);

      sub_1AAF1BE68(v20, a2, a3, a4, v47, a6);

      v18 = v19;
      if (v17 == v19)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_38;
  }

LABEL_12:
}

void sub_1AAF1C3A4(void *a1, uint64_t a2, uint64_t a3, char **a4, char **a5)
{
  if (a2 < 1)
  {
    v13 = *(a1 + 25);
    v14 = *(a1 + 23);
    v95 = *(a1 + 24);
    v96 = v13;
    v15 = *(a1 + 25);
    v97 = *(a1 + 26);
    v16 = *(a1 + 21);
    v17 = *(a1 + 19);
    v91 = *(a1 + 20);
    v92 = v16;
    v18 = *(a1 + 21);
    v19 = *(a1 + 23);
    v93 = *(a1 + 22);
    v94 = v19;
    v20 = *(a1 + 19);
    v89 = *(a1 + 18);
    v90 = v20;
    v105 = v95;
    v106 = v15;
    v107 = *(a1 + 26);
    v101 = v91;
    v102 = v18;
    v103 = v93;
    v104 = v14;
    v98 = a1[54];
    v108 = a1[54];
    v99 = v89;
    v100 = v17;
    if (sub_1AAED0054(&v99) == 1)
    {
      sub_1AAF208F0(__src);
      sub_1AAF20A28(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AAF92AB0;
      memcpy((v21 + 32), a1, 0x260uLL);
      memcpy(__dst, __src, 0x120uLL);
      __dst[36] = v21;
      LOBYTE(v114) = 0;
      v115 = a3;
      sub_1AAF14AE0(a1, v109);

      sub_1AAF153B8(v22);
      sub_1AADC939C(v23);
      return;
    }

    v111[6] = v105;
    v111[7] = v106;
    v111[8] = v107;
    v112 = v108;
    v111[2] = v101;
    v111[3] = v102;
    v111[4] = v103;
    v111[5] = v104;
    v111[0] = v99;
    v111[1] = v100;
    v24 = *a5;
    if (*(*a5 + 2))
    {
      v87[6] = v95;
      v87[7] = v96;
      v87[8] = v97;
      v88 = v98;
      v87[2] = v91;
      v87[3] = v92;
      v87[4] = v93;
      v87[5] = v94;
      v87[0] = v89;
      v87[1] = v90;
      sub_1AAD81BF4(v87, v109);
      sub_1AADB0D50(v111);
      if (v25)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = *a5;
        v27 = v68;
        v29 = sub_1AADB0D50(v111);
        v30 = *(v68 + 2);
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          __break(1u);
LABEL_36:
          v27 = sub_1AAD6A24C(0, *(v27 + 2) + 1, 1, v27);
LABEL_23:
          v49 = *(v27 + 2);
          v48 = *(v27 + 3);
          if (v49 >= v48 >> 1)
          {
            v27 = sub_1AAD6A24C((v48 > 1), v49 + 1, 1, v27);
          }

          *(v27 + 2) = v49 + 1;
          memcpy(&v27[608 * v49 + 32], a1, 0x260uLL);
          memcpy(v65, v67, 0x128uLL);
          *(&v65[18] + 1) = v27;
          memcpy(__src, v65, sizeof(__src));
          if (sub_1AAF2094C(__src) == 1)
          {
            if (v5)
            {
              v50 = v68;
              v51 = *(v68 + 6) + 152 * v29;
              sub_1AAF14AE0(a1, v109);
              sub_1AAD81C50(v51);
              sub_1AAD9340C(v29, v50, v52);
            }

            else
            {
              sub_1AAF14AE0(a1, v109);
            }
          }

          else
          {
            if ((v5 & 1) == 0)
            {
              v62[0] = v65[0];
              v62[1] = v65[1];
              v62[2] = v65[2];
              v62[3] = v65[3];
              v62[4] = v65[4];
              v62[5] = v65[5];
              v62[6] = v65[6];
              v62[7] = v65[7];
              v62[8] = v65[8];
              v62[9] = v65[9];
              v62[10] = v65[10];
              v62[11] = v65[11];
              v62[12] = v65[12];
              v62[13] = v65[13];
              v62[14] = v65[14];
              v62[15] = v65[15];
              v62[16] = v65[16];
              v62[17] = v65[17];
              v63 = *&v65[18];
              v64 = v27;
              sub_1AADD4584(v29, v111, v62, v68);
              sub_1AAF14AE0(a1, v109);
              sub_1AAF20668(v65, v109, sub_1AAF20964);
              goto LABEL_33;
            }

            memmove((*(v68 + 7) + 304 * v29), v65, 0x130uLL);
            sub_1AAF14AE0(a1, v109);
            sub_1AAF20668(v65, v109, sub_1AAF20964);
          }

          sub_1AAF20734(&v89, qword_1ED9B2098, &type metadata for AccessibilityDataField);
LABEL_33:
          memcpy(v109, v67, sizeof(v109));
          v110 = v27;
          sub_1AAF20890(v109, sub_1AAF20964);
          v47 = v68;
          goto LABEL_34;
        }

        v5 = v28;
        if (*(v68 + 3) < v32)
        {
          sub_1AAD8E1B4(v32, isUniquelyReferenced_nonNull_native);
          v33 = sub_1AADB0D50(v111);
          if ((v5 & 1) != (v34 & 1))
          {
            goto LABEL_40;
          }

          v29 = v33;
          if ((v5 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_20:
          memmove(v109, (*(v68 + 7) + 304 * v29), 0x130uLL);
          nullsub_1();
          goto LABEL_21;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v28)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1AAD97E1C();
          if (v5)
          {
            goto LABEL_20;
          }
        }

LABEL_15:
        sub_1AAF2091C(v109);
LABEL_21:
        memcpy(v67, v109, sizeof(v67));
        v27 = v110;
        memcpy(__dst, v67, sizeof(__dst));
        v114 = v110;
        if (sub_1AAF2094C(__dst) != 1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_23;
          }

          goto LABEL_36;
        }

        __break(1u);
LABEL_40:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      *&v109[96] = v95;
      *&v109[112] = v96;
      *&v109[128] = v97;
      *&v109[144] = v98;
      *&v109[32] = v91;
      *&v109[48] = v92;
      *&v109[64] = v93;
      *&v109[80] = v94;
      *v109 = v89;
      *&v109[16] = v90;
      sub_1AAD81BF4(v109, __dst);
    }

    v35 = *a1;
    v36 = a1[1];
    v37 = a1[2];
    v38 = a1[3];
    v39 = a1[4];
    v41 = a1[5];
    v40 = a1[6];
    __src[6] = v105;
    __src[7] = v106;
    __src[8] = v107;
    *&__src[9] = v108;
    __src[2] = v101;
    __src[3] = v102;
    __src[4] = v103;
    __src[5] = v104;
    __src[0] = v99;
    __src[1] = v100;
    nullsub_1();
    __dst[0] = v35;
    __dst[1] = v36;
    __dst[2] = v37;
    __dst[3] = v38;
    __dst[4] = v39;
    __dst[5] = v41;
    __dst[6] = v40;
    *&__dst[27] = __src[6];
    *&__dst[29] = __src[7];
    *&__dst[31] = __src[8];
    *&__dst[19] = __src[2];
    *&__dst[21] = __src[3];
    *&__dst[23] = __src[4];
    *&__dst[25] = __src[5];
    *&__dst[15] = __src[0];
    memset(&__dst[7], 0, 64);
    *&__dst[17] = __src[1];
    v42 = MEMORY[0x1E69E7CC0];
    __dst[33] = *&__src[9];
    __dst[34] = MEMORY[0x1E69E7CC0];
    __dst[35] = 0;
    v43 = *(v24 + 2);
    sub_1AAF20A28(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1AAF92AB0;
    memcpy((v44 + 32), a1, 0x260uLL);
    v45 = __dst[33];
    v60 = *&__dst[15];
    v61 = *&__dst[31];
    v55 = *&__dst[21];
    v56 = *&__dst[17];
    v58 = *&__dst[23];
    v59 = *&__dst[19];
    v57 = *&__dst[27];
    v53 = *&__dst[29];
    v54 = *&__dst[25];
    sub_1AAF14AE0(a1, v109);
    sub_1AAF20224(&v89, v109, qword_1ED9B2098, &type metadata for AccessibilityDataField);

    sub_1AAF14B90(__dst, v109);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v109 = *a5;
    v69[0] = v43;
    v69[1] = v35;
    v69[2] = v36;
    v69[3] = v37;
    v69[4] = v38;
    v69[5] = v39;
    v69[6] = v41;
    v69[7] = v40;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v75 = v56;
    v74 = v60;
    v77 = v55;
    v76 = v59;
    v79 = v54;
    v78 = v58;
    v81 = v53;
    v80 = v57;
    v82 = v61;
    v83 = v45;
    v84 = v42;
    v85 = 0;
    v86 = v44;
    sub_1AADD37D8(v69, v111, v46);
    sub_1AAF20734(&v89, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    sub_1AAF14BEC(__dst);
    v47 = *v109;
LABEL_34:
    *a5 = v47;
    return;
  }

  v8 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AAD6A24C(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AAD6A24C((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  memcpy(&v8[608 * v10 + 32], a1, 0x260uLL);
  *a4 = v8;
  sub_1AAF14AE0(a1, v109);
}

void sub_1AAF1CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v252 = a8;
  v262 = a7;
  v259 = a5;
  v260 = a6;
  v256 = sub_1AAF8E134();
  v254 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v253 = v248 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E204();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v251 = v248 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v264 = 0;
  v265 = 0;
  v17 = 0;
  if (*(a3 + 16) >= 2uLL)
  {
    v16 = sub_1AAF70A10(v14);
    v264 = v18;
    v265 = v19;
    v17 = v20 & 1;
  }

  v257 = a4;
  v266 = v17;
  v261 = v16;
  v21 = *(a2 + 16);
  if (!v21)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v22 = 0;
  v258 = a9;
  v23 = a2 + 32;
  v267 = MEMORY[0x1E69E7CC0];
  v268 = v21;
  v263 = a2 + 32;
  while (2)
  {
    v24 = v23 + 152 * v22;
    v25 = v22;
    while (1)
    {
      if (v25 >= v21)
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v26 = *(v24 + 112);
      v317 = *(v24 + 96);
      v318 = v26;
      v319 = *(v24 + 128);
      v320 = *(v24 + 144);
      v27 = *(v24 + 48);
      v313 = *(v24 + 32);
      v314 = v27;
      v28 = *(v24 + 80);
      v315 = *(v24 + 64);
      v316 = v28;
      v29 = *(v24 + 16);
      v311 = *v24;
      v312 = v29;
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_98;
      }

      v30 = *(v24 + 112);
      v327 = *(v24 + 96);
      v328 = v30;
      v329 = *(v24 + 128);
      v330 = *(v24 + 144);
      v31 = *(v24 + 48);
      v323 = *(v24 + 32);
      v324 = v31;
      v32 = *(v24 + 80);
      v325 = *(v24 + 64);
      v326 = v32;
      v33 = *(v24 + 16);
      v321 = *v24;
      v322 = v33;
      v34 = sub_1AAF14CF0(&v321);
      if (v34 > 1)
      {
        break;
      }

      if (v34)
      {
        sub_1AACBC764(&v321);
        v297 = v317;
        v298 = v318;
        v299 = v319;
        v300 = v320;
        v293 = v313;
        v294 = v314;
        v295 = v315;
        v296 = v316;
        v291 = v311;
        v292 = v312;
        v35 = sub_1AACBC764(&v291);
        v36 = *(v35 + 16);
        v269 = *(v35 + 24);
        v270 = v36;
        v37 = *(v35 + 32);
        v38 = *(v35 + 48);
        v39 = *(v35 + 56);
        v40 = *(v35 + 64);
        v41 = *(v35 + 72);
        v303 = v313;
        v304 = v314;
        v307 = v317;
        v308 = v318;
        v309 = v319;
        v310 = v320;
        v305 = v315;
        v306 = v316;
        v301 = v311;
        v302 = v312;
        v42 = sub_1AACBC764(&v301);
        sub_1AAF20668(v42, &v281, sub_1AAF14CFC);
        goto LABEL_18;
      }

LABEL_13:
      v43 = sub_1AACBC764(&v321);
      if (*(v43 + 56) < 0)
      {
        goto LABEL_103;
      }

      if (*(v43 + 56))
      {
        goto LABEL_102;
      }

      v38 = *(v43 + 40);
      if ((~v38 & 0x7FF0000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_6:
      ++v25;
      v24 += 152;
      if (v22 == v21)
      {
        v23 = v263;
        goto LABEL_28;
      }
    }

    if (v34 == 2)
    {
      goto LABEL_13;
    }

    sub_1AACBC764(&v321);
    v307 = v317;
    v308 = v318;
    v309 = v319;
    v310 = v320;
    v303 = v313;
    v304 = v314;
    v305 = v315;
    v306 = v316;
    v301 = v311;
    v302 = v312;
    v44 = sub_1AACBC764(&v301);
    v45 = *(v44 + 16);
    v37 = *(v44 + 32);
    v38 = *(v44 + 48);
    v39 = *(v44 + 56);
    v40 = *(v44 + 64);
    v41 = *(v44 + 72);
    v269 = *(v44 + 24);
    v270 = v45;
    sub_1AACD7304(v45, v269, v37);

    sub_1AADB308C(v38, v39, v40, v41);
LABEL_18:
    if ((v41 & 0x80) != 0)
    {
      goto LABEL_101;
    }

    sub_1AAD04750(v270, v269, v37);

    sub_1AADB3124(v38, v39, v40, v41);
    if (v41)
    {
      goto LABEL_99;
    }

    v21 = v268;
    if ((~v38 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_1AAD67B50(0, *(v267 + 2) + 1, 1, v267);
    }

    v23 = v263;
    v47 = *(v267 + 2);
    v46 = *(v267 + 3);
    if (v47 >= v46 >> 1)
    {
      v267 = sub_1AAD67B50((v46 > 1), v47 + 1, 1, v267);
    }

    v48 = v267;
    *(v267 + 2) = v47 + 1;
    *&v48[v47 + 4] = v38;
    if (v22 != v21)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v49 = *(v23 + 112);
  v279[6] = *(v23 + 96);
  v279[7] = v49;
  v279[8] = *(v23 + 128);
  v280 = *(v23 + 144);
  v50 = *(v23 + 48);
  v279[2] = *(v23 + 32);
  v279[3] = v50;
  v51 = *(v23 + 80);
  v279[4] = *(v23 + 64);
  v279[5] = v51;
  v52 = *(v23 + 16);
  v279[0] = *v23;
  v279[1] = v52;
  sub_1AAF14CF0(v279);
  v53 = sub_1AACBC764(v279);
  v54 = v257;
  if (*(v257 + 16) && (v55 = sub_1AACE1760(*v53), (v56 & 1) != 0) && (sub_1AACE0A98(*(v54 + 56) + 48 * v55, &v321), v57 = BYTE8(v323), BYTE8(v323) != 255))
  {
    v275 = v321;
    v276 = v322;
    v277 = v323;
  }

  else
  {
    v277 = 0;
    v275 = 0u;
    v276 = 0u;
    v57 = 3;
  }

  v58 = v266;
  v278 = v57;
  v59 = *(v260 + 120);
  v60 = v258;
  if (v259 <= 1)
  {
    v81 = sub_1AAF739C0(v59, v54);
    v269 = v83;
    v270 = v81;
    v257 = v84;
    v85 = v261;
  }

  else
  {
    if (*(v59 + 16) == 1)
    {
      v61 = *(v59 + 144);
      v307 = *(v59 + 128);
      v308 = v61;
      v309 = *(v59 + 160);
      v310 = *(v59 + 176);
      v62 = *(v59 + 80);
      v303 = *(v59 + 64);
      v304 = v62;
      v63 = *(v59 + 112);
      v305 = *(v59 + 96);
      v306 = v63;
      v64 = *(v59 + 48);
      v301 = *(v59 + 32);
      v302 = v64;
      sub_1AAD81BF4(&v301, &v321);
      v66 = sub_1AAF70BEC(v65);
      v68 = v67;
      v70 = v69;
      sub_1AAD81C50(&v301);
      v71 = v253;
      sub_1AAF8E124();
      v72 = sub_1AAF8E974();
      v74 = v73;
      sub_1AAD04750(v66, v68, v70 & 1);

      v75 = (*(v254 + 8))(v71, v256);
      v76 = sub_1AAF88134(v72, v74, v259, v75);
      v269 = v77;
      v270 = v76;
      v79 = v78;
      v257 = v80;
      v58 = v266;
    }

    else
    {
      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      *&v321 = v259;
      sub_1AAF8E1B4();
      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v87 = [objc_opt_self() bundleForClass_];
      v88 = sub_1AAF8EA44();
      v269 = v89;
      v270 = v88;
      v79 = v90;
      v257 = v91;
    }

    v85 = v261;
    v82 = v79 & 1;
    v60 = v258;
  }

  v255 = v82;
  if (v262 < 2)
  {
    v106 = 0;
    v108 = 0;
    v111 = 0;
    v268 = 0;
  }

  else
  {
    v92 = *(v252 + 112);
    v287 = *(v252 + 96);
    v288 = v92;
    v289 = *(v252 + 128);
    v290 = *(v252 + 144);
    v93 = *(v252 + 48);
    v283 = *(v252 + 32);
    v284 = v93;
    v94 = *(v252 + 80);
    v285 = *(v252 + 64);
    v286 = v94;
    v95 = *(v252 + 16);
    v281 = *v252;
    v282 = v95;
    if (sub_1AAED0054(&v281) == 1)
    {
      goto LABEL_106;
    }

    v297 = v287;
    v298 = v288;
    v299 = v289;
    v300 = v290;
    v293 = v283;
    v294 = v284;
    v295 = v285;
    v296 = v286;
    v291 = v281;
    v292 = v282;
    v96 = sub_1AAF70BEC(*&v281);
    v98 = v97;
    v100 = v99;
    v101 = v253;
    sub_1AAF8E124();
    v102 = sub_1AAF8E974();
    v104 = v103;
    sub_1AAD04750(v96, v98, v100 & 1);

    v105 = (*(v254 + 8))(v101, v256);
    v106 = sub_1AAF88134(v102, v104, v262, v105);
    v108 = v107;
    LOBYTE(v96) = v109;
    v268 = v110;

    v111 = v96 & 1;
    v58 = v266;
    v60 = v258;
  }

  v112 = *(v260 + 400);
  v317 = *(v260 + 384);
  v318 = v112;
  v319 = *(v260 + 416);
  v320 = *(v260 + 432);
  v113 = *(v260 + 336);
  v313 = *(v260 + 320);
  v314 = v113;
  v114 = *(v260 + 368);
  v315 = *(v260 + 352);
  v316 = v114;
  v115 = *(v260 + 304);
  v311 = *(v260 + 288);
  v312 = v115;
  if (sub_1AAED0054(&v311) != 1)
  {
    v327 = v317;
    v328 = v318;
    v329 = v319;
    v330 = v320;
    v323 = v313;
    v324 = v314;
    v325 = v315;
    v326 = v316;
    v321 = v311;
    v322 = v312;
    v116 = sub_1AAF14CF0(&v321);
    sub_1AACBC764(&v321);
    v256 = v106;
    v254 = v108;
    v258 = v111;
    if (v116 <= 1)
    {
      v118 = *(v263 + 112);
      v273[6] = *(v263 + 96);
      v273[7] = v118;
      v273[8] = *(v263 + 128);
      v274 = *(v263 + 144);
      v119 = *(v263 + 48);
      v273[2] = *(v263 + 32);
      v273[3] = v119;
      v120 = *(v263 + 80);
      v273[4] = *(v263 + 64);
      v273[5] = v120;
      v121 = *(v263 + 16);
      v273[0] = *v263;
      v273[1] = v121;
      v122 = sub_1AAF14CF0(v273);
      v123 = sub_1AACBC764(v273);
      if ((v122 - 2) >= 2 && (v122 ? (v124 = 73) : (v124 = 80), *(v123 + v124) == 3))
      {
        v146 = 0;
        v147 = *(v267 + 2);
      }

      else
      {
        v146 = 1;
        v147 = v262;
      }

      v148 = *(v267 + 2);
      if (v148)
      {
        if (v148 <= 3)
        {
          v149 = 0;
          v150 = 0.0;
          goto LABEL_64;
        }

        v149 = v148 & 0x7FFFFFFFFFFFFFFCLL;
        v151 = v267 + 6;
        v150 = 0.0;
        v152 = v148 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v150 = v150 + *(v151 - 2) + *(v151 - 1) + *v151 + v151[1];
          v151 += 4;
          v152 -= 4;
        }

        while (v152);
        if (v148 != v149)
        {
LABEL_64:
          v153 = v148 - v149;
          v154 = &v267[v149 + 4];
          do
          {
            v155 = *v154++;
            v150 = v150 + v155;
            --v153;
          }

          while (v153);
        }
      }

      else
      {
        v150 = 0.0;
      }

      v271 = sub_1AAF75A98(COERCE__INT64(v150 / v147), 0, 0);
      v272 = v156;
      sub_1AADA6144();
      v263 = sub_1AAF8EA64();
      v260 = v157;
      LODWORD(v259) = v158;
      v267 = v159;
      if (v262 == 1)
      {
        v160 = v146;
      }

      else
      {
        v160 = 0;
      }

      LODWORD(v250) = v160;
      v161 = v265;
      if (v265)
      {
        v162 = v85;
        v163 = v264;
        v164 = v264;
        v165 = v266;
        v166 = v266;
        v167 = v265;
      }

      else
      {
        sub_1AAF8E214();
        v162 = sub_1AAF8EA44();
        v164 = v168;
        v166 = v169;
        v167 = v170;
        v163 = v264;
        v161 = v265;
        v165 = v266;
      }

      sub_1AADA61DC(v85, v163, v165, v161);
      sub_1AAF8E214();
      v171 = sub_1AAF8EA44();
      v173 = v172;
      v175 = v174;
      v176 = v167;
      v177 = sub_1AAF8EA14();
      sub_1AAD04750(v171, v173, v175 & 1);

      v262 = v176;
      v252 = v164;
      v253 = v162;
      LODWORD(v251) = v166;
      if (v177)
      {
        sub_1AAF714F8(v263, v260, v259 & 1, v267, v250, v178);
      }

      else
      {
        sub_1AAF715F8(v263, v260, v259 & 1, v267, v162, v164, v166 & 1, v176, v178, v250);
      }

      v179 = v257;
      sub_1AAD45E78(0);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_1AAF99670;
      type metadata accessor for FindClass();
      v181 = swift_getObjCClassFromMetadata();
      v182 = [objc_opt_self() bundleForClass_];
      *(v180 + 32) = sub_1AAF8EA44();
      *(v180 + 40) = v184;
      *(v180 + 48) = v183 & 1;
      v186 = v269;
      v185 = v270;
      *(v180 + 56) = v187;
      *(v180 + 64) = v185;
      v189 = v255;
      v188 = v256;
      *(v180 + 72) = v186;
      *(v180 + 80) = v189;
      *(v180 + 88) = v179;
      *(v180 + 96) = v188;
      v190 = v254;
      v191 = v258;
      *(v180 + 104) = v254;
      *(v180 + 112) = v191;
      v192 = v268;
      *(v180 + 120) = v268;
      v193 = *(v180 + 16);
      v269 = v186;
      v270 = v185;
      v268 = v192;
      v257 = v179;
      if (v193)
      {
        v194 = 0;
        v195 = (v180 + 56);
        while (1)
        {
          v196 = *v195;
          if (*v195)
          {
            break;
          }

          ++v194;
          v195 += 4;
          if (v193 == v194)
          {
            goto LABEL_79;
          }
        }

        v198 = *(v195 - 1);
        v249 = *(v195 - 2);
        v250 = v198;
        v199 = v179;
        v200 = *(v195 - 3);
        sub_1AADA61DC(v185, v186, v189, v199);
        v201 = v192;
        v197 = v190;
        sub_1AADA61DC(v188, v190, v258, v201);

        v202 = v249;
        v203 = v250;
        sub_1AADA61DC(v200, v249, v250, v196);
        sub_1AAD04750(v200, v202, v203 & 1);

        sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v180, v194);

        sub_1AAD04750(v253, v252, v251 & 1);
      }

      else
      {
LABEL_79:
        sub_1AADA61DC(v185, v186, v189, v179);
        sub_1AADA61DC(v188, v190, v258, v192);
        sub_1AAD04750(v253, v252, v251 & 1);
        v197 = v190;
      }

      sub_1AAD04750(v263, v260, v259 & 1);

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v270, v269, v189, v257);
      sub_1AADA6198(v261, v264, v266, v265);
      sub_1AADA6198(v256, v197, v258, v268);
LABEL_95:
      sub_1AAD57C94(&v275);
      return;
    }

    if (v259 != 1)
    {
      sub_1AAF73C2C(v267, 0, v117);
      v263 = v139;
      v141 = v140;
      v143 = v142;
      v132 = v144;

      v145 = v268;
      sub_1AADA61DC(v106, v108, v111, v268);
      v267 = v106;
      v259 = v108;
      v252 = v111;
      v253 = v145;
      v130 = v143;
      goto LABEL_84;
    }

    if (*(v60 + 16))
    {
      v125 = v267;
      sub_1AAF73C2C(v267, *(v60 + 625), v117);
      v127 = v126;
      v262 = v128;
      v130 = v129;
      v132 = v131;
      v133 = *(v125 + 2);

      v263 = v127;
      if (v133 <= 1)
      {
        v267 = 0;
        v259 = 0;
        v252 = 0;
        v253 = 0;
      }

      else
      {
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        *&v273[0] = v133;
        sub_1AAF8E1B4();
        sub_1AAF8E1E4();
        v267 = sub_1AAF8E224();
        v260 = v130;
        type metadata accessor for FindClass();
        v134 = swift_getObjCClassFromMetadata();
        v135 = [objc_opt_self() bundleForClass_];
        v130 = v260;
        v267 = sub_1AAF8EA44();
        v259 = v136;
        v252 = v137 & 1;
        v253 = v138;
      }

      v141 = v262;
LABEL_84:
      sub_1AAD45E78(0);
      v204 = swift_allocObject();
      *(v204 + 16) = xmmword_1AAF99670;
      v205 = swift_allocObject();
      v206 = 0;
      *(v205 + 16) = xmmword_1AAF9E2B0;
      *(v205 + 32) = v85;
      v207 = v264;
      v208 = v265;
      *(v205 + 40) = v264;
      *(v205 + 48) = v58;
      *(v205 + 56) = v208;
      *(v205 + 64) = v263;
      *(v205 + 72) = v141;
      *(v205 + 80) = v130 & 1;
      *(v205 + 88) = v132;
      v209 = v85;
      v250 = v205 + 32;
      v251 = v132;
      v210 = v205 + 32;
      v211 = v85;
      v212 = v208;
      v262 = v141;
      v260 = v130;
      if (v208)
      {
LABEL_87:
        v249 = v206;
        v213 = v58;
        v214 = *(v210 + 8);
        v215 = *(v210 + 16);
        sub_1AADA61DC(v211, v207, v213, v208);
        sub_1AACD7304(v263, v141, v130 & 1);

        sub_1AADA61DC(v209, v214, v215, v212);
        sub_1AAD04750(v209, v214, v215 & 1);

        sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v205, v249);
        v217 = v216;
        v219 = v218;
        LOBYTE(v214) = v220;
        v222 = v221;

        v132 = (v214 & 1);
      }

      else
      {
        v209 = v263;
        if (v132)
        {
          v206 = 1;
          v210 = v205 + 64;
          v212 = v132;
          v211 = v261;
          v141 = v262;
          v207 = v264;
          v208 = v265;
          LOBYTE(v130) = v260;
          goto LABEL_87;
        }

        sub_1AADA61DC(v261, v264, v58, 0);
        sub_1AACD7304(v209, v262, v260 & 1);

        v217 = 0;
        v219 = 0;
        v222 = 0;
      }

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      v248[1] = v223;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v204 + 32) = v217;
      *(v204 + 40) = v219;
      *(v204 + 48) = v132;
      *(v204 + 56) = v222;
      v225 = v269;
      v224 = v270;
      *(v204 + 64) = v270;
      *(v204 + 72) = v225;
      v226 = v255;
      v227 = v257;
      *(v204 + 80) = v255;
      *(v204 + 88) = v227;
      v228 = v259;
      *(v204 + 96) = v267;
      *(v204 + 104) = v228;
      v229 = v252;
      v230 = v253;
      *(v204 + 112) = v252;
      *(v204 + 120) = v230;
      v231 = *(v204 + 16);
      v269 = v225;
      v270 = v224;
      if (v231)
      {
        v232 = 0;
        v233 = (v204 + 56);
        while (1)
        {
          v234 = *v233;
          if (*v233)
          {
            break;
          }

          ++v232;
          v233 += 4;
          if (v231 == v232)
          {
            goto LABEL_92;
          }
        }

        v259 = v228;
        v253 = v230;
        v237 = v229;
        v238 = *(v233 - 1);
        v249 = *(v233 - 2);
        v250 = v238;
        v239 = *(v233 - 3);
        sub_1AADA61DC(v224, v225, v226, v227);
        sub_1AADA61DC(v267, v228, v237, v230);

        v240 = v239;
        v241 = v239;
        v229 = v237;
        v243 = v249;
        v242 = v250;
        sub_1AADA61DC(v240, v249, v250, v234);
        v244 = v242 & 1;
        v230 = v253;
        v245 = v241;
        v228 = v259;
        sub_1AAD04750(v245, v243, v244);

        sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v204, v232);
        v249 = v247;
        v250 = v246;

        v236 = v227;
        v235 = v267;
      }

      else
      {
LABEL_92:
        sub_1AADA61DC(v224, v225, v226, v227);
        v235 = v267;
        sub_1AADA61DC(v267, v228, v229, v230);
        v249 = 0;
        v250 = 0;
        v236 = v227;
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v235, v228, v229, v230);
      sub_1AADA6198(v270, v269, v226, v236);
      sub_1AAD04750(v263, v262, v260 & 1);

      sub_1AADA6198(v261, v264, v266, v265);
      sub_1AADA6198(v256, v254, v258, v268);
      goto LABEL_95;
    }

    goto LABEL_100;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}