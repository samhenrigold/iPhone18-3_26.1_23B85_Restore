void sub_1ABEB17B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64);
  v17 = v16 + v15 + 1;
  v18 = 8 * v17;
  v19 = a3 >= v12;
  v20 = a3 - v12;
  if (v20 != 0 && v19)
  {
    if (v17 <= 3)
    {
      v24 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v12 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_46:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v8 == v12)
        {
          goto LABEL_32;
        }

        a1 = (&a1[v14] & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_32:

          sub_1ABA7B9B4(a1, a2, v8, v7);
        }

        else
        {
          a1[v16] = a2 + 1;
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + a2;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v16 + v15 != -1)
      {
        v26 = v22 & ~(-1 << v18);
        bzero(a1, v16 + v15 + 1);
        if (v17 == 3)
        {
          *v6 = v26;
          v6[2] = BYTE2(v26);
        }

        else if (v17 == 2)
        {
          *v6 = v26;
        }

        else
        {
          *v6 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v16 + v15 + 1);
      *v6 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        v6[v17] = v23;
        break;
      case 2:
        *&v6[v17] = v23;
        break;
      case 3:
        goto LABEL_46;
      case 4:
        *&v6[v17] = v23;
        break;
      default:
        return;
    }
  }
}

void sub_1ABEB1A80(uint64_t a1)
{
  sub_1ABB68CCC(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1ABEB1B40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v7 + 80);
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v18 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_28:
      if ((v12 & 0x80000000) != 0)
      {
        v27 = (a1 + v14 + 8) & ~v14;
        if (v8 == v13)
        {
          v9 = AssociatedTypeWitness;
        }

        else
        {
          v27 = (v27 + v15 + v16) & ~v16;
          v8 = v11;
        }

        return sub_1ABA7E1E0(v27, v8, v9);
      }

      else
      {
        v26 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_28;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_1ABEB1DBC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64) + ((v17 + v18 + ((v16 + 8) & ~v16)) & ~v18) + 1;
  v20 = 8 * v19;
  if (a3 <= v15)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v15 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        break;
      case 3:
LABEL_51:
        __break(1u);
        break;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          if ((v14 & 0x80000000) != 0)
          {
            v28 = &a1[v16 + 8] & ~v16;
            if (v10 == v15)
            {
              v29 = a2;
              v11 = AssociatedTypeWitness;
            }

            else
            {
              v28 = (v28 + v17 + v18) & ~v18;
              v29 = a2;
              v10 = v13;
            }

            sub_1ABA7B9B4(v28, v29, v10, v11);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = (a2 - 1);
            }

            *a1 = v27;
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v15 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABEB20F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v22[4] = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v20 = type metadata accessor for TypedGraphObjectSequence(0, v22);
  result = (*(*(a7 - 8) + 32))(a9 + *(v20 + 92), a2, a7);
  *(a9 + *(v20 + 96)) = a3;
  return result;
}

uint64_t sub_1ABEB2204@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v5 = *(a1 + 32);
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v72 = v5;
  v6 = sub_1ABF252B4();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v61 = v7;
  v62 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v49 - v10;
  v60 = v6;
  v51 = *(v6 - 8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v49 - v12;
  v13 = *(a1 + 24);
  sub_1ABA7BD7C();
  v65 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v52 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  sub_1ABA7BD7C();
  v64 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v71 = *(a1 + 92);
  v30 = &v49 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = (v64 + 4);
  v69 = AssociatedConformanceWitness;
  v66 = (v65 + 4);
  v67 = (v64 + 2);
  ++v64;
  ++v65;
  v56 = (v62 + 8);
  v57 = v27;
  v58 = v23;
  v59 = v30;
  while (1)
  {
    sub_1ABF24864();
    if (sub_1ABA7E1E0(v23, 1, TupleTypeMetadata2) == 1)
    {
      (*(v52 + 8))(v23, v53);
      type metadata accessor for TypedEntityIdentifier(255, v72, *(a1 + 64), v36);
      v37 = swift_getTupleTypeMetadata2();
      v38 = v54;
      v39 = 1;
      return sub_1ABA7B9B4(v38, v39, 1, v37);
    }

    (*v68)(v30, v23, TupleTypeMetadata2);
    (*v67)(v27, v30, TupleTypeMetadata2);
    v32 = *v27;
    (*v66)(v18, v27 + *(TupleTypeMetadata2 + 48), v13);
    v73 = v32;
    v33 = *(a1 + 64);
    TypedEntityIdentifier.init(untyped:)(&v73, v72, v33, &v74);
    v55 = v74;
    LODWORD(v62) = *(v3 + *(a1 + 100));
    v34 = *(a1 + 56);
    swift_getAssociatedTypeWitness();
    v35 = v63;
    *(&v48 + 1) = *(a1 + 80);
    *&v48 = v34;
    sub_1ABC80FCC(v72, v62, v72, v63, v33, v48, *(a1 + 72));
    (*v65)(v18, v13);
    v30 = v59;
    (*v64)();
    if (sub_1ABA7E1E0(v35, 1, v60) != 1)
    {
      break;
    }

    (*v56)(v63, v61);
    v27 = v57;
    v23 = v58;
  }

  v40 = *(v51 + 32);
  v41 = v50;
  v42 = v60;
  v40(v50, v63, v60);
  type metadata accessor for TypedEntityIdentifier(255, v72, v33, v43);
  v44 = swift_getTupleTypeMetadata2();
  v45 = *(v44 + 48);
  v46 = v54;
  *v54 = v55;
  v40(&v46[v45], v41, v42);
  sub_1ABA7B9B4(&v46[v45], 0, 1, v42);
  v38 = v46;
  v39 = 0;
  v37 = v44;
  return sub_1ABA7B9B4(v38, v39, 1, v37);
}

uint64_t sub_1ABEB2898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  v22[0] = a5;
  v22[1] = a6;
  v22[2] = a7;
  v22[3] = a8;
  v22[4] = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v18 = type metadata accessor for TypedGraphObjectSequence.Iterator(0, v22);
  v19 = v18[23];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a9[v19], a2, AssociatedTypeWitness);
  result = (*(*(a8 - 8) + 32))(&a9[v18[24]], a3, a8);
  a9[v18[25]] = a4;
  return result;
}

uint64_t sub_1ABEB29C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v5 = *(a1 + 40);
  sub_1ABA7BD7C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  sub_1ABA7BD7C();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v21 = *(v20 + 48);
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB88();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v27 - v24;
  (*(v15 + 16))(v19, v3, v13, v23);
  sub_1ABF23F04();
  (*(v7 + 16))(v11, v3 + *(a1 + 92), v5);
  return sub_1ABEB2898(MEMORY[0x1E69E7CD0], v25, v11, *(v3 + *(a1 + 96)), v13, *(a1 + 24), *(a1 + 32), v5, v28, v21, *(a1 + 56), *(a1 + 72), *(a1 + 80));
}

uint64_t sub_1ABEB2BC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1ABEB29C4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t static UniversalEmbeddingModelClient.shared()()
{
  v0 = [objc_opt_self() service];
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t UniversalEmbeddingModelClient.embed(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1ABEB2CA0, 0, 0);
}

uint64_t sub_1ABEB2CA0()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[4] = v2;
  [v2 setVersion_];
  v3 = *(v1 + 16);
  v0[5] = v3;
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = xmmword_1ABF5FD20;
    *(v4 + 32) = v2;
    v3;
    v5 = v2;
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1ABEB2EB0;

    return sub_1ABEB325C();
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24664();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "Couldn't fetch embedding due to error: madService is nil", v11, 2u);
      sub_1ABA7BC34();
    }

    v12 = v0[1];
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t sub_1ABEB2EB0(uint64_t a1)
{
  v4 = *v2;
  sub_1ABA7D4E0();
  *v5 = v4;
  v6 = *v2;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v4 + 64) = v1;

  if (v1)
  {
    v8 = sub_1ABEB3040;
  }

  else
  {

    *(v4 + 72) = a1;
    v8 = sub_1ABEB2FD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABEB2FD8()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1ABEB3040()
{

  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7D178(&qword_1ED871B38);
  }

  v1 = v0[8];
  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1ED871B40);
  v3 = v1;
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24664();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1ABA78000, v4, v5, "Couldn't fetch embedding due to error: %@", v7, 0xCu);
    sub_1ABB24B18(v8);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  v11 = v0[8];
  v13 = v0[4];
  v12 = v0[5];

  v14 = v0[1];
  v15 = MEMORY[0x1E69E7CC0];

  return v14(v15);
}

uint64_t sub_1ABEB31C8(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v5 = v6;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(result + 24);
      result = *(result + 16);
      v5 = v4;
LABEL_9:
      result = sub_1ABEB40F4(result, v5);
      break;
    case 3uLL:
      result = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1ABEB4078(result, v3);
      break;
  }

  return result;
}

uint64_t sub_1ABEB325C()
{
  sub_1ABA7BBF8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v1[8] = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1ABEB32D0, 0, 0);
}

uint64_t sub_1ABEB32D0()
{
  if (sub_1ABAAB7C8(*(v0 + 24)))
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v14 = *(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v4 = *(v0 + 24);
    *(v3 + 16) = v2;
    *(v3 + 24) = v4;
    *(v3 + 40) = v14;
    *(v3 + 56) = v1;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    v6 = sub_1ABAD219C(&qword_1EB4DC3B8, &qword_1ABF766B0);
    *v5 = v0;
    v5[1] = sub_1ABEB34E8;

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001ABF95370, sub_1ABEB3FA4, v3, v6);
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v7 = sub_1ABF237F4();
    sub_1ABA7AA24(v7, qword_1ED871B40);
    v8 = sub_1ABF237D4();
    v9 = sub_1ABF24664();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1ABA78000, v8, v9, "No requests to perform", v10, 2u);
      sub_1ABA7BC34();
    }

    v11 = *(v0 + 8);
    v12 = MEMORY[0x1E69E7CC0];

    return v11(v12);
  }
}

uint64_t sub_1ABEB34E8()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  *(v2 + 88) = v0;

  if (v0)
  {
    v6 = sub_1ABEB35F8;
  }

  else
  {

    v6 = sub_1ABB269F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1ABEB35F8()
{
  sub_1ABA7BBF8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t UniversalEmbeddingModelClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1ABEB36B0(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v23 = a7;
  v24 = a2;
  v21 = a5;
  v10 = sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  if (a3 >> 62)
  {
    sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);

    sub_1ABF24CF4();
  }

  else
  {

    sub_1ABF25084();
    sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);
  }

  sub_1ABAFF390(0, &qword_1EB4DC3C8, 0x1E69AE3F8);
  v22 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();
  if (a6)
  {
    a6 = sub_1ABF23BD4();
  }

  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v14, v10);
  *(v18 + v17) = a3;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_1ABEB3FB4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ABEB3EF0;
  aBlock[3] = &unk_1F20748F0;
  v19 = _Block_copy(aBlock);

  v20 = v22;
  [v24 performRequests:v22 text:v15 identifier:a6 completionHandler:{v19, v21}];
  _Block_release(v19);
}

void sub_1ABEB399C(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24254();
    return;
  }

  if (!sub_1ABAAB7C8(a4))
  {
    sub_1ABEB4210();
    swift_allocError();
    *v35 = 1;
    goto LABEL_3;
  }

  sub_1ABAAB7C0(0, (a4 & 0xC000000000000001) == 0, a4);
  if ((a4 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1AC5AA170](0, a4);
  }

  else
  {
    v8 = *(a4 + 32);
  }

  v9 = v8;
  v10 = sub_1ABEB41A0(v8);
  if (!v10)
  {
    sub_1ABEB4210();
    swift_allocError();
    *v36 = 2;
    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24254();

    return;
  }

  v11 = v10;
  v12 = sub_1ABAAB7C8(v10);
  v37 = v9;
  if (!v12)
  {
    goto LABEL_30;
  }

  if (v12 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v38 = v12;
    v39 = a5;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1AC5AA170](v13, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1ED871B40);
      v18 = v16;
      v19 = sub_1ABF237D4();
      v20 = sub_1ABF24654();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        *(v21 + 4) = [v18 elementType];

        _os_log_impl(&dword_1ABA78000, v19, v20, "Embedding type = %ld", v21, 0xCu);
        MEMORY[0x1AC5AB8B0](v21, -1, -1);
      }

      else
      {

        v19 = v18;
      }

      v22 = v18;
      v23 = sub_1ABF237D4();
      v24 = sub_1ABF24654();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = [v22 elementCount];

        _os_log_impl(&dword_1ABA78000, v23, v24, "Embedding count = %ld", v25, 0xCu);
        MEMORY[0x1AC5AB8B0](v25, -1, -1);
      }

      else
      {

        v23 = v22;
      }

      v26 = [v22 embeddingData];
      v27 = sub_1ABF21DD4();
      v29 = v28;

      v30 = sub_1ABEB31C8(v27, v29, a5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADCC48(0, *(v14 + 16) + 1, 1, v14);
        v14 = v33;
      }

      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1ABADCC48(v31 > 1, v32 + 1, 1, v14);
        v14 = v34;
      }

      ++v13;
      sub_1ABA96210(v27, v29);

      *(v14 + 16) = v32 + 1;
      *(v14 + 8 * v32 + 32) = v30;
      a5 = v39;
    }

    while (v38 != v13);
LABEL_30:

    sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
    sub_1ABF24264();

    return;
  }

  __break(1u);
}

char *sub_1ABEB3DE4@<X0>(char *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v4 = result;
  v5 = a2 - result;
  v6 = MEMORY[0x1E69E7CC0];
  if ((a2 - result + 1) < 3)
  {
LABEL_10:
    *a3 = v6;
    return result;
  }

  v7 = v5 / 2;
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1ABADE0CC(0, (v5 / 2) & ~((v5 / 2) >> 63), 0);
  if (v5 >= -1)
  {
    v6 = v16;
    v8 = *(v16 + 16);
    do
    {
      _H8 = *v4;
      v17 = v6;
      v10 = *(v6 + 24);
      if (v8 >= v10 >> 1)
      {
        result = sub_1ABADE0CC((v10 > 1), v8 + 1, 1);
        v6 = v17;
      }

      __asm { FCVT            S0, H8 }

      *(v6 + 16) = v8 + 1;
      *(v6 + 4 * v8 + 32) = _S0;
      v4 += 2;
      ++v8;
      --v7;
    }

    while (v7);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1ABEB3EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1ABEB3FB4(int a1, void *a2)
{
  v5 = *(sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1ABEB399C(a1, a2, v2 + v6, v8, v9);
}

char *sub_1ABEB4078(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = WORD2(a2);
  v6 = a2;
  result = sub_1ABEB3DE4(&v5, &v5 + BYTE6(a2), &v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *sub_1ABEB40F4(uint64_t a1, uint64_t a2)
{
  result = sub_1ABF219E4();
  v6 = result;
  if (result)
  {
    result = sub_1ABF21A04();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_1ABF219F4();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1ABEB3DE4(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

uint64_t sub_1ABEB41A0(void *a1)
{
  v1 = [a1 embeddingResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABAFF390(0, &qword_1EB4DC3D8, 0x1E69AE3F0);
  v3 = sub_1ABF240D4();

  return v3;
}

unint64_t sub_1ABEB4210()
{
  result = qword_1EB4DC3D0;
  if (!qword_1EB4DC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3D0);
  }

  return result;
}

_BYTE *_s14EmbeddingErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABEB4344()
{
  result = qword_1EB4DC3E0;
  if (!qword_1EB4DC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3E0);
  }

  return result;
}

uint64_t sub_1ABEB4398(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + qword_1EB4DC3E8);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v5 + 24));
  v6 = sub_1ABEB4418((v5 + 16), a1, a3);
  os_unfair_lock_unlock((v5 + 24));
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1ABEB4418(id *a1, uint64_t a2, void *a3)
{
  v7 = *a1;
  v8 = [*a1 objectForKey_];
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v9 = sub_1ABEBADD4(a2, a3);
    if (!v3)
    {
      v4 = v9;
      [v7 setObject:v9 forKey:a2];
    }
  }

  swift_unknownObjectRelease();
  return v4;
}

id sub_1ABEB44C4(id *a1, void *a2)
{
  v5 = *a1;
  v6 = [*a1 objectForKey_];
  if (v6)
  {
    return v6;
  }

  sub_1ABEBABF8(a2);
  if (!v2)
  {
    v3 = v7;
    [v5 setObject:v7 forKey:a2];
  }

  return v3;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = *(a2 + 16);
  sub_1ABEB4764(v2, a1, v6, v7);
  objc_autoreleasePoolPop(v5);
  v8 = *(*(v6 - 8) + 8);

  return v8(a1, v6);
}

uint64_t sub_1ABEB4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  (*(v8 + 16))(&v13 - v6, v5);
  v11 = type metadata accessor for UserDefault(0, v4, v9, v10);
  return UserDefault.wrappedValue.setter(v7, v11);
}

void sub_1ABEB4764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + *(type metadata accessor for UserDefault(0, a3, a3, a4) + 32));
  v5 = sub_1ABF25044();

  v6 = sub_1ABF23BD4();

  [v4 setObject:v5 forKey:v6];

  swift_unknownObjectRelease();
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_1ABAFDD10(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = sub_1ABAFDD10(v8);
  v9 = sub_1ABAFDD10(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return sub_1ABEB4908;
}

void sub_1ABEB4908(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = sub_1ABF23BD4();
  [v2 removeObjectForKey_];
}

uint64_t static NSUserDefaults.isKTSEnabled.setter(char a1)
{
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38(&qword_1ED870D28);
  }

  swift_beginAccess();
  v2 = objc_autoreleasePoolPush();
  sub_1ABBC29E8(&byte_1ED870D30, a1 & 1);
  objc_autoreleasePoolPop(v2);
  return swift_endAccess();
}

void (*static NSUserDefaults.isKTSEnabled.modify(void *a1))(uint64_t a1)
{
  v2 = sub_1ABAFDD10(0x38uLL);
  *a1 = v2;
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38(&qword_1ED870D28);
  }

  swift_beginAccess();
  v3 = byte_1ED870D30;
  v4 = qword_1ED870D38;
  v5 = unk_1ED870D40;
  v6 = qword_1ED870D48;
  v7 = objc_autoreleasePoolPush();
  v8 = sub_1ABA84CB8(v3, v4, v5, v6);
  v2[5] = 0;
  objc_autoreleasePoolPop(v7);
  *(v2 + 48) = v8 & 1;
  return sub_1ABEB4BB4;
}

void sub_1ABEB4BB4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = objc_autoreleasePoolPush();
  sub_1ABBC29E8(&byte_1ED870D30, v2);
  objc_autoreleasePoolPop(v3);
  swift_endAccess();

  free(v1);
}

id sub_1ABEB4C44()
{
  sub_1ABA84BAC();
  result = static NSUserDefaults.makeIntelligencePlatformUserDefaults()();
  byte_1ED870D30 = 0;
  qword_1ED870D38 = 0xD000000000000020;
  unk_1ED870D40 = 0x80000001ABF95440;
  qword_1ED870D48 = result;
  return result;
}

id static NSUserDefaults.$isKTSEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED870D28 != -1)
  {
    sub_1ABA8FD38(&qword_1ED870D28);
  }

  swift_beginAccess();
  v3 = qword_1ED870D38;
  v2 = unk_1ED870D40;
  v6 = qword_1ED870D48;
  v4 = qword_1ED870D48;
  *a1 = byte_1ED870D30;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return v6;
}

unint64_t sub_1ABEB4D30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1ABA84BAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABEB4DC0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABEB4F04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

IntelligencePlatform::UserInterestsType_optional __swiftcall UserInterestsType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t UserInterestsType.rawValue.getter()
{
  result = 0x6172676F746F6870;
  switch(*v0)
  {
    case 1:
      return 0x6E696E6564726167;
    case 2:
      v2 = 1802465123;
      return v2 | 0x676E6900000000;
    case 3:
      v2 = 1684104562;
      return v2 | 0x676E6900000000;
    case 4:
      return 0x676E69746E696170;
    case 5:
      return 0x636973756DLL;
    case 6:
      return 7631457;
    case 7:
      return 0x6D61476F65646976;
    case 8:
      return 0x6E6F6968736166;
    case 9:
      return 0x7075656B616DLL;
    case 0xA:
      return 1634168697;
    case 0xB:
      v2 = 1818458467;
      return v2 | 0x676E6900000000;
    case 0xC:
      return 0x676E696B6968;
    case 0xD:
      v2 = 1835628403;
      return v2 | 0x676E6900000000;
    case 0xE:
      return 0x6369626F726561;
    case 0xF:
      v2 = 1852732786;
      return v2 | 0x676E6900000000;
    case 0x10:
      v2 = 1802264951;
      return v2 | 0x676E6900000000;
    case 0x11:
      return 0x726563636F73;
    case 0x12:
      return 0x74656B63697263;
    case 0x13:
      v3 = 0x74656B736162;
      goto LABEL_29;
    case 0x14:
      return 0x636F48646C656966;
    case 0x15:
      return 0x73696E6E6574;
    case 0x16:
      v3 = 0x79656C6C6F76;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6162000000000000;
      break;
    case 0x17:
      result = 0x6E6554656C626174;
      break;
    case 0x18:
      result = 0x6C6C616265736162;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x1A:
      result = 1718382439;
      break;
    case 0x1B:
      result = 6908787;
      break;
    case 0x1C:
      result = 0x6E61676576;
      break;
    case 0x1D:
      result = 0x6972617465676576;
      break;
    case 0x1E:
      result = 0x72466E6574756C67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEB5574@<X0>(uint64_t *a1@<X8>)
{
  result = UserInterestsType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEB56A4()
{
  sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF76810;
  type metadata accessor for UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag();
  v1 = swift_allocObject();
  *(v1 + 16) = 27;
  *(v1 + 24) = 0x3FDAE147AE147AE1;
  *(v0 + 32) = v1;
  v2 = sub_1ABA7E180();
  *(v2 + 16) = 12;
  *(v2 + 24) = 0x3FD51EB851EB851FLL;
  *(v0 + 40) = v2;
  v3 = sub_1ABA7E180();
  *(v3 + 16) = 21;
  *(v3 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 48) = v3;
  v4 = sub_1ABA7E180();
  *(v4 + 16) = 5;
  *(v4 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 56) = v4;
  v5 = sub_1ABA7E180();
  *(v5 + 16) = 6;
  *(v5 + 24) = 0x3FB47AE147AE147BLL;
  *(v0 + 64) = v5;
  type metadata accessor for UserInterestsService.ScoreRankedUserInterestsTags();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag.__allocating_init(tag:score:)(_BYTE *a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.__allocating_init(scoreUserInterestsTags:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.ScoreUserInterestsTag.init(tag:score:)(_BYTE *a1, double a2)
{
  *(v2 + 16) = *a1;
  *(v2 + 24) = a2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t UserInterestsService.ScoreRankedUserInterestsTags.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1ABEB592C()
{
  result = qword_1EB4DC3F8;
  if (!qword_1EB4DC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC3F8);
  }

  return result;
}

unint64_t sub_1ABEB5984()
{
  result = qword_1EB4DC400;
  if (!qword_1EB4DC400)
  {
    sub_1ABAE2850(&qword_1EB4DC408, &qword_1ABF768C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC400);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInterestsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE2)
  {
    if (a2 + 30 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 30) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 31;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v5 = v6 - 31;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UserInterestsType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE1)
  {
    v6 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
          *result = a2 + 30;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABEB5C40()
{
  result = qword_1EB4DC410[0];
  if (!qword_1EB4DC410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DC410);
  }

  return result;
}

void sub_1ABEB5CC8()
{
  v1 = *(*v0 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  (*(*(v1 - 8) + 16))(v3);
  sub_1ABA8FD60("Fatal error", v4, v5, v6, v7, "IntelligencePlatform/VectorSearchEngine+Selector.swift", v8, v9, 37, 0);
  __break(1u);
}

uint64_t sub_1ABEB5DDC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[3];
  v13 = v0[2];
  v14 = v2;
  v11 = *(v1 + 128);
  v12 = *(v1 + 136);
  v9[2] = v11;
  v9[3] = v12;
  v9[4] = sub_1ABEB6B90;
  v9[5] = &v10;
  v3 = type metadata accessor for OrderedDictionary(0, v11, MEMORY[0x1E69E6448], v12);

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1ABB66290(sub_1ABEB6BE0, v9, v3, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  return v7;
}

void sub_1ABEB5F3C(uint64_t a1@<X0>, float (*a2)(uint64_t, uint64_t, float)@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  *(a4 + v8) = a2(a4, a1, v7);
}

uint64_t sub_1ABEB5FFC(uint64_t a1, float a2)
{
  v46 = *v2;
  v5 = *(v46 + 128);
  sub_1ABA7DA44();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABA7BD7C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = *(v5 - 8);
  (*(v21 + 16))(&v43 - v19, a1, v5, v18);
  *&v20[*(TupleTypeMetadata2 + 48)] = a2;
  v22 = *(v2 + 32);
  if (*(v2 + 36) == 1)
  {
    v23 = v22 > a2;
  }

  else
  {
    v23 = v22 < a2;
  }

  if (v23)
  {
    v44 = v15;
    v45 = v12;
    v24 = *(v8 + 16);
    v25 = sub_1ABA7EC98();
    v24(v25);
    swift_beginAccess();
    v26 = *(v46 + 136);
    sub_1ABE1B8A4();
    if (v48)
    {
      swift_endAccess();
      v46 = v8;
      v43 = *(v21 + 8);
      v27 = sub_1ABA8EE28();
      v28(v27);
      (v24)(v44, v20, TupleTypeMetadata2);
      v29 = sub_1ABA7EC98();
      v24(v29);
      sub_1ABA7FB24();
      v30 = sub_1ABA7DA44();
      type metadata accessor for OrderedDictionary(v30, v31, v32, v26);
      sub_1ABE1B8B8();
      swift_endAccess();
      (*(v46 + 8))(v20, TupleTypeMetadata2);
LABEL_12:
      v41 = sub_1ABA8EE28();
      return v43(v41);
    }

    v46 = v26;
    v33 = v47;
    swift_endAccess();
    v34 = *(v21 + 8);
    v35 = sub_1ABA8EE28();
    v34(v35);
    if (*(v2 + 36) == 1)
    {
      v36 = v33 > a2;
    }

    else
    {
      v36 = v33 < a2;
    }

    if (v36)
    {
      v43 = v34;
      (v24)(v44, v20, TupleTypeMetadata2);
      v37 = sub_1ABA7EC98();
      v24(v37);
      sub_1ABA7FB24();
      v38 = sub_1ABA7DA44();
      type metadata accessor for OrderedDictionary(v38, v39, v40, v46);
      sub_1ABE1B8B8();
      swift_endAccess();
      (*(v8 + 8))(v20, TupleTypeMetadata2);
      goto LABEL_12;
    }
  }

  return (*(v8 + 8))(v20, TupleTypeMetadata2);
}

uint64_t sub_1ABEB63E4()
{
}

uint64_t sub_1ABEB641C()
{

  return v0;
}

uint64_t sub_1ABEB644C()
{
  sub_1ABEB641C();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEB64F8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  sub_1ABE36260(v1);
  swift_getTupleTypeMetadata2();
  v2 = sub_1ABA7DA44();
  type metadata accessor for PriorityQueue(v2, v3, v4, v5);
  swift_getWitnessTable();
  sub_1ABF24214();
  sub_1ABA7DA44();
  sub_1ABF241F4();
  swift_getWitnessTable();
  return sub_1ABF23FF4();
}

uint64_t sub_1ABEB6620(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = *(*v3 + 128);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1ABA7DA44();
  sub_1ABF247E4();
  sub_1ABA7BD7C();
  v63 = v9;
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  v62 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  sub_1ABA7BD7C();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7AC18();
  v68 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v59 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  v26 = *(v6 - 8);
  v67 = *(v26 + 16);
  v67(&v59 - v24, a1, v6, v23);
  *&v25[*(TupleTypeMetadata2 + 48)] = a2;
  v27 = *(v3 + 16);
  if (v27 < 1)
  {
    return (*(v16 + 8))(v25, TupleTypeMetadata2);
  }

  v65 = v6;
  swift_beginAccess();
  v28 = *(v3 + 48);
  v69 = *(v3 + 32);
  v70 = v28;
  v71 = *(v3 + 56);
  v29 = sub_1ABA7DA44();
  v33 = type metadata accessor for PriorityQueue(v29, v30, v31, v32);
  if (PriorityQueue.count.getter() >= v27)
  {
    v61 = v16;
    v40 = *(v3 + 40);
    v41 = *(v3 + 48);
    v42 = *(v3 + 56);
    v43 = *(v3 + 64);
    *&v69 = *(v3 + 32);
    *(&v69 + 1) = v40;
    v70 = v41;
    *&v71 = v42;
    *(&v71 + 1) = v43;

    sub_1ABE36260(v42);
    v60 = v33;
    PriorityQueue.peek()();
    v44 = v71;

    sub_1ABAC9398(v44, *(&v44 + 1));
    result = sub_1ABA7E1E0(v14, 1, TupleTypeMetadata2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = *&v14[v45];
      v48 = v65;
      v47 = v66;
      (*(v26 + 32))(v66, v14, v65);
      *&v47[v45] = v46;
      if (*(v3 + 24) == 1)
      {
        v49 = v46 > a2;
      }

      else
      {
        v49 = v46 < a2;
      }

      v50 = v61;
      if (v49)
      {
        sub_1ABA81314();
        v51 = v62;
        v52 = v60;
        PriorityQueue.pop()();
        swift_endAccess();
        (*(v63 + 8))(v51, v64);
        v53 = *(TupleTypeMetadata2 + 48);
        v54 = v68;
        (v67)(v68, v25, v48);
        *(v54 + v53) = a2;
        sub_1ABA81314();
        PriorityQueue.push(_:)(v54, v52, v55, v56);
        swift_endAccess();
        v57 = *(v50 + 8);
        v58 = sub_1ABA8EE28();
        v57(v58);
      }

      else
      {
        v57 = *(v61 + 8);
      }

      (v57)(v47, TupleTypeMetadata2);
      return (v57)(v25, TupleTypeMetadata2);
    }
  }

  else
  {
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v68;
    (v67)(v68, v25, v65);
    *(v35 + v34) = a2;
    sub_1ABA81314();
    PriorityQueue.push(_:)(v35, v33, v36, v37);
    swift_endAccess();
    v38 = *(v16 + 8);
    v38(v35, TupleTypeMetadata2);
    return (v38)(v25, TupleTypeMetadata2);
  }

  return result;
}

uint64_t sub_1ABEB6AAC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  return sub_1ABAC9398(v2, v1);
}

uint64_t sub_1ABEB6AFC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  sub_1ABAC9398(v1, v2);
  return v0;
}

uint64_t sub_1ABEB6B44()
{
  sub_1ABEB6AFC();

  return swift_deallocClassInstance();
}

void sub_1ABEB6C04(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1ABAAB7C8(a1);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_17;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC5AA170](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v19 = v8;
    sub_1ABEB9978(a3, &v17);
    if (v3)
    {

LABEL_17:
      sub_1ABEBA5A4(a2);
      return;
    }

    v9 = v17;
    if (v17)
    {
      v10 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADCC6C();
        v7 = v13;
      }

      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_1ABADCC6C();
        v7 = v14;
      }

      *(v7 + 16) = v11 + 1;
      v12 = v7 + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v10;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

sqlite3_stmt **sub_1ABEB6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, sqlite3_stmt **a6)
{
  v9 = a2;
  v10 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v7 = a6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_21:
    sub_1ABF24A74();
    if (v6)
    {

      return v7;
    }

    v7 = v17;
  }

  else
  {
    v12 = sub_1ABF22E54();
    if ((a5 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if ((a5 & 0x2000000000000000) == 0)
    {
      v10 = a4 & 0xFFFFFFFFFFFFLL;
      while (1)
      {
        if (v10 <= 0x7FFFFFFF)
        {
          goto LABEL_17;
        }

        __break(1u);
LABEL_9:
        v16[0] = v10;
        v16[1] = v9 & 0xFFFFFFFFFFFFFFLL;
        v9 = sub_1ABF22E54();
        if ((a5 & 0x1000000000000000) == 0)
        {
          break;
        }

        v12 = sub_1ABF23DF4();
        if (v12 >= 0xFFFFFFFF80000000)
        {
          goto LABEL_28;
        }

        __break(1u);
LABEL_26:
        v15 = v12;
        v12 = sub_1ABF23DF4();
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_28:
          v10 = v12;
LABEL_12:
          if (v10 > 0x7FFFFFFF)
          {
            __break(1u);
            goto LABEL_14;
          }

LABEL_15:
          v13 = v16;
          v12 = v9;
          goto LABEL_18;
        }

        v10 = v12;
        v12 = v15;
      }

      if ((a5 & 0x2000000000000000) == 0)
      {
        v10 = a4 & 0xFFFFFFFFFFFFLL;
        goto LABEL_12;
      }

LABEL_14:
      v10 = HIBYTE(a5) & 0xF;
      goto LABEL_15;
    }

    v10 = HIBYTE(a5) & 0xF;
LABEL_17:
    v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_18:
    v7 = sqlite3_prepare_v2(v12, v13, v10, v7, 0);
  }

  return v7;
}

uint64_t static SearchMode.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (v2 == v3)
    {
      return *(a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[1] & 1) == 0 && *&v2 == *&v3;
  }
}

uint64_t sub_1ABEB6F7C(void *a1)
{
  v33 = sub_1ABF22EE4();
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v28 - v10);
  v12 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v36 = a1;
  v15 = MEMORY[0x1E69A0008];
  sub_1ABEBA6B4(&qword_1EB4D5030, MEMORY[0x1E69A0008], MEMORY[0x1E69A0010]);
  sub_1ABF23F04();
  sub_1ABEBA6B4(&qword_1EB4D0208, v15, MEMORY[0x1E69A0018]);
  v32 = (v2 + 8);
  v30 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1ABF244A4();
    sub_1ABEBA6B4(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
    v16 = v33;
    v17 = sub_1ABF23BB4();
    (*v32)(v4, v16);
    if (v17)
    {
      break;
    }

    v18 = sub_1ABF245D4();
    v19 = v31;
    sub_1ABAAB860(v20, v31);
    v18(v34, 0);
    sub_1ABF244B4();
    sub_1ABEBA644(v19, v11);
    v21 = *v11 == 0x6469776F72 && v11[1] == 0xE500000000000000;
    if (v21 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA925A4(v11, &qword_1EB4D1200, &unk_1ABF4B4D0);
    }

    else
    {
      sub_1ABEBA644(v11, v29);
      v22 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABADEDFC(0, *(v22 + 16) + 1, 1);
        v22 = v35;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1ABADEDFC(v24 > 1, v25 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v25 + 1;
      v26 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = v22;
      sub_1ABEBA644(v29, v22 + v26 + *(v28 + 72) * v25);
    }
  }

  sub_1ABA925A4(v14, &unk_1EB4D5810, &qword_1ABF48B70);
  return v30;
}

uint64_t sub_1ABEB7410(char a1, float a2)
{
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1ABF239C4();
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  *(v2 + 32) = a2;
  *(v2 + 36) = a1;
  return v2;
}

uint64_t sub_1ABEB747C(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v2 + 32) = sub_1ABEBA7F0;
  *(v2 + 40) = v4;
  *(v2 + 48) = MEMORY[0x1E69E7CC0];
  *(v2 + 56) = sub_1ABEBA7F0;
  *(v2 + 64) = v4;

  return v2;
}

BOOL sub_1ABEB74E8(float a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
    return a2 < a1;
  }

  else
  {
    return a1 < a2;
  }
}

uint64_t static VectorSearchError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1ABF25054();
        sub_1ABA7BE8C();
        sub_1ABA7DE6C();
        sub_1ABA7DE6C();
        sub_1ABB95F08();
        sub_1ABA7BE8C();
        goto LABEL_16;
      }

      sub_1ABA7DE6C();
      sub_1ABA7DE6C();
      sub_1ABB95F08();
      sub_1ABB95F08();
      return 1;
    }

LABEL_9:
    sub_1ABA7BE8C();
    sub_1ABA7DE6C();
    sub_1ABA7DE6C();
    sub_1ABB95F08();
    sub_1ABA7BE8C();
    sub_1ABB95F08();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v8 = 1;
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABD3C1AC();
    sub_1ABA7D230();
    sub_1ABB95F08();
    sub_1ABA7D230();
    sub_1ABB95F08();
    return v8;
  }

  v7 = sub_1ABF25054();
  sub_1ABA7BE8C();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABD3C1AC();
  sub_1ABA7D230();
  sub_1ABB95F08();
  sub_1ABA7BE8C();
LABEL_16:
  sub_1ABB95F08();
  return v7 & 1;
}

IntelligencePlatform::VectorSearchSimilarityMetric_optional __swiftcall VectorSearchSimilarityMetric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VectorSearchSimilarityMetric.rawValue.getter()
{
  v1 = 0x616564696C637565;
  if (*v0 != 1)
  {
    v1 = 7630692;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E69736F63;
  }
}

uint64_t sub_1ABEB7734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974737561687865 && a2 == 0xEA00000000006576;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABEB7804(char a1)
{
  if (a1)
  {
    return 1265659764;
  }

  else
  {
    return 0x6974737561687865;
  }
}

uint64_t sub_1ABEB7838(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB78D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74696D694C6D756ELL && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB79A0@<X0>(uint64_t *a1@<X8>)
{
  result = VectorSearchSimilarityMetric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEB7A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB7734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEB7AA8(uint64_t a1)
{
  v2 = sub_1ABEB7F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7AE4(uint64_t a1)
{
  v2 = sub_1ABEB7F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEB7B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB7838(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEB7B50(uint64_t a1)
{
  v2 = sub_1ABEB7FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7B8C(uint64_t a1)
{
  v2 = sub_1ABEB7FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEB7BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB78D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEB7BF8(uint64_t a1)
{
  v2 = sub_1ABEB7F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEB7C34(uint64_t a1)
{
  v2 = sub_1ABEB7F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SearchMode.encode(to:)()
{
  sub_1ABA81AB4();
  v29 = v1;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4DC598, &qword_1ABF76BF0);
  sub_1ABA7BB64();
  v26 = v5;
  v27 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  sub_1ABAD219C(&qword_1EB4DC5A0, &qword_1ABF76BF8);
  sub_1ABA7BB64();
  v23 = v9;
  v24 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4DC5A8, &qword_1ABF76C00);
  sub_1ABA7BB64();
  v15 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v28 = *v0;
  v19 = *(v0 + 8);
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEB7F24();
  sub_1ABF252E4();
  if (v19)
  {
    v31 = 1;
    sub_1ABEB7F78();
    v20 = v25;
    sub_1ABF24EC4();
    v21 = v27;
    sub_1ABF24F74();
    (*(v26 + 8))(v20, v21);
  }

  else
  {
    v30 = 0;
    sub_1ABEB7FCC();
    sub_1ABF24EC4();
    v22 = v24;
    sub_1ABF24F64();
    (*(v23 + 8))(v12, v22);
  }

  (*(v15 + 8))(v18, v13);
  sub_1ABA8CD68();
}

unint64_t sub_1ABEB7F24()
{
  result = qword_1ED871838;
  if (!qword_1ED871838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871838);
  }

  return result;
}

unint64_t sub_1ABEB7F78()
{
  result = qword_1ED871810;
  if (!qword_1ED871810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871810);
  }

  return result;
}

unint64_t sub_1ABEB7FCC()
{
  result = qword_1ED86B340;
  if (!qword_1ED86B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B340);
  }

  return result;
}

void SearchMode.init(from:)()
{
  sub_1ABA81AB4();
  v56 = v1;
  v57 = v0;
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4DC5B0, &qword_1ABF76C08);
  sub_1ABA7BB64();
  v53 = v4;
  v54 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47[-v7];
  sub_1ABAD219C(&qword_1EB4DC5B8, &qword_1ABF76C10);
  sub_1ABA7BB64();
  v52 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47[-v11];
  v13 = sub_1ABAD219C(&qword_1EB4DC5C0, &unk_1ABF76C18);
  sub_1ABA7BB64();
  v55 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47[-v16];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEB7F24();
  v18 = v57;
  sub_1ABF252C4();
  if (v18)
  {
    goto LABEL_12;
  }

  v50 = v12;
  v51 = v8;
  v57 = v3;
  v19 = v56;
  v20 = v17;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v49 = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_1ABAD4E90();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      v48 = v24;
      if (v24)
      {
        v59 = 1;
        sub_1ABEB7F78();
        sub_1ABA83D28();
        v29 = v49;
        sub_1ABF24D94();
        if (!v29)
        {
          v36 = sub_1ABF24E54();
          swift_unknownObjectRelease();
          v37 = sub_1ABA8E620();
          v38(v37);
          v39 = sub_1ABA81334();
          v40(v39);
LABEL_14:
          *v19 = v36;
          *(v19 + 8) = v48;
          sub_1ABA84B54(v57);
          goto LABEL_13;
        }
      }

      else
      {
        v58 = 0;
        sub_1ABEB7FCC();
        v33 = v49;
        sub_1ABA83D28();
        sub_1ABF24D94();
        if (!v33)
        {
          sub_1ABF24E44();
          v42 = v41;
          swift_unknownObjectRelease();
          v43 = sub_1ABA8E620();
          v44(v43);
          v45 = sub_1ABA81334();
          v46(v45);
          v36 = v42;
          goto LABEL_14;
        }
      }

      v34 = sub_1ABA81334();
      v35(v34);
      swift_unknownObjectRelease();
      v3 = v57;
LABEL_12:
      sub_1ABA84B54(v3);
LABEL_13:
      sub_1ABA8CD68();
      return;
    }

LABEL_8:
    v30 = sub_1ABF24B44();
    swift_allocError();
    v32 = v31;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v32 = &type metadata for SearchMode;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v20, v13);
    v3 = v57;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t SearchMode.description.getter()
{
  if (*(v0 + 8))
  {
    v3 = 0x284B706F74;
    v1 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v1);
  }

  else
  {
    v3 = 0;
    MEMORY[0x1AC5A9410](0x6974737561687865, 0xEB00000000286576);
    sub_1ABF24374();
  }

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  return v3;
}

uint64_t VectorSearchEngine.init(db:table:vectorColumnName:keyColumnName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>)
{
  v9 = 0x6E69646465626D65;
  if (a6)
  {
    v9 = a5;
  }

  *a9 = a3;
  a9[1] = a4;
  v10 = 0xE900000000000067;
  if (a6)
  {
    v10 = a6;
  }

  v11 = 0x6469776F72;
  a9[2] = result;
  a9[3] = a2;
  if (a8)
  {
    v11 = a7;
  }

  a9[4] = v9;
  a9[5] = v10;
  if (a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  a9[6] = v11;
  a9[7] = v12;
  return result;
}

void VectorSearchEngine.search(for:using:in:filterClause:joinColumnName:)()
{
  sub_1ABA81AB4();
  v2 = v1;
  v3 = v0[1];
  v34[0] = *v0;
  v34[1] = v3;
  v4 = v0[3];
  v6 = *v0;
  v5 = v0[1];
  v34[2] = v0[2];
  v34[3] = v4;
  v8 = *v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v33[0] = v6;
  v33[1] = v5;
  v12 = v0[3];
  v33[2] = v0[2];
  v33[3] = v12;
  v30 = sub_1ABEB89C4(v13, v14, v15, v16);
  v18 = v17;
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  v19 = sub_1ABF237F4();
  sub_1ABA7AA24(v19, qword_1ED871B20);

  v20 = sub_1ABF237D4();
  v21 = sub_1ABF24684();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v8;
    v24 = v10;
    v25 = swift_slowAlloc();
    *&v33[0] = v25;
    *v22 = 136315138;
    *(v22 + 4) = sub_1ABADD6D8(v30, v18, v33);
    _os_log_impl(&dword_1ABA78000, v20, v21, "ECR VectorSearch: search command: %s", v22, 0xCu);
    sub_1ABA84B54(v25);
    v26 = v25;
    v10 = v24;
    v8 = v23;
    MEMORY[0x1AC5AB8B0](v26, -1, -1);
    v27 = v22;
    v2 = v1;
    MEMORY[0x1AC5AB8B0](v27, -1, -1);
  }

  if (v11)
  {
    sub_1ABAD219C(&qword_1EB4DC5C8, &qword_1ABF76C28);
    swift_allocObject();
    sub_1ABEB747C(v10, v8);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DC5D0, &qword_1ABF76C30);
    swift_allocObject();
    sub_1ABEB7410(v8, *&v10);
  }

  v32 = MEMORY[0x1E69E7CC0];
  v31 = sub_1ABF239C4();
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABF22464();
  if (v2)
  {
  }

  else
  {

    v29 = v32;
    sub_1ABEB9E70(v34, v33);
    sub_1ABEB6C04(v29, v34, &v31);
  }

  sub_1ABA8CD68();
}

uint64_t sub_1ABEB89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v21 = *v4;
  v6 = v4[4];
  v7 = v4[5];
  v9 = v4[6];
  v8 = v4[7];
  if (a2 && a4)
  {
    v14 = v9 == 0x6469776F72 && v8 == 0xE500000000000000;
    if (v14 || (sub_1ABF25054() & 1) != 0)
    {
      v15 = v9 == a3 && v8 == a4;
      if (v15 || (sub_1ABF25054() & 1) != 0)
      {
        MEMORY[0x1AC5A9410](v9, v8);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        v16 = v6;
        v17 = v7;
      }

      else
      {
        MEMORY[0x1AC5A9410](v9, v8);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v6, v7);
        MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
        v16 = a3;
        v17 = a4;
      }

      MEMORY[0x1AC5A9410](v16, v17);
      v22 = 0;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF956A0);
      MEMORY[0x1AC5A9410](a1, a2);
      MEMORY[0x1AC5A9410](0xD000000000000022, 0x80000001ABF95700);
      MEMORY[0x1AC5A9410](32, 0xE100000000000000);

      MEMORY[0x1AC5A9410](0x4F5246202020200ALL, 0xEA0000000000204DLL);
      MEMORY[0x1AC5A9410](v21, v5);
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF95730);
      MEMORY[0x1AC5A9410](v9, v8);
      MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF95750);
      MEMORY[0x1AC5A9410](v6, v7);
      MEMORY[0x1AC5A9410](0xD000000000000042, 0x80000001ABF95770);
      MEMORY[0x1AC5A9410](a3, a4);
      MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF956E0);
      v18 = a3;
    }

    else
    {
      v22 = 0;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF956A0);
      MEMORY[0x1AC5A9410](a1, a2);
      MEMORY[0x1AC5A9410](0x5443454C45530A29, 0xE900000000000020);
      MEMORY[0x1AC5A9410](v21, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v9, v8);
      MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
      MEMORY[0x1AC5A9410](v21, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](v6, v7);
      MEMORY[0x1AC5A9410](0x204D4F52460ALL, 0xE600000000000000);
      MEMORY[0x1AC5A9410](v21, v5);
      MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF956C0);
      MEMORY[0x1AC5A9410](v21, v5);
      MEMORY[0x1AC5A9410](46, 0xE100000000000000);
      MEMORY[0x1AC5A9410](a3, a4);
      MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF956E0);
      v18 = a3;
    }

    v19 = a4;
  }

  else
  {
    sub_1ABF24AB4();

    v22 = 0x205443454C4553;
    MEMORY[0x1AC5A9410](v9, v8);
    MEMORY[0x1AC5A9410](8236, 0xE200000000000000);
    MEMORY[0x1AC5A9410](v6, v7);
    MEMORY[0x1AC5A9410](0x204D4F524620, 0xE600000000000000);
    v18 = v21;
    v19 = v5;
  }

  MEMORY[0x1AC5A9410](v18, v19);
  MEMORY[0x1AC5A9410](59, 0xE100000000000000);
  return v22;
}

uint64_t sub_1ABEB8EC4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t *a9)
{
  v77 = a8;
  v86 = a4;
  v76 = a9;
  v91[1] = *MEMORY[0x1E69E9840];
  v85 = sub_1ABF22854();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v83 = &v75 - v18;
  v19 = sub_1ABF220F4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v82 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91[0] = 0;

  v79 = a1;
  v84 = a2;
  v87 = a3;
  sub_1ABEB6D9C(a2, a3, a1, a2, a3, v91);
  v78 = v9;
  v21 = v91[0];
  while (1)
  {
    v22 = sqlite3_step(v21);
    if (v22 != 100)
    {
      break;
    }

    v23 = sub_1ABF251E4();
    v24 = sqlite3_column_bytes(v21, 1);
    v25 = v21;
    if (!sqlite3_column_blob(v21, 1))
    {
      *&v89[0] = 0;
      *(&v89[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v89[0] = 0xD00000000000001DLL;
      *(&v89[0] + 1) = 0x80000001ABF95640;
      v57 = v86[4];
      v58 = v86[5];
      goto LABEL_32;
    }

    v26 = v24 / 4;
    v27 = *(a5 + 16);
    if (v27 != v26)
    {
      *&v89[0] = 0;
      *(&v89[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v89[0] = 0xD00000000000001BLL;
      *(&v89[0] + 1) = 0x80000001ABF95660;
      v88 = v27;
      v59 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v59);

      MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF95680);
      v88 = v26;
      v60 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v60);

      v57 = 41;
      v58 = 0xE100000000000000;
LABEL_32:
      MEMORY[0x1AC5A9410](v57, v58);
      v62 = *(&v89[0] + 1);
      v61 = *&v89[0];
      sub_1ABEBA760();
      swift_allocError();
      *v63 = v61;
      *(v63 + 8) = v62;
      *(v63 + 16) = 1;
      swift_willThrow();
      v21 = v25;
      return sqlite3_finalize(v21);
    }

    cblas_sdot_NEWLAPACK();
    v29 = v28;
    if (a6)
    {
      v21 = v25;
      if (a6 == 1)
      {
        cblas_sdot_NEWLAPACK();
        v31 = v30;
        cblas_sdot_NEWLAPACK();
        v29 = sqrtf((v31 + v32) - (v29 + v29));
      }
    }

    else
    {
      cblas_snrm2_NEWLAPACK();
      v34 = v33;
      cblas_snrm2_NEWLAPACK();
      v29 = v29 / ((v34 * v35) + 0.00000011921);
      v21 = v25;
    }

    *&v89[0] = v23;
    (*(*a7 + 104))(v89, v29);
  }

  if (v22 != 101)
  {
    sub_1ABF220D4();
    sub_1ABA7B9B4(v83, 1, 1, v85);
    sub_1ABF22384();
    sub_1ABEBA6B4(&qword_1EB4DB310, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
    swift_allocError();

    sub_1ABF22344();
    swift_willThrow();
    return sqlite3_finalize(v21);
  }

  v84 = v21;
  v36 = (*(*a7 + 96))();
  v37 = sub_1ABF239C4();
  v87 = *(v36 + 16);
  if (!v87)
  {
LABEL_23:
    *v77 = v37;

    v51 = *(v36 + 16);
    if (v51)
    {
      *&v89[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADE24C(0, v51, 0);
      v52 = *&v89[0];
      v53 = *(*&v89[0] + 16);
      v54 = 32;
      do
      {
        v55 = *(v36 + v54);
        *&v89[0] = v52;
        v56 = *(v52 + 24);
        if (v53 >= v56 >> 1)
        {
          sub_1ABADE24C(v56 > 1, v53 + 1, 1);
          v52 = *&v89[0];
        }

        *(v52 + 16) = v53 + 1;
        *(v52 + 8 * v53 + 32) = v55;
        v54 += 16;
        ++v53;
        --v51;
      }

      while (v51);
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
    }

    v64 = sub_1ABF22934();
    v66 = v65;
    v67 = v86[6];
    v68 = v86[7];
    v69 = v67 == 0x6469776F72 && v68 == 0xE500000000000000;
    v21 = v84;
    if (v69 || (sub_1ABF25054() & 1) != 0)
    {
      *&v89[0] = 0;
      *(&v89[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      *&v89[0] = 0xD000000000000015;
      *(&v89[0] + 1) = 0x80000001ABF95620;
    }

    else
    {
      *&v89[0] = 0;
      *(&v89[0] + 1) = 0xE000000000000000;
      sub_1ABF24AB4();

      strcpy(v89, "SELECT * FROM ");
      HIBYTE(v89[0]) = -18;
    }

    MEMORY[0x1AC5A9410](*v86, v86[1]);
    MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
    MEMORY[0x1AC5A9410](v67, v68);
    MEMORY[0x1AC5A9410](0x28206E6920, 0xE500000000000000);
    MEMORY[0x1AC5A9410](v64, v66);

    MEMORY[0x1AC5A9410](15145, 0xE200000000000000);
    sub_1ABF22BB4();
    *&v89[0] = v52;
    sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
    sub_1ABEBA6FC();
    v70 = v80;
    sub_1ABF22864();
    v90 = 0;
    memset(v89, 0, sizeof(v89));
    v71 = v78;
    v72 = sub_1ABF22B84();
    if (v71)
    {

      sub_1ABA925A4(v89, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      (*(v81 + 8))(v70, v85);
    }

    else
    {
      v73 = v72;

      sub_1ABA925A4(v89, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      (*(v81 + 8))(v70, v85);
      *v76 = v73;
    }

    return sqlite3_finalize(v21);
  }

  v38 = 0;
  v39 = (v36 + 40);
  while (1)
  {
    if (v38 >= *(v36 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    v40 = *(v39 - 1);
    v41 = *v39;
    swift_isUniquelyReferenced_nonNull_native();
    *&v89[0] = v37;
    v42 = sub_1ABAFF5A4(v40);
    if (__OFADD__(v37[2], (v43 & 1) == 0))
    {
      goto LABEL_46;
    }

    v44 = v42;
    v45 = v43;
    sub_1ABAD219C(&qword_1EB4DC600, qword_1ABF772B8);
    if ((sub_1ABF24C64() & 1) == 0)
    {
      goto LABEL_18;
    }

    v46 = sub_1ABAFF5A4(v40);
    if ((v45 & 1) != (v47 & 1))
    {
      break;
    }

    v44 = v46;
LABEL_18:
    v37 = *&v89[0];
    if (v45)
    {
      *(*(*&v89[0] + 56) + 4 * v44) = v41;
    }

    else
    {
      *(*&v89[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
      *(v37[6] + 8 * v44) = v40;
      *(v37[7] + 4 * v44) = v41;
      v48 = v37[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_47;
      }

      v37[2] = v50;
    }

    ++v38;
    v39 += 4;
    if (v87 == v38)
    {
      goto LABEL_23;
    }
  }

  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEB98C0@<X0>(const char *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, sqlite3_stmt **a4@<X4>, _DWORD *a5@<X8>)
{
  v10 = sub_1ABF22E54();
  if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = sub_1ABF23DF4();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    v11 = v13;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v11 = HIBYTE(a3) & 0xF;
      goto LABEL_7;
    }

    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = sqlite3_prepare_v2(v10, a1, v11, a4, 0);
  *a5 = result;
  return result;
}

uint64_t sub_1ABEB9978@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v58 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - v11;
  sub_1ABB33688();
  if (v2)
  {
    goto LABEL_24;
  }

  v13 = sub_1ABAD5BC8(v12, *a1);
  if ((v13 & 0x100000000) != 0)
  {
    result = 0;
    LODWORD(v14) = 0;
LABEL_19:
    *a2 = result;
    *(a2 + 8) = v14;
    return result;
  }

  v14 = v13;

  v16 = sub_1ABEB6F7C(v15);
  sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  v17 = sub_1ABF239C4();
  v65 = *(v16 + 16);
  if (!v65)
  {

LABEL_18:
    sub_1ABF22BB4();
    result = sub_1ABF22BD4();
    goto LABEL_19;
  }

  v58 = v14;
  v59 = 0;
  v60 = a2;
  v61 = v16;
  v18 = 0;
  v19 = *(v67 + 80);
  v63 = v5;
  v64 = v16 + ((v19 + 32) & ~v19);
  v62 = v9;
  while (v18 < *(v16 + 16))
  {
    v20 = *(v67 + 72);
    v68 = v18;
    v21 = v64 + v20 * v18;
    v22 = v69;
    sub_1ABAAB860(v21, v69);
    sub_1ABAAB860(v22, v9);
    v24 = *v9;
    v23 = v9[1];
    v25 = v66;
    sub_1ABAAB860(v22, v66);

    v26 = *(v5 + 48);
    v27 = sub_1ABF223D4();
    *(&v74 + 1) = v27;
    v75 = MEMORY[0x1E699FE38];
    v28 = sub_1ABA93DC0(&v73);
    v29 = *(v27 - 8);
    (*(v29 + 32))(v28, v25 + v26, v27);
    v70 = v73;
    v71 = v74;
    v72 = v75;
    swift_isUniquelyReferenced_nonNull_native();
    v76 = v17;
    v30 = v24;
    v37 = sub_1ABA94FC8(v24, v23, v31, v32, v33, v34, v35, v36, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    if (__OFADD__(v17[2], (v38 & 1) == 0))
    {
      goto LABEL_21;
    }

    v39 = v37;
    v40 = v38;
    sub_1ABAD219C(&qword_1EB4DC5F8, &qword_1ABF772B0);
    if (sub_1ABF24C64())
    {
      v47 = sub_1ABA94FC8(v24, v23, v41, v42, v43, v44, v45, v46, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
      v9 = v62;
      v49 = v63;
      if ((v40 & 1) != (v48 & 1))
      {
        goto LABEL_23;
      }

      v39 = v47;
      if (v40)
      {
LABEL_13:

        v17 = v76;
        sub_1ABEBA5D4(&v70, v76[7] + 40 * v39);
        sub_1ABA925A4(v69, &qword_1EB4D1200, &unk_1ABF4B4D0);
        goto LABEL_14;
      }
    }

    else
    {
      v9 = v62;
      v49 = v63;
      if (v40)
      {
        goto LABEL_13;
      }
    }

    v17 = v76;
    v76[(v39 >> 6) + 8] |= 1 << v39;
    v50 = (v17[6] + 16 * v39);
    *v50 = v30;
    v50[1] = v23;
    v51 = v17[7] + 40 * v39;
    v52 = v72;
    v53 = v71;
    *v51 = v70;
    *(v51 + 16) = v53;
    *(v51 + 32) = v52;
    sub_1ABA925A4(v69, &qword_1EB4D1200, &unk_1ABF4B4D0);
    v54 = v17[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_22;
    }

    v17[2] = v56;
LABEL_14:
    v18 = v68 + 1;
    v5 = v49;
    (*(v29 + 8))(v9 + *(v49 + 48), v27);
    v16 = v61;
    if (v65 == v18)
    {

      a2 = v60;
      LODWORD(v14) = v58;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1ABF25104();
  __break(1u);
LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_1ABEB9EAC()
{
  result = qword_1EB4DC5D8;
  if (!qword_1EB4DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VectorSearchSimilarityMetric(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SearchMode(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for SearchMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABEBA18C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABEBA23C()
{
  result = qword_1EB4DC5E0;
  if (!qword_1EB4DC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5E0);
  }

  return result;
}

unint64_t sub_1ABEBA294()
{
  result = qword_1EB4DC5E8;
  if (!qword_1EB4DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5E8);
  }

  return result;
}

unint64_t sub_1ABEBA2EC()
{
  result = qword_1EB4DC5F0;
  if (!qword_1EB4DC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC5F0);
  }

  return result;
}

unint64_t sub_1ABEBA344()
{
  result = qword_1ED871800;
  if (!qword_1ED871800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871800);
  }

  return result;
}

unint64_t sub_1ABEBA39C()
{
  result = qword_1ED871808;
  if (!qword_1ED871808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871808);
  }

  return result;
}

unint64_t sub_1ABEBA3F4()
{
  result = qword_1ED871818;
  if (!qword_1ED871818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871818);
  }

  return result;
}

unint64_t sub_1ABEBA44C()
{
  result = qword_1ED871820;
  if (!qword_1ED871820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871820);
  }

  return result;
}

unint64_t sub_1ABEBA4A4()
{
  result = qword_1ED871828;
  if (!qword_1ED871828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871828);
  }

  return result;
}

unint64_t sub_1ABEBA4FC()
{
  result = qword_1ED871830;
  if (!qword_1ED871830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED871830);
  }

  return result;
}

unint64_t sub_1ABEBA550()
{
  result = qword_1ED868A38[0];
  if (!qword_1ED868A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED868A38);
  }

  return result;
}

uint64_t sub_1ABEBA5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEBA644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEBA6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1ABEBA6FC()
{
  result = qword_1EB4DC608;
  if (!qword_1EB4DC608)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC608);
  }

  return result;
}

unint64_t sub_1ABEBA760()
{
  result = qword_1EB4DC610;
  if (!qword_1EB4DC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC610);
  }

  return result;
}

uint64_t sub_1ABEBA824()
{
  sub_1ABA93E20((v0 + 16), *(v0 + 40));
  v1 = sub_1ABA7FB54();
  return v2(v1);
}

id sub_1ABEBA878(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = *(v3 + qword_1EB4DC3E8);
  os_unfair_lock_lock((v7 + 24));
  v8 = sub_1ABEBA8FC((v7 + 16), a1, a2, a3);
  os_unfair_lock_unlock((v7 + 24));
  return v8;
}

id sub_1ABEBA8FC(id *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = *a1;
  v9 = [*a1 objectForKey_];
  if (v9)
  {
    return v9;
  }

  v10 = a4;
  v11 = a3(a2);
  if (!v4)
  {
    v10 = v11;
    [v8 setObject:v11 forKey:a2];
  }

  return v10;
}

uint64_t sub_1ABEBA9A8()
{
  sub_1ABA93E20((v0 + 56), *(v0 + 80));
  v1 = sub_1ABA7FB54();
  return v2(v1);
}

uint64_t sub_1ABEBA9FC()
{
  sub_1ABA7C84C();
  v4 = v0[15];
  v5 = v0[16];
  sub_1ABA93E20(v0 + 12, v4);
  return (*(v5 + 8))(v3, v2, v1, v4, v5);
}

void *sub_1ABEBAA74()
{
  sub_1ABA84B54(v0 + 2);
  sub_1ABA84B54(v0 + 7);
  sub_1ABA84B54(v0 + 12);
  return v0;
}

uint64_t sub_1ABEBAAA4()
{
  sub_1ABEBAA74();

  return swift_deallocClassInstance();
}

id sub_1ABEBAB68(void *a1)
{
  v2 = *(v1 + 16);
  result = [a1 viewArtifactURL];
  if (result)
  {
    v4 = result;
    v5 = *(v2 + qword_1EB4DC3E8);
    os_unfair_lock_lock((v5 + 24));
    v6 = sub_1ABEB44C4((v5 + 16), v4);
    os_unfair_lock_unlock((v5 + 24));

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABEBABF8(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1ABEBB724(a1);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v10[0] = 0;
    v5 = objc_allocWithZone(MEMORY[0x1E69C5D88]);
    if (sub_1ABEBB6A4(v3, v4, 3473409, v10, 0))
    {
      return;
    }

    v6 = v10[0];
    if (!v10[0])
    {
      sub_1ABEBB788();
      swift_allocError();
      *v7 = 1;
    }

    v8 = v6;
  }

  else
  {
    sub_1ABEBB788();
    swift_allocError();
    v8 = 0;
    *v9 = 0;
  }

  swift_willThrow();
}

id sub_1ABEBAD3C(void *a1)
{
  v4 = *(v1 + 16);
  result = [a1 viewArtifactURL];
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();
    v7 = sub_1ABEB4398(v6, v4, a1);

    if (v2)
    {
      return MEMORY[0x1E699FE28];
    }

    else
    {
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABEBADD4(uint64_t a1, void *a2)
{
  v3 = sub_1ABF238C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1ABA7BC58();
  v50 = v5 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4DC620, &qword_1ABF77440);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v43 - v7;
  v9 = sub_1ABF23884();
  sub_1ABA7BD7C();
  v46 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  sub_1ABA93A94();
  MEMORY[0x1EEE9AC00](v12);
  v44 = v43 - v13;
  v43[0] = sub_1ABF22ED4();
  sub_1ABA7BD7C();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = (v18 - v17);
  sub_1ABF22334();
  sub_1ABA7BD7C();
  v48 = v21;
  v49 = v20;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7AC18();
  v45 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v43 - v25;
  v27 = sub_1ABF21CF4();
  sub_1ABA7BD7C();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7BC58();
  v33 = v32 - v31;
  v34 = [a2 viewArtifactURL];
  sub_1ABF21CA4();

  v35 = sub_1ABF21CC4();
  v43[1] = v36;
  v43[2] = v35;
  (*(v29 + 8))(v33, v27);
  sub_1ABF22324();
  sub_1ABF222E4();
  sub_1ABF22314();
  *v19 = 0x4059000000000000;
  (*(v15 + 104))(v19, *MEMORY[0x1E69A00D8], v43[0]);
  sub_1ABF22304();
  qos_class_self();
  sub_1ABF23874();
  if (sub_1ABA7E1E0(v8, 1, v9) == 1)
  {
    v37 = v46;
    v38 = v44;
    (*(v46 + 104))(v44, *MEMORY[0x1E69E7F80], v9);
    if (sub_1ABA7E1E0(v8, 1, v9) != 1)
    {
      sub_1ABEBB7DC(v8);
    }
  }

  else
  {
    v37 = v46;
    v38 = v44;
    (*(v46 + 32))(v44, v8, v9);
  }

  (*(v37 + 16))(v47, v38, v9);
  sub_1ABF238B4();
  sub_1ABF222F4();
  v40 = v48;
  v39 = v49;
  (*(v48 + 16))(v45, v26, v49);
  sub_1ABF223B4();
  swift_allocObject();
  v41 = sub_1ABF22394();
  (*(v37 + 8))(v38, v9);
  (*(v40 + 8))(v26, v39);
  return v41;
}

uint64_t sub_1ABEBB2A8()
{
  type metadata accessor for UnicodeWrapperTokenizer();
  sub_1ABEBB844();
  return sub_1ABF22DE4();
}

id sub_1ABEBB31C()
{
  sub_1ABA7C84C();
  v3 = sub_1ABF21C54();
  v7 = v1;
  v8 = v0;
  v9 = v2;
  v4 = sub_1ABEBA878(v3, sub_1ABEBB89C, &v6);

  return v4;
}

char *sub_1ABEBB3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v6 = sub_1ABF21CF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = sub_1ABF23074();
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = a2 == 0xD000000000000016 && 0x80000001ABF958F0 == a3;
  if (v22 || (sub_1ABF25054() & 1) != 0)
  {
    (*(v7 + 16))(v12, v31, v6);
    v23 = v32;
    sub_1ABF23064();
    if (v23)
    {
      return v12;
    }

    v15 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, v31, v6);
    v24 = v32;
    sub_1ABF23064();
    if (v24)
    {
      return v12;
    }
  }

  v26 = v29;
  v25 = v30;
  (*(v29 + 16))(v18, v15, v30);
  sub_1ABF23044();
  swift_allocObject();
  v12 = sub_1ABF22FF4();
  (*(v26 + 8))(v15, v25);
  return v12;
}

id sub_1ABEBB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF23BD4();

  v10 = [v5 initWithFilename:v9 flags:a3 error:a4 errorHandler:a5];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1ABEBB724(void *a1)
{
  v1 = [a1 path];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1ABF23C04();

  return v3;
}

unint64_t sub_1ABEBB788()
{
  result = qword_1EB4DC618;
  if (!qword_1EB4DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC618);
  }

  return result;
}

uint64_t sub_1ABEBB7DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC620, &qword_1ABF77440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABEBB844()
{
  result = qword_1ED871EB8[0];
  if (!qword_1ED871EB8[0])
  {
    type metadata accessor for UnicodeWrapperTokenizer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED871EB8);
  }

  return result;
}

uint64_t *sub_1ABEBB8BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v62 = a8;
  v56 = a6;
  v57 = a4;
  v58 = a3;
  v55 = a2;
  sub_1ABA7BD7C();
  v13 = v12;
  v60 = a10;
  v61 = a9;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  sub_1ABA93A94();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v53 = &v51 - v16;
  sub_1ABA7BD7C();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7AC18();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  sub_1ABA7BD7C();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7AC18();
  v32 = v30 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v51 - v35;
  v37 = *(v28 + 32);
  v52 = v38;
  v37(&v51 - v35, v34);
  v54 = v19;
  (*(v19 + 32))(v26, v55, a7);
  v39 = v17;
  v40 = v56;
  (*(v13 + 32))(v39, v58, v56);
  v58 = swift_allocObject();
  (*(v28 + 16))(v32, v36, a5);
  (*(v19 + 16))(v23, v26, a7);
  v41 = v13;
  v42 = *(v13 + 16);
  v43 = v59;
  v44 = v53;
  v42(v59, v53, v40);
  v45 = v32;
  v46 = v43;
  v47 = v52;
  v48 = v40;
  v49 = sub_1ABEBBC10(v45, v23, v46, v58, v52, v40, a7, v62, v61, v60);
  (*(v41 + 8))(v44, v48);
  (*(v54 + 8))(v26, a7);
  (*(v28 + 8))(v36, v47);
  return v49;
}

uint64_t *sub_1ABEBBC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a4[10] = a5;
  a4[11] = a8;
  v17 = sub_1ABA93DC0(a4 + 7);
  (*(*(a5 - 8) + 32))(v17, a1, a5);
  a4[5] = a7;
  a4[6] = a10;
  v18 = sub_1ABA93DC0(a4 + 2);
  (*(*(a7 - 8) + 32))(v18, a2, a7);
  a4[15] = a6;
  a4[16] = a9;
  v19 = sub_1ABA93DC0(a4 + 12);
  (*(*(a6 - 8) + 32))(v19, a3, a6);
  return a4;
}

_BYTE *storeEnumTagSinglePayload for ViewDatabaseInstances.CacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABEBBE04()
{
  result = qword_1EB4DC628;
  if (!qword_1EB4DC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC628);
  }

  return result;
}

void *ViewService.subgraphView(name:tableName:batchSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v10 = *(v5 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v11 = sub_1ABF23BD4();
  v27[0] = 0;
  v12 = [v10 requestAssertionForViewName:v11 error:v27];

  v13 = v27[0];
  if (v12)
  {
    v25 = a3;
    v26 = a5;
    v14 = *(v5 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v16 = v14[5];
    v15 = v14[6];
    v5 = sub_1ABA93E20(v14 + 2, v16);
    v17 = *(v15 + 8);
    v18 = v13;
    v19 = v17(v12, v16, v15);
    if (v6)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v19;
      v23 = v20;
      type metadata accessor for SubgraphView();
      swift_allocObject();
      v5 = SubgraphView.init(accessAssertion:database:tableName:batchSize:)(v12, v22, v23, v25, a4, v26);
    }
  }

  else
  {
    v21 = v27[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v5;
}

char *ViewService.addressContactResolverEmbeddingView()()
{
  v2 = v1;
  v15[1] = *MEMORY[0x1E69E9840];
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7C918();
  v4 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v15[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v15];

  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v8 = v15[0];
    v9 = [v6 viewArtifactURL];
    sub_1ABF21CA4();

    v2 = "Provider";
    sub_1ABA93E20((v7 + 96), *(v7 + 120));
    sub_1ABAA3E98();
    v10();
    if (!v1)
    {
      sub_1ABA99800();
    }

    swift_unknownObjectRelease();
    v11 = sub_1ABA94DE8();
    v12(v11);
  }

  else
  {
    v13 = v15[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v2;
}

char *ViewService.knosisEntitySubgraphService()()
{
  result = sub_1ABD97210(v2);
  if (!v0)
  {
    return sub_1ABD92724(v2);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.reportSQLiteError(for:sqliteErrorCode:)(Swift::String a1, Swift::Int64 sqliteErrorCode)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR___GDSwiftViewService_errorReporter);
  if (v3)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_unknownObjectRetain();
    sub_1ABF23BD4();
    sub_1ABA97E70();
    v6 = [v3 reportSQLiteError:countAndFlagsBits sqliteErrorCode:sqliteErrorCode error:v15];

    if (v6)
    {
      v7 = v15[0];
    }

    else
    {
      v14 = v15[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C(&qword_1ED870750);
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED870758);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24664();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_1ABAA3060(&dword_1ABA78000, v12, v13, "ViewService: reportSQLiteError not supported");
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }
  }
}

uint64_t static ViewService.clientService(useCase:)(uint64_t a1)
{
  if (qword_1ED872150 != -1)
  {
    a1 = sub_1ABA81D90(&qword_1ED872150);
  }

  v1 = *(qword_1ED8721E0 + OBJC_IVAR____TtC20IntelligencePlatform22ViewServiceUserManager_lockedServices);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1ABEBEA40((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id ViewService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewService.init()()
{
  ObjectType = swift_getObjectType();
  v2 = static ViewService.clientService.getter(ObjectType);
  *&v0[OBJC_IVAR___GDSwiftViewService_accessRequester] = *&v2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  *&v0[OBJC_IVAR___GDSwiftViewService_errorReporter] = *&v2[OBJC_IVAR___GDSwiftViewService_errorReporter];
  *&v0[OBJC_IVAR___GDSwiftViewService_databaseCache] = *&v2[OBJC_IVAR___GDSwiftViewService_databaseCache];
  v3 = *&v2[OBJC_IVAR___GDSwiftViewService_useCase];
  swift_unknownObjectRetain();

  v4 = v3;
  swift_unknownObjectRetain();

  *&v0[OBJC_IVAR___GDSwiftViewService_useCase] = v4;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *ViewService.__allocating_init(accessRequester:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  sub_1ABA7D1BC();
  return ViewService.init(accessRequester:)();
}

char *ViewService.init(accessRequester:)()
{
  sub_1ABA9EFD8();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GDSwiftViewService_accessRequester] = v0;
  *&v1[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  v3 = type metadata accessor for ViewDatabasePasProvider();
  v4 = sub_1ABAA4768(v3);
  v5 = objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC660, &qword_1ABF77500));
  swift_unknownObjectRetain();
  *(v4 + 16) = [v5 init];
  v6 = type metadata accessor for ViewDatabaseGRDBProvider();
  v7 = sub_1ABAA4768(v6);
  *(v7 + 16) = [objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC668 &qword_1ABF77508))];
  v8 = type metadata accessor for VectorDatabaseClientProvider();
  v9 = sub_1ABAA4768(v8);
  *(v9 + 16) = [objc_allocWithZone(sub_1ABAD219C(&unk_1EB4DC670 &qword_1ABF77510))];
  type metadata accessor for ViewDatabaseInstances();
  v10 = swift_allocObject();
  v10[10] = v3;
  v10[11] = &off_1F2081468;
  v10[7] = v4;
  v10[5] = v6;
  v10[6] = &off_1F20804C0;
  v10[2] = v7;
  v10[15] = v8;
  v10[16] = &off_1F20A1618;
  v10[12] = v9;
  *&v1[OBJC_IVAR___GDSwiftViewService_databaseCache] = v10;
  v11 = *MEMORY[0x1E698E938];
  *&v1[OBJC_IVAR___GDSwiftViewService_useCase] = *MEMORY[0x1E698E938];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = v11;
  objc_msgSendSuper2(&v14, sel_init);
  sub_1ABA7D1BC();
  swift_unknownObjectRelease();
  return sel_init;
}

char *ViewService.__allocating_init(viewAccessRequester:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  sub_1ABA7D1BC();
  return ViewService.init(viewAccessRequester:)();
}

char *ViewService.init(viewAccessRequester:)()
{
  sub_1ABA9EFD8();
  ObjectType = swift_getObjectType();
  v3 = static ViewService.clientService.getter(ObjectType);
  v4 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  if (v0)
  {
    v5 = v0;
  }

  else
  {
    v5 = swift_unknownObjectRetain();
  }

  *&v1[v4] = v5;
  *&v1[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  *&v1[OBJC_IVAR___GDSwiftViewService_databaseCache] = *&v3[OBJC_IVAR___GDSwiftViewService_databaseCache];
  v6 = *&v3[OBJC_IVAR___GDSwiftViewService_useCase];
  swift_unknownObjectRetain();

  v7 = v6;

  *&v1[OBJC_IVAR___GDSwiftViewService_useCase] = v7;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_init);
  sub_1ABA7D1BC();
  swift_unknownObjectRelease();
  return v1;
}

id ViewService.init(accessRequester:grdbDatabaseProvider:)(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___GDSwiftViewService_accessRequester] = a1;
  *&v3[OBJC_IVAR___GDSwiftViewService_errorReporter] = 0;
  v21 = type metadata accessor for ViewDatabaseInstances();
  v6 = type metadata accessor for ViewDatabasePasProvider();
  v7 = sub_1ABAA4768(v6);
  v8 = objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC660, &qword_1ABF77500));
  swift_unknownObjectRetain();
  *(v7 + 16) = [v8 init];
  sub_1ABA93E64(a2, v26);
  v9 = type metadata accessor for VectorDatabaseClientProvider();
  v10 = sub_1ABAA4768(v9);
  v11 = objc_allocWithZone(sub_1ABAD219C(&unk_1EB4DC670, &qword_1ABF77510));

  *(v10 + 16) = [v11 &selRef_requestAssertionForViewName_error_];
  v13 = v27;
  v12 = v28;
  sub_1ABA94E50(v26, v27);
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C918();
  (*(v15 + 16))(&off_1E7963000);
  v24 = v10;
  v25 = v7;
  v16 = sub_1ABEBB8BC(&v25, &off_1E7963000, &v24, v21, v6, v9, v13, &off_1F2081468, &off_1F20A1618, v12);

  sub_1ABA84B54(v26);
  *&v3[OBJC_IVAR___GDSwiftViewService_databaseCache] = v16;
  v17 = *MEMORY[0x1E698E938];
  *&v3[OBJC_IVAR___GDSwiftViewService_useCase] = *MEMORY[0x1E698E938];
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v18 = v17;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  swift_unknownObjectRelease();
  sub_1ABA84B54(a2);
  return v19;
}

BOOL sub_1ABEBCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1ABF23C04();
  v12 = v11;
  if (v10 == sub_1ABF23C04() && v12 == v13)
  {

    if (a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = sub_1ABF25054();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }

    if (a3)
    {
LABEL_7:
      if (a6)
      {
        v17 = a2 == a5 && a3 == a6;
        if (v17 || (sub_1ABF25054() & 1) != 0)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return !a6;
}

uint64_t sub_1ABEBCF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABF23C04();
  sub_1ABF23D34();

  if (!a4)
  {
    return sub_1ABF25254();
  }

  sub_1ABF25254();

  return sub_1ABF23D34();
}

uint64_t sub_1ABEBD024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABF25234();
  sub_1ABEBCF8C(v7, a1, a2, a3);
  return sub_1ABF25294();
}

uint64_t sub_1ABEBD09C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1ABF25234();
  sub_1ABEBCF8C(v6, v2, v3, v4);
  return sub_1ABF25294();
}

uint64_t sub_1ABEBD110()
{

  return v0;
}

uint64_t sub_1ABEBD140()
{
  sub_1ABEBD110();

  return swift_deallocClassInstance();
}

id sub_1ABEBD218(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABEBD4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BF50();
  a21 = v25;
  a22 = v26;
  v28 = v27;
  a10 = *MEMORY[0x1E69E9840];
  v29 = *(v22 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABF23BD4();
  sub_1ABA7E480();
  v30 = [v29 requestAssertionForViewName:v24 error:&a9];

  v31 = a9;
  if (v30)
  {
    v32 = *(v22 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v33 = v32[10];
    v34 = v32[11];
    sub_1ABA93E20(v32 + 7, v33);
    v35 = *(v34 + 8);
    v36 = v31;
    v37 = v35(v30, v33, v34);
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v37;
      v40 = objc_opt_self();
      a9 = 0;
      if (sub_1ABA83D3C(v40, *v28))
      {
        v41 = a9;
      }

      else
      {
        v42 = a9;
        sub_1ABA99800();
        sub_1ABF21BE4();

        swift_willThrow();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v38 = a9;
    sub_1ABF21BE4();

    swift_willThrow();
  }

  sub_1ABA84498();
  sub_1ABA8FEC8();
}

id ViewService.objcLanguageView()()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA8E56C();
  v2 = sub_1ABF23BD4();
  v11[0] = 0;
  v3 = [v1 requestAssertionForViewName:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = type metadata accessor for GDLanguageView();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC20IntelligencePlatform14GDLanguageView_assertion] = v3;
    v10.receiver = v6;
    v10.super_class = v5;
    v7 = v4;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    v9 = v11[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }
}

__objc2_class **ViewService.autonamingView(viewName:)(uint64_t a1, uint64_t a2)
{
  result = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, 0x6870617267627573, 0xE800000000000000, 10);
  if (!v2)
  {
    v4 = result;
    v5 = objc_allocWithZone(type metadata accessor for AutonamingView());
    return AutonamingView.init(subgraph:isForLiveServing:)(v4, 1);
  }

  return result;
}

void *ViewService.gdSwiftSubgraphViewContext(name:tableName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ViewService.subgraphView(name:tableName:batchSize:)(a1, a2, a3, a4, 10);
  if (!v4)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for _GDSwiftSubgraphViewContext());
    return sub_1ABC79E20(v6);
  }

  return result;
}

uint64_t ViewService.entityRelevanceHistoricalFeatureView.getter()
{
  sub_1ABA81628();
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  sub_1ABA7F0D0();
  v4 = sub_1ABF23BD4();
  v10[0] = 0;
  v5 = [v3 requestAssertionForViewName:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
    result = sub_1ABB8F030(v5, v10);
    if (!v2)
    {
      v8 = v10[1];
      *v0 = v10[0];
      *(v0 + 8) = v8;
    }
  }

  else
  {
    v9 = v10[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

char *ViewService.knosisIFContextSubgraphService()()
{
  result = sub_1ABD9735C(v2);
  if (!v0)
  {
    return sub_1ABD92BF8(v2);
  }

  return result;
}

uint64_t ViewService.entityAliasEuclidEmbeddingView()()
{
  v2 = v1;
  v14[1] = *MEMORY[0x1E69E9840];
  sub_1ABF21CF4();
  sub_1ABA7BD7C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7C918();
  v4 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v14[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v14];

  if (v6)
  {
    v2 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v7 = v14[0];
    v8 = [v6 viewArtifactURL];
    sub_1ABF21CA4();

    sub_1ABA93E20((v2 + 96), *(v2 + 120));
    sub_1ABAA3E98();
    v9();
    if (!v1)
    {
      sub_1ABA99800();
    }

    swift_unknownObjectRelease();
    v10 = sub_1ABA94DE8();
    v11(v10);
  }

  else
  {
    v12 = v14[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewService.reportUnknownError(for:)(Swift::String a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + OBJC_IVAR___GDSwiftViewService_errorReporter);
  if (v2)
  {
    swift_unknownObjectRetain();
    v3 = sub_1ABF23BD4();
    v13[0] = 0;
    v4 = [v2 reportUnknownError:v3 error:v13];

    if (v4)
    {
      v5 = v13[0];
    }

    else
    {
      v12 = v13[0];
      sub_1ABF21BE4();

      swift_willThrow();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C(&qword_1ED870750);
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1ED870758);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24664();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      sub_1ABAA3060(&dword_1ABA78000, v10, v11, "ViewService: reportUnknownError not supported");
      MEMORY[0x1AC5AB8B0](v9, -1, -1);
    }
  }
}

id sub_1ABEBE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ViewService();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR___GDSwiftViewService_accessRequester] = a1;
  *&v9[OBJC_IVAR___GDSwiftViewService_errorReporter] = a2;
  *&v9[OBJC_IVAR___GDSwiftViewService_databaseCache] = a3;
  *&v9[OBJC_IVAR___GDSwiftViewService_useCase] = a4;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1ABEBEA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v141 = a3 - 1;
  if (a3 < 1)
  {
    v7 = sub_1ABEC2E2C();
    sub_1ABA7BD00(&type metadata for VOPError, v7);
    *v8 = 0xD00000000000002ALL;
    *(v8 + 8) = 0x80000001ABF95D90;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  v4 = v3;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v6 = sub_1ABF239C4();
  }

  v139 = v6 + 64;
  sub_1ABA7D32C();
  v12 = v11 & v10;
  v138 = (v13 + 63) >> 6;

  v14 = 0;
  v140 = a1;
  v143 = v6;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_74;
        }

        if (v15 >= v138)
        {
          break;
        }

        v12 = *(v139 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          goto LABEL_12;
        }
      }

      if (!*(a1 + 40))
      {
        return result;
      }

      sub_1ABEBEA58(v134, a2, v141);
    }

LABEL_12:
    sub_1ABAA3378();
    sub_1ABA94DF8();
    swift_beginAccess();
    v16 = *(a1 + 32);
    if (!v16)
    {
      goto LABEL_79;
    }

    v17 = *(v16 + 16);

    if (!v17)
    {
      break;
    }

    v18 = sub_1ABA904F8();
    v26 = sub_1ABA94FC8(v18, v19, v20, v21, v22, v23, v24, v25, v135, v136, v138, v139, v140, v141, v142, v143, v144, v146);
    if ((v27 & 1) == 0)
    {
      break;
    }

    v12 &= v12 - 1;
    v28 = *(*(v16 + 56) + 8 * v26);
    swift_endAccess();
    sub_1ABA7EF0C();
    swift_beginAccess();
    v29 = *(v28 + 16);
    v148 = v28;
    if (v29[2])
    {
      v146 = v4;
      v31 = v29[4];
      v30 = v29[5];

      v144 = v30;
      v32 = sub_1ABEC2DAC(v31, v30);
      if (*(a2 + 16))
      {
        v40 = sub_1ABA94FC8(v32, v33, v34, v35, v36, v37, v38, v39, v135, v136, v138, v139, v140, v141, v142, v143, v30, v4);
        v42 = v41;

        if (v42)
        {
          v43 = *(*(a2 + 56) + 8 * v40);
        }

        else
        {
          v43 = 0;
        }

        a1 = v140;
      }

      else
      {

        v43 = 0;
      }

      sub_1ABAA276C();
      if ((sub_1ABF23E64() & 1) == 0)
      {

        v4 = v146;
        v28 = v148;
        goto LABEL_46;
      }

      v28 = v148;
      if (!v43)
      {
        goto LABEL_45;
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v148 + 24))
      {
        sub_1ABAA3378();
        sub_1ABA94DF8();
        swift_beginAccess();
        v58 = *(a1 + 32);
        if (!v58)
        {
          goto LABEL_81;
        }

        if (!*(v58 + 16))
        {
          goto LABEL_80;
        }

        v59 = sub_1ABA904F8();
        v67 = sub_1ABA94FC8(v59, v60, v61, v62, v63, v64, v65, v66, v135, v136, v138, v139, v140, v141, v142, v143, v144, v146);
        if ((v68 & 1) == 0)
        {
          goto LABEL_80;
        }

        v69 = *(*(v58 + 56) + 8 * v67);
        swift_endAccess();

        sub_1ABA7EF0C();
        swift_beginAccess();
        v70 = *(v43 + 16);

        swift_beginAccess();
        *(v69 + 16) = v70;

LABEL_45:

        v4 = v146;
LABEL_46:
        sub_1ABA7EF0C();
        swift_beginAccess();
        v98 = *(v28 + 24);
        if (!v98)
        {

          goto LABEL_62;
        }

        sub_1ABEBEA58(v98, a2, v141);

        if (v4)
        {
        }
      }

      else
      {

        v137 = sub_1ABE73EEC();

        v99 = sub_1ABAA3378();
        sub_1ABA7C32C(v99, v100);
        if (!*(a1 + 32))
        {
          goto LABEL_83;
        }

        LODWORD(v135) = swift_isUniquelyReferenced_nonNull_native();
        sub_1ABAA2AEC();
        *(a1 + 32) = v101;
        v102 = sub_1ABA904F8();
        sub_1ABA94FC8(v102, v103, v104, v105, v106, v107, v108, v109, v135, v137, v138, v139, v140, v141, v142, v143, v144, v146);
        HIDWORD(v135) = v110;
        sub_1ABA7AD10();
        if (__OFADD__(v112, v113))
        {
          goto LABEL_75;
        }

        v114 = v111;
        sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
        sub_1ABA844A4();
        if (sub_1ABF24C64())
        {
          v115 = sub_1ABA904F8();
          sub_1ABA94FC8(v115, v116, v117, v118, v119, v120, v121, v122, v135, v136, v138, v139, v140, v141, v142, v143, v144, v146);
          sub_1ABA976E4();
          if (!v97)
          {
            goto LABEL_84;
          }

          v114 = v123;
          v125 = v136;
        }

        else
        {
          v125 = v136;
          v124 = BYTE4(v135);
        }

        if (v124)
        {
          *(*(v149 + 56) + 8 * v114) = v125;
        }

        else
        {
          sub_1ABA7D110(v149 + 8 * (v114 >> 6));
          sub_1ABAA3B10();
          *(v130 + 8 * v114) = v131;
          v132 = *(v149 + 16);
          v128 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v128)
          {
            goto LABEL_77;
          }

          *(v149 + 16) = v133;
        }

        *(a1 + 32) = v149;
        swift_endAccess();

        v4 = v146;
      }
    }

    else
    {

      v44 = sub_1ABA904F8();
      v46 = sub_1ABEC2DAC(v44, v45);
      if (*(a2 + 16))
      {
        v54 = sub_1ABA94FC8(v46, v47, v48, v49, v50, v51, v52, v53, v135, v136, v138, v139, v140, v141, v142, v143, v144, v146);
        v56 = v55;

        if (v56)
        {
          v57 = *(*(a2 + 56) + 8 * v54);
        }

        else
        {
          v57 = 0;
        }

        a1 = v140;
        v28 = v148;
      }

      else
      {

        v57 = 0;
      }

      sub_1ABAA276C();
      if ((sub_1ABF23E64() & 1) == 0)
      {

        goto LABEL_46;
      }

      if (!v57)
      {
        goto LABEL_46;
      }

      v145 = sub_1ABE73EEC();

      v71 = sub_1ABAA3378();
      sub_1ABA7C32C(v71, v72);
      if (!*(a1 + 32))
      {
        goto LABEL_82;
      }

      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABAA2AEC();
      *(a1 + 32) = v73;
      v74 = sub_1ABA904F8();
      sub_1ABA94FC8(v74, v75, v76, v77, v78, v79, v80, v81, v135, v57, v138, v139, v140, v141, v142, v143, v145, v4);
      sub_1ABA7AD10();
      if (__OFADD__(v84, v85))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        break;
      }

      v86 = v82;
      HIDWORD(v135) = v83;
      sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
      sub_1ABA844A4();
      if (sub_1ABF24C64())
      {
        v87 = sub_1ABA904F8();
        sub_1ABA94FC8(v87, v88, v89, v90, v91, v92, v93, v94, v135, v136, v138, v139, v140, v141, v142, v143, v144, v146);
        sub_1ABA976E4();
        v4 = v146;
        if (!v97)
        {
          goto LABEL_84;
        }

        v86 = v95;
      }

      else
      {
        v4 = v146;
        v96 = BYTE4(v135);
      }

      if (v96)
      {
        *(*(v149 + 56) + 8 * v86) = v144;
      }

      else
      {
        sub_1ABA7D110(v149 + 8 * (v86 >> 6));
        sub_1ABAA3B10();
        *(v126 + 8 * v86) = v144;
        v127 = *(v149 + 16);
        v128 = __OFADD__(v127, 1);
        v129 = v127 + 1;
        if (v128)
        {
          goto LABEL_76;
        }

        *(v149 + 16) = v129;
      }

      *(a1 + 32) = v149;
      swift_endAccess();

LABEL_62:
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_endAccess();
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEBF1A0()
{
  if (qword_1ED86BE18 != -1)
  {
    sub_1ABA83D58(&qword_1ED86BE18);
  }

  sub_1ABB130E0();
  v1 = v0;

  return v1 & 1;
}

void sub_1ABEBF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = 0xD00000000000001ALL;
  v10 = a6[2] == 0xD00000000000001ALL && 0x80000001ABF7EB30 == a6[3];
  if (!v10 && (sub_1ABF25054() & 1) == 0)
  {
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004FLL, 0x80000001ABF95C70);

    v56 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v56);

LABEL_57:
    v58 = sub_1ABEC2E2C();
    v59 = sub_1ABA7BD00(&type metadata for VOPError, v58);
    sub_1ABA7C930(v59, v60);
    return;
  }

  v75 = a2;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (!a6[4])
  {
LABEL_56:
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_1ABF24AB4();

    v80 = v9 - 7;
    v81 = 0x80000001ABF95CC0;

    v57 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v57);

    MEMORY[0x1AC5A9410](0x6E6F6E2074756220, 0xEF646E756F662065);
    goto LABEL_57;
  }

  v11 = sub_1ABAE305C();
  if (!v11)
  {
LABEL_55:

    goto LABEL_56;
  }

  v12 = v11;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v13 = *(v12 + 16);
  if (!v13[2])
  {

    goto LABEL_55;
  }

  v71 = a1;
  v14 = v13[4];
  v15 = v13[5];

  v16._countAndFlagsBits = v14;
  v16._object = v15;
  LiveGlobalKnowledge.ExternalIdentifierType.init(rawValue:)(v16);
  v17 = v80;
  v68 = sub_1ABAE305C();
  if (!v68)
  {
LABEL_52:

LABEL_53:

    goto LABEL_56;
  }

  v18 = sub_1ABAE305C();

  if (!v18)
  {

    goto LABEL_53;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v19 = *(v68 + 16);
  v69 = *(v19 + 16);

  sub_1ABA7EF0C();
  swift_beginAccess();
  v20 = 0;
  v70 = v19;
  v73 = MEMORY[0x1E69E7CC8];
  v9 = v18;
  v67 = v18;
LABEL_12:
  if (v20 == v69)
  {
    goto LABEL_61;
  }

  if (v20 < *(v70 + 16))
  {
    v72 = v20 + 1;
    v21 = *(v9 + 16);
    v76 = v21 + 32;
    v77 = *(v21 + 16);
    swift_bridgeObjectRetain_n();
    v84 = v21;

    v9 = 0;
    v74 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 == v77)
      {

        sub_1ABE8ACC8();
        swift_isUniquelyReferenced_nonNull_native();
        v80 = v73;
        sub_1ABAFADB8();
        swift_bridgeObjectRelease_n();
        v73 = v80;
        v9 = v67;
        v20 = v72;
        goto LABEL_12;
      }

      if (v9 >= *(v84 + 16))
      {
        __break(1u);
LABEL_63:
        v61 = sub_1ABF25054();

        if (v61)
        {
          v62 = 0;
        }

        else
        {
          v62 = 256;
        }

LABEL_66:

        v63 = v75 + *(type metadata accessor for QueryContext(0) + 44);
        v64 = *v63;
        v65 = *(v63 + 8);
        v66 = *(v63 + 16);
        *v71 = v73;
        *(v71 + 8) = v64;
        *(v71 + 16) = v65;
        *(v71 + 24) = v62 | v66;
        *(v71 + 88) = 0;
        *(v71 + 104) = 16;
        sub_1ABB3F4DC(v64, v65, v66);
        return;
      }

      v22 = (v76 + 16 * v9);
      v23 = v22[1];
      if ((v23 & 0x1000000000000000) == 0)
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          *__s2 = *v22;
          v79 = v23 & 0xFFFFFFFFFFFFFFLL;
          v31 = _Records_GDEntityPredicate_records;
          v32 = _Records_GDEntityPredicate_predicateIds;

          v33 = (v31 + 4);
          v34 = 280;
          while (--v34)
          {
            if (!v31)
            {
              goto LABEL_71;
            }

            v35 = *v33;
            if (*v33 >= 3481)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:

              switch(v17)
              {
                case 0:
                case 1:
                case 2:
                case 4:
                  goto LABEL_63;
                case 3:

                  v62 = 0;
                  goto LABEL_66;
                default:
                  goto LABEL_52;
              }
            }

            if (!v32)
            {
              goto LABEL_73;
            }

            v33 += 3;
            if (!strcmp(&v32[v35], __s2))
            {
              v36 = *(v33 - 16);
              v37 = *(v33 - 2);
              goto LABEL_35;
            }
          }

          v36 = 0;
          v35 = 0;
          v37 = 0;
LABEL_35:
          v80 = v36;
          v81 = v35;
          v82 = v37;
          v83 = v34 == 0;
          goto LABEL_36;
        }

        if ((*v22 & 0x1000000000000000) != 0)
        {
          v24 = _Records_GDEntityPredicate_records;
          v25 = _Records_GDEntityPredicate_predicateIds;

          v26 = (v24 + 4);
          v27 = 280;
          while (--v27)
          {
            if (!v24)
            {
              goto LABEL_72;
            }

            v28 = *v26;
            if (*v26 >= 3481)
            {
              goto LABEL_60;
            }

            if (!v25)
            {
              goto LABEL_74;
            }

            v26 += 3;
            if (!strcmp(&v25[v28], ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32)))
            {
              v29 = *(v26 - 16);
              v30 = *(v26 - 2);
              goto LABEL_38;
            }
          }

          v29 = 0;
          v28 = 0;
          v30 = 0;
LABEL_38:
          v80 = v29;
          v81 = v28;
          v82 = v30;
          v83 = v27 == 0;

          goto LABEL_39;
        }
      }

      sub_1ABAD219C(&qword_1EB4D3BC0, &unk_1ABF77750);
      sub_1ABF24A74();
LABEL_36:

LABEL_39:
      ++v9;
      if (!v83)
      {
        if (v81 >= 3481)
        {
          goto LABEL_69;
        }

        if (v82 >= 4281)
        {
          goto LABEL_70;
        }

        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_76;
        }

        v38 = v80;
        v39 = sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_75;
        }

        v41 = v39;
        v42 = v40;
        v43 = sub_1ABF23DD4();
        v45 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_1ABA7BEF0();
          sub_1ABAD8B6C(v50, v51, v52, v53);
          v74 = v54;
        }

        v47 = *(v74 + 16);
        v46 = *(v74 + 24);
        v48 = v47 + 1;
        if (v47 >= v46 >> 1)
        {
          sub_1ABAD8B6C(v46 > 1, v47 + 1, 1, v74);
          v48 = v47 + 1;
          v74 = v55;
        }

        *(v74 + 16) = v48;
        v49 = v74 + 40 * v47;
        *(v49 + 32) = v41;
        *(v49 + 40) = v42;
        *(v49 + 48) = v43;
        *(v49 + 56) = v45;
        *(v49 + 64) = v38;
      }
    }
  }

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
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
}

void sub_1ABEBFBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v10;
  v123 = *v13;
  v124 = v13[1];
  v129 = v13[3];
  v121 = v11;
  v122 = v13[4];
  v125 = v13[2];
  v127 = v13[5];
  sub_1ABA7EF0C();
  swift_beginAccess();
  v14 = v10[16] + 64;
  sub_1ABA7D32C();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v138 = v20;

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v142 = v10;
  v135 = v19;
  v137 = v14;
  if (!v17)
  {
    goto LABEL_2;
  }

  while (1)
  {
LABEL_6:
    v24 = __clz(__rbit64(v17)) | (v21 << 6);
    v25 = (*(v138 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    memcpy(__dst, (*(v138 + 56) + 112 * v24), sizeof(__dst));
    v152 = v26;
    v153 = v27;
    memcpy(v154, __dst, sizeof(v154));
    sub_1ABA94DF8();
    swift_beginAccess();
    v143 = v26;
    v145 = v27;
    v28 = sub_1ABAA4C30();
    if (!v30)
    {
      sub_1ABEC2E80(v28, v29);
LABEL_41:
      swift_endAccess();

      v149[0] = 0;
      v149[1] = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA7E19C();
      v149[0] = v110;
      v149[1] = v109;
      MEMORY[0x1AC5A9410](v143, v145);
      v111 = sub_1ABEC2E2C();
      v112 = sub_1ABA7BD00(&type metadata for VOPError, v111);
      sub_1ABA90B04(v112, v113, v114, v115, v116, v117, v118, v119, v121, v122, v123, v124);

      sub_1ABEC2EF0(&v152);
      goto LABEL_44;
    }

    sub_1ABEC2E80(v28, v29);

    v37 = sub_1ABA94FC8(v26, v27, v31, v32, v33, v34, v35, v36, v121, v122, v123, v124, v125, v127, v129, v131, v133, v135);
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_41;
    }

    v140 = v22;
    v141 = v17;
    sub_1ABA81DB0();
    v42 = v40 + v37 * v41;
    memcpy(v148, v42, sizeof(v148));
    v43 = v148[3];
    v44 = v148[2];
    memcpy(__src, (v42 + 40), sizeof(__src));
    swift_endAccess();
    v45 = sub_1ABAA4C30();
    sub_1ABEC2E80(v45, v46);
    sub_1ABB51320(v148, v149);

    sub_1ABB5137C(__dst);

    v47 = *(v44 + 16);
    if (v47)
    {
      v134 = v43;
      v149[0] = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v47, 0);
      v48 = v149[0];
      v132 = v44;
      v49 = v44 + 40;
      do
      {
        v50 = sub_1ABF23C84();
        v52 = v51;
        v149[0] = v48;
        v54 = v48[2];
        v53 = v48[3];
        if (v54 >= v53 >> 1)
        {
          sub_1ABADDBD4(v53 > 1, v54 + 1, 1);
          v48 = v149[0];
        }

        v48[2] = v54 + 1;
        v55 = &v48[2 * v54];
        v55[4] = v50;
        v55[5] = v52;
        v49 += 16;
        --v47;
      }

      while (v47);
      swift_bridgeObjectRelease_n();
      v12 = v142;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v48 = MEMORY[0x1E69E7CC0];
    }

    v56 = sub_1ABF23C84();
    v58 = v57;
    swift_bridgeObjectRelease_n();
    v59 = sub_1ABAA4C30();
    sub_1ABEC2E80(v59, v60);
    sub_1ABB5137C(__dst);
    v147[0] = v143;
    v147[1] = v145;
    v147[2] = v48;
    v147[3] = v56;
    v139 = v58;
    v147[4] = v58;
    memcpy(&v147[5], __src, 0x48uLL);
    sub_1ABA7C32C((v12 + 16), v146);
    sub_1ABB51320(v147, v149);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABAA2AEC();
    v12[16] = v61;
    sub_1ABA94FC8(v143, v145, v62, v63, v64, v65, v66, v67, v121, v122, v123, v124, v126, v128, v130, v132, v134, v136);
    sub_1ABA7AD10();
    if (__OFADD__(v70, v71))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      sub_1ABD8EE6C();
      v22 = v120;
LABEL_30:
      v102 = *(v22 + 16);
      v152 = v22 + 32;
      v153 = v102;
      sub_1ABAF1EB0(&v152);
      v144 = v12[19];
      v142[19] = v123;
      v142[20] = v124;
      v142[21] = v125;
      v142[22] = v129;
      v142[23] = v122;
      v142[24] = v127;

      sub_1ABEC0FFC(v144);
      sub_1ABEC1068();
      if (v121)
      {

        v149[0] = v121;
        v103 = v121;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABAA4C30();
        if (swift_dynamicCast())
        {
          v105 = v152;
          v104 = v153;
          if (v154[0] != 1)
          {
            goto LABEL_42;
          }

          v106 = HIBYTE(v153) & 0xF;
          if ((v153 & 0x2000000000000000) == 0)
          {
            v106 = v152 & 0xFFFFFFFFFFFFLL;
          }

          if (v106)
          {

            v107 = sub_1ABEC2E2C();
            sub_1ABA7BD00(&type metadata for VOPError, v107);
            *v108 = v105;
            *(v108 + 8) = v104;
            *(v108 + 16) = 0;
            swift_willThrow();
          }

          else
          {
LABEL_42:
            sub_1ABB95F08();
          }
        }
      }

      else
      {

        sub_1ABEC178C();
      }

LABEL_44:
      sub_1ABA7BC90();
      return;
    }

    v72 = v68;
    v73 = v69;
    sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
    sub_1ABA844A4();
    if (sub_1ABF24C64())
    {
      break;
    }

    v83 = v141;
    v80 = v143;
    if ((v73 & 1) == 0)
    {
LABEL_19:
      v84 = a10;
      sub_1ABA7D110(a10 + 8 * (v72 >> 6));
      v85 = (*(a10 + 48) + 16 * v72);
      *v85 = v80;
      v85[1] = v145;
      sub_1ABA81DB0();
      memcpy((v86 + v72 * v87), v147, 0x70uLL);
      v88 = *(a10 + 16);
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_47;
      }

      *(a10 + 16) = v90;
      v91 = v145;
      goto LABEL_23;
    }

LABEL_22:
    v84 = a10;
    sub_1ABA81DB0();
    v94 = (v92 + v72 * v93);
    memcpy(v149, v94, 0x70uLL);
    memcpy(v94, v147, 0x70uLL);
    sub_1ABB5137C(v149);
    v91 = v145;

LABEL_23:
    v12[16] = v84;
    swift_endAccess();
    v95 = sub_1ABAA4C30();
    sub_1ABEC2E80(v95, v96);
    sub_1ABB5137C(__dst);
    v22 = v140;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABAAA4F4();
      v22 = v100;
    }

    v98 = *(v22 + 16);
    v97 = *(v22 + 24);
    if (v98 >= v97 >> 1)
    {
      sub_1ABA819D0(v97);
      sub_1ABAAA4F4();
      v22 = v101;
    }

    v17 = (v83 - 1) & v83;
    sub_1ABEC2EF0(&v152);
    *(v22 + 16) = v98 + 1;
    v99 = v22 + 16 * v98;
    *(v99 + 32) = v143;
    *(v99 + 40) = v91;
    v149[0] = v143;
    v149[1] = v91;
    v149[2] = v48;
    v149[3] = v56;
    v149[4] = v139;
    memcpy(&v149[5], __src, 0x48uLL);
    sub_1ABB5137C(v149);
    v19 = v135;
    v14 = v137;
    if (!v17)
    {
      while (1)
      {
LABEL_2:
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v23 >= v19)
        {
          break;
        }

        v17 = *(v14 + 8 * v23);
        ++v21;
        if (v17)
        {
          v21 = v23;
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_30;
    }
  }

  v80 = v143;
  v81 = sub_1ABA94FC8(v143, v145, v74, v75, v76, v77, v78, v79, v121, v122, v123, v124, v125, v127, v129, v131, v133, v135);
  v83 = v141;
  if ((v73 & 1) == (v82 & 1))
  {
    v72 = v81;
    if ((v73 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  sub_1ABF25104();
  __break(1u);
}

uint64_t sub_1ABEC0334(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

uint64_t sub_1ABEC0388()
{
  result = sub_1ABE8AE5C(&unk_1F208EA18);
  qword_1ED87C3E8 = result;
  return result;
}

void sub_1ABEC03B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1ABA7BCA8();
  v57 = v11;
  v13 = v12;
  *(v10 + 136) = v14;
  *(v10 + 144) = 25;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  sub_1ABA7EF0C();
  sub_1ABEC0FFC(v15);
  v16 = 0;
  v56 = v10;
  *(v10 + 128) = sub_1ABF239C4();
  v17 = (v10 + 128);
  v60 = (v10 + 128);
  v61 = v13;
  v18 = v13 + 64;
  sub_1ABA7D32C();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v58 = v23;
  v59 = v18;
  if ((v20 & v19) != 0)
  {
LABEL_6:
    while (1)
    {
      v25 = __clz(__rbit64(v21)) | (v16 << 6);
      v26 = (*(v61 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      memcpy(__dst, (*(v61 + 56) + 112 * v25), sizeof(__dst));
      v68[0] = v27;
      v68[1] = v28;
      memcpy(v69, __dst, sizeof(v69));
      memcpy(__src, &__dst[2], sizeof(__src));
      sub_1ABEC2E80(v68, v65);
      sub_1ABEC2E80(v68, v65);

      sub_1ABEC2E80(v68, v65);
      sub_1ABB5137C(__dst);
      v70[0] = v27;
      v70[1] = v28;
      memcpy(&v70[2], __src, 0x60uLL);
      sub_1ABA7C32C(v17, &v62);
      sub_1ABB51320(v70, v65);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABAA2AEC();
      *v17 = v29;
      sub_1ABA94FC8(v27, v28, v30, v31, v32, v33, v34, v35, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
      sub_1ABA7AD10();
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v40 = v36;
      v41 = v37;
      sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
      sub_1ABA844A4();
      if (sub_1ABF24C64())
      {
        v48 = sub_1ABA94FC8(v27, v28, v42, v43, v44, v45, v46, v47, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65[0]);
        if ((v41 & 1) != (v49 & 1))
        {
          goto LABEL_20;
        }

        v40 = v48;
      }

      if (v41)
      {

        v50 = a10;
        v51 = (a10[7] + 112 * v40);
        memcpy(v65, v51, 0x70uLL);
        memcpy(v51, v70, 0x70uLL);
        sub_1ABB5137C(v65);
      }

      else
      {
        v50 = a10;
        sub_1ABA7D110(&a10[v40 >> 6]);
        v52 = (a10[6] + 16 * v40);
        *v52 = v27;
        v52[1] = v28;
        memcpy((a10[7] + 112 * v40), v70, 0x70uLL);
        v53 = a10[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_19;
        }

        a10[2] = v55;
      }

      v21 &= v21 - 1;
      v17 = v60;
      *v60 = v50;
      swift_endAccess();
      sub_1ABEC2EF0(v68);
      v65[0] = v27;
      v65[1] = v28;
      memcpy(&v65[2], __src, 0x60uLL);
      sub_1ABB5137C(v65);
      v23 = v58;
      v18 = v59;
      if (!v21)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v24 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        v56[6] = 0u;
        v56[7] = 0u;
        v56[4] = 0u;
        v56[5] = 0u;
        v56[2] = 0u;
        v56[3] = 0u;
        v56[1] = 0u;
        sub_1ABA7BC90();
        return;
      }

      v21 = *(v18 + 8 * v24);
      ++v16;
      if (v21)
      {
        v16 = v24;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1ABF25104();
  __break(1u);
}

void *sub_1ABEC06FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1ABA94DF8();
  swift_beginAccess();
  if (*(*(v3 + 128) + 16) && (sub_1ABA94FC8(a1, a2, v7, v8, v9, v10, v11, v12, v20[0], v20[1], v20[2], v20[3], v20[4], v20[5], v20[6], v20[7], v20[8], v20[9]), (v13 & 1) != 0))
  {
    sub_1ABA81DB0();
    memcpy(__dst, (v15 + v14 * v16), sizeof(__dst));
    swift_endAccess();
    sub_1ABB51320(__dst, v20);
    return memcpy(a3, __dst, 0x70uLL);
  }

  else
  {
    swift_endAccess();
    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF95DC0);
    v18 = sub_1ABEC2E2C();
    sub_1ABA7BD00(&type metadata for VOPError, v18);
    *v19 = 0x726F74617265706FLL;
    *(v19 + 8) = 0xE900000000000020;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABEC084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (qword_1ED86BE18 != -1)
  {
    sub_1ABA83D58(&qword_1ED86BE18);
  }

  v7 = *a5;

  sub_1ABB130E0();
  v9 = v8;

  if (v9)
  {
    v10 = *(v7 + 16) == 0xD00000000000001ALL && 0x80000001ABF7EB30 == *(v7 + 24);
    if (v10 || (sub_1ABF25054() & 1) != 0)
    {
      v11 = 0;
      *(v7 + 64) = 8;
      *(v7 + 48) = 500;
    }

    else
    {
      v11 = 0;
      *(v7 + 64) = 6;
    }

    return v11 & 1;
  }

  result = sub_1ABEC09C0(v7, 25);
  if (v5)
  {
    return v11 & 1;
  }

  v13 = result;
  if (result)
  {

    for (i = v13; ; i = v15)
    {
      v15 = *(i + 40);
      if (!v15)
      {
        break;
      }
    }

    *(i + 40) = *(v7 + 40);

    *(v13 + 48) = *(v7 + 48);

    *a5 = v13;
    v11 = 1;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABEC09C0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v57 = a1;
  if (a2 > 0)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    v54 = v2;
    v55 = v3;
    if (*(v4 + 32))
    {
      v6 = *(v4 + 32);
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v6 = sub_1ABF239C4();
    }

    sub_1ABA7D32C();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    v52 = a2 - 1;

    v14 = 0;
    v15 = v6;
    v56 = v6;
    while (1)
    {
      while (1)
      {
        if (!v11)
        {
          while (1)
          {
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_55;
            }

            if (v16 >= v13)
            {
              break;
            }

            v11 = *(v6 + 64 + 8 * v16);
            ++v14;
            if (v11)
            {
              v14 = v16;
              goto LABEL_13;
            }
          }

          result = sub_1ABEC267C(v4);
          if (!v55 && !result)
          {
          }

          return result;
        }

LABEL_13:
        v17 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v18 = (*(v15 + 48) + 16 * (v17 | (v14 << 6)));
        v19 = *v18;
        v20 = v18[1];
        sub_1ABA94DF8();
        swift_beginAccess();
        v21 = *(v4 + 32);
        if (v21)
        {
          if (*(v21 + 16))
          {
            break;
          }
        }

        swift_endAccess();
      }

      swift_bridgeObjectRetain_n();
      swift_retain_n();
      v28 = sub_1ABA94FC8(v19, v20, v22, v23, v24, v25, v26, v27, v51, v52, v19, v54, v55, v56, v57, v58, v59, v60);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        break;
      }

      v31 = *(*(v21 + 56) + 8 * v28);
      swift_endAccess();

      swift_beginAccess();
      if (!*(v31 + 24))
      {

        goto LABEL_31;
      }

      v32 = *(v57 + 16) == 0x68636165726F66 && *(v57 + 24) == 0xE700000000000000;
      if (v32 || (sub_1ABF25054()) && (v53 == 0x726F74617265706FLL ? (v33 = v20 == 0xE800000000000000) : (v33 = 0), v33 || (sub_1ABF25054()))
      {
      }

      else
      {

        v35 = sub_1ABEC09C0(v34, v52);
        if (v55)
        {
          goto LABEL_56;
        }

        v36 = v35;

        *(v31 + 24) = v36;
      }

LABEL_35:
      v15 = v56;
      v4 = v57;
    }

    swift_endAccess();

LABEL_31:

    goto LABEL_35;
  }

  v7 = sub_1ABEC25D4();

  sub_1ABA7EF0C();
  swift_beginAccess();
  if (*(v4 + 32))
  {
    v8 = *(v4 + 32);
  }

  else
  {
    type metadata accessor for KnosisQueryParam();
    v8 = sub_1ABF239C4();
  }

  v38 = 0;
  sub_1ABA7D32C();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
LABEL_41:
  if (v41)
  {
    v44 = v38;
    goto LABEL_47;
  }

  while (1)
  {
    v44 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v44 >= v43)
    {

      if (v7 != 1)
      {
      }

LABEL_50:
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x726F74617265706FLL, 0xE900000000000020);

      v47 = sub_1ABA7D2D8();
      MEMORY[0x1AC5A9410](v47);

      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF95CE0);
      v48 = sub_1ABEC2E2C();
      v49 = sub_1ABA7BD00(&type metadata for VOPError, v48);
      return sub_1ABA7C930(v49, v50);
    }

    v41 = *(v8 + 64 + 8 * v44);
    ++v38;
    if (v41)
    {
      v38 = v44;
LABEL_47:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = *(*(v8 + 56) + ((v44 << 9) | (8 * v45)));
      sub_1ABA7EF0C();
      swift_beginAccess();
      if (*(v46 + 24))
      {

        goto LABEL_50;
      }

      goto LABEL_41;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
}

uint64_t sub_1ABEC0F00()
{

  v1 = *(v0 + 152);

  return sub_1ABEC0FFC(v1);
}

uint64_t *sub_1ABEC0F40()
{
  sub_1ABAD4FFC(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13]);

  sub_1ABEC0FFC(v0[19]);
  return v0;
}

uint64_t sub_1ABEC0FA4()
{
  sub_1ABEC0F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC0FFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1ABEC1068()
{
  sub_1ABA7BCA8();
  v124 = v1;
  v133 = v0;
  v3 = v2;
  v132 = sub_1ABF25324();
  v4 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1ABF239C4();
  v8 = *(v3 + 16);
  if (!v8)
  {
    v134 = v6;
LABEL_54:
    v111 = v134;
    if (*(v134 + 16))
    {
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_1ABF24AB4();

      v137 = 0xD000000000000026;
      v138 = 0x80000001ABF95E90;
      v112 = MEMORY[0x1AC5A9750](v111, MEMORY[0x1E69E6158]);
      v114 = v113;

      MEMORY[0x1AC5A9410](v112, v114);

      v115 = sub_1ABEC2E2C();
      v116 = sub_1ABA7BD00(&type metadata for VOPError, v115);
      sub_1ABA90B04(v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
    }

    else
    {
    }

    sub_1ABA7BC90();
    return;
  }

  v130 = v4 + 8;
  v125 = 0x80000001ABF95E70;
  v126 = 0x80000001ABF95EC0;
  v9 = (v3 + 40);
  v134 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = HIBYTE(*v9) & 0xFLL;
    if ((*v9 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      break;
    }

    v13 = sub_1ABF23E94();
    if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_59;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v16 = sub_1ABF23CE4();
    }

    else
    {
      v16 = sub_1ABF24A94() << 16;
    }

    v135 = v9;
    v136 = v8;
    if (v16 >> 14 == 4 * v15)
    {
      v17 = sub_1ABA95870();
      if ((sub_1ABDEFBB8(v17, v18) & 0x100000000) != 0)
      {
        goto LABEL_62;
      }

      v19 = v131;
      sub_1ABF25334();
      sub_1ABF252F4();
      v20 = sub_1ABAA55F4();
      v21(v20);
      if (v19)
      {
        goto LABEL_26;
      }
    }

    sub_1ABA95870();
    if ((sub_1ABF23AC4() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_1ABA95870();
    if (sub_1ABF23AF4())
    {
      v22 = sub_1ABA95870();
      if ((sub_1ABDEFBB8(v22, v23) & 0x100000000) != 0)
      {
        goto LABEL_63;
      }

      v24 = v131;
      sub_1ABF25334();
      sub_1ABF25314();
      v25 = sub_1ABAA55F4();
      v26(v25);
      if (v24)
      {
        goto LABEL_26;
      }
    }

    sub_1ABA95870();
    if ((sub_1ABF23AD4() & 1) == 0 || (sub_1ABA95870(), (sub_1ABF23AC4() & 1) == 0))
    {
LABEL_26:
      v34 = 1;
    }

    else
    {
LABEL_21:
      v27 = v7;
      v137 = 0;
      v138 = 0xE000000000000000;
      sub_1ABF24AB4();

      v137 = 0xD00000000000001DLL;
      v138 = v125;
      v28 = sub_1ABA9EE9C();
      MEMORY[0x1AC5A9410](v28);
      v29 = v137;
      v30 = v138;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v31 = v134;
      }

      else
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v31 = v109;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1ABA819D0(v32);
        sub_1ABAAA4F4();
        v31 = v110;
      }

      v34 = 0;
      *(v31 + 16) = v33 + 1;
      v134 = v31;
      v35 = v31 + 16 * v33;
      *(v35 + 32) = v29;
      *(v35 + 40) = v30;
      v7 = v27;
    }

    sub_1ABA9EE9C();
    v36 = sub_1ABF23C84();
    v38 = v37;
    if (v7[2])
    {
      v39 = sub_1ABA8EF78();
      v47 = sub_1ABA94FC8(v39, v40, v41, v42, v43, v44, v45, v46, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
      if (v48)
      {
        v49 = v7;
        v50 = (v7[7] + 16 * v47);
        v51 = *v50;
        v52 = v50[1];
        v137 = 0;
        v138 = 0xE000000000000000;

        sub_1ABF24AB4();

        v137 = 0xD000000000000015;
        v138 = v126;
        MEMORY[0x1AC5A9410](v51, v52);

        MEMORY[0x1AC5A9410](2108704, 0xE300000000000000);
        v53 = sub_1ABA9EE9C();
        MEMORY[0x1AC5A9410](v53);
        v54 = v137;
        v55 = v138;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v56 = v134;
        }

        else
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v56 = v107;
        }

        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1ABA819D0(v57);
          sub_1ABAAA4F4();
          v56 = v108;
        }

        *(v56 + 16) = v58 + 1;
        v134 = v56;
        v59 = v56 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v55;
        v7 = v49;
LABEL_42:
        sub_1ABA7C32C(v133 + 128, &v137);
        v85 = sub_1ABA9EE9C();
        v93 = sub_1ABA94FC8(v85, v86, v87, v88, v89, v90, v91, v92, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
        if (v94)
        {
          v95 = v93;
          v129 = v7;
          v96 = v133;
          swift_isUniquelyReferenced_nonNull_native();
          v139 = *(v96 + 128);
          *(v96 + 128) = 0x8000000000000000;
          sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
          sub_1ABA844A4();
          sub_1ABF24C64();

          sub_1ABA81DB0();
          v99 = v97 + v95 * v98;
          v100 = *(v99 + 88);
          v101 = *(v99 + 104);
          v127 = v100;
          v128 = v101;

          sub_1ABF24C84();
          *(v96 + 128) = v139;
          v7 = v129;
        }

        swift_endAccess();
LABEL_45:

        goto LABEL_46;
      }
    }

    if ((v34 & 1) == 0)
    {

      goto LABEL_42;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v137 = v7;
    v60 = sub_1ABA8EF78();
    sub_1ABA94FC8(v60, v61, v62, v63, v64, v65, v66, v67, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    sub_1ABA7AD10();
    if (__OFADD__(v70, v71))
    {
      goto LABEL_60;
    }

    v72 = v68;
    v73 = v69;
    sub_1ABAD219C(&unk_1EB4D33F0, &qword_1ABF35190);
    if (sub_1ABF24C64())
    {
      v74 = sub_1ABA8EF78();
      v82 = sub_1ABA94FC8(v74, v75, v76, v77, v78, v79, v80, v81, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
      if ((v73 & 1) != (v83 & 1))
      {
        goto LABEL_64;
      }

      v72 = v82;
    }

    v7 = v137;
    if (v73)
    {
      v84 = (*(v137 + 56) + 16 * v72);
      *v84 = v11;
      v84[1] = v10;

      goto LABEL_45;
    }

    sub_1ABA7D110(v137 + 8 * (v72 >> 6));
    v102 = (v7[6] + 16 * v72);
    *v102 = v36;
    v102[1] = v38;
    v103 = (v7[7] + 16 * v72);
    *v103 = v11;
    v103[1] = v10;
    v104 = v7[2];
    v105 = __OFADD__(v104, 1);
    v106 = v104 + 1;
    if (v105)
    {
      goto LABEL_61;
    }

    v7[2] = v106;
LABEL_46:
    v9 = v135 + 2;
    v8 = v136 - 1;
    if (v136 == 1)
    {
      goto LABEL_54;
    }
  }

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
  sub_1ABF25104();
  __break(1u);
}

void sub_1ABEC178C()
{
  v2 = v1;
  v3 = v0;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v4 = *(v0 + 128) + 64;
  sub_1ABA7D32C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v52 = v10;

  v11 = 0;
  v53 = v0;
  while (v7)
  {
    v12 = v11;
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v52 + 48) + ((v12 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];

    sub_1ABEC1B74(MEMORY[0x1E69E7CC0], v16, v15, 25, v17, v18, v19, v20, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
    if (v2)
    {
      sub_1ABA7C32C(v3 + 128, &v54);
      v27 = sub_1ABA94FC8(v16, v15, v21, v22, v23, v24, v25, v26, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      if (v28)
      {
        v51 = v27;
        swift_isUniquelyReferenced_nonNull_native();
        v58 = *(v53 + 128);
        *(v53 + 128) = 0x8000000000000000;
        v50 = v2;
        sub_1ABAD219C(&qword_1EB4D1FA8, &qword_1ABF35198);
        sub_1ABA844A4();
        sub_1ABF24C64();
        v29 = v58;

        sub_1ABA81DB0();
        v32 = (v30 + v51 * v31);
        v45 = v32[2];
        v46 = v32[10];
        v47 = v32[1];
        v48 = v32[11];
        v49 = v32[13];

        v3 = v53;

        sub_1ABF24C84();
        *(v53 + 128) = v29;
      }

      swift_endAccess();
      v33 = v56 & 0xFFFFFFFFFFFFLL;
      if ((v57 & 0x2000000000000000) != 0)
      {
        v33 = HIBYTE(v57) & 0xF;
      }

      if (v33)
      {
        v54 = 0;
        v55 = 0xE000000000000000;
        MEMORY[0x1AC5A9410](8251, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v16, v15);

        MEMORY[0x1AC5A9410](32, 0xE100000000000000);
        v58 = v2;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABF24C54();
        MEMORY[0x1AC5A9410](v54, v55);

        v3 = v53;

        v2 = 0;
      }

      else
      {

        v54 = 0;
        v55 = 0xE000000000000000;
        MEMORY[0x1AC5A9410](v16, v15);

        MEMORY[0x1AC5A9410](32, 0xE100000000000000);
        v58 = v2;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        sub_1ABF24C54();

        v2 = 0;
        v56 = v54;
        v57 = v55;
      }

      v11 = v12;
    }

    else
    {

      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v34 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v34 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = sub_1ABEC2E2C();
    v36 = sub_1ABA7BD00(&type metadata for VOPError, v35);
    sub_1ABA90B04(v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  }

  else
  {
  }
}

void sub_1ABEC1B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v25 = v20;
  v27 = v26;
  v28 = v24;
  v29 = v23;
  v30 = v22;
  v31 = v22[2];
  if (v31)
  {
    v32 = v22[4] == v23 && v22[5] == v24;
    if (v32 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABF24AB4();

      sub_1ABA7E19C();
      __dst[0] = v34 + 7;
      __dst[1] = v33;
      v35 = MEMORY[0x1AC5A9750](v30, MEMORY[0x1E69E6158]);
      MEMORY[0x1AC5A9410](v35);

      MEMORY[0x1AC5A9410](544497952, 0xE400000000000000);
LABEL_27:
      MEMORY[0x1AC5A9410](v29, v28);
      v84 = sub_1ABEC2E2C();
      v85 = sub_1ABA7BD00(&type metadata for VOPError, v84);
      sub_1ABA81094(v85, v86);
LABEL_28:
      sub_1ABA7BC90();
      return;
    }
  }

  sub_1ABA94DF8();
  swift_beginAccess();
  if (!*(v20[16] + 16) || (sub_1ABA94FC8(v29, v28, v36, v37, v38, v39, v40, v41, v136, v138, v140, v142, v144, v146, v147, v149, v151, v153), (v42 & 1) == 0))
  {
    swift_endAccess();
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    __dst[0] = v83;
    __dst[1] = v82;
    goto LABEL_27;
  }

  sub_1ABA81DB0();
  v46 = (v44 + v43 * v45);
  memcpy(__dst, v46, sizeof(__dst));
  memcpy(__src, v46, sizeof(__src));
  v47 = __dst[10];
  v164 = __dst[11];
  *v184 = v46[6];
  swift_endAccess();
  if (v27 <= 0)
  {
    sub_1ABB51320(__dst, v172);
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    *v172 = v88 + 29;
    *&v172[8] = v87;
    MEMORY[0x1AC5A9410](v29, v28);
    v89 = sub_1ABEC2E2C();
    v90 = sub_1ABA7BD00(&type metadata for VOPError, v89);
    v92 = sub_1ABA81094(v90, v91);
    sub_1ABA97E7C(v92, v93, v94, v95, v96, v97, v98, v99, v137, v139, v141, v143, v145[0], v145[1], v148, v150, v152, v154, v155, v156, v158, v159, v162[0], v162[1], v163, v164, 0, 0xE000000000000000, v167[0], v167[1], v168, v169, v170, v171, *v172, *&v172[8], v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182, *(&v182 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v184[0]);
    v180 = v47;
LABEL_36:
    v181 = v165;
LABEL_37:
    v182 = *v184;
    sub_1ABB5137C(v172);
    goto LABEL_28;
  }

  v48 = __dst[10];
  v160 = v47;
  if (__dst[10])
  {
    sub_1ABB51320(__dst, v172);
    goto LABEL_13;
  }

  v152 = v27;
  v154 = v31;
  v100 = v25[19];
  if (v100)
  {
    v102 = v25[23];
    v101 = v25[24];
    v103 = v25[22];
    v104 = v25;
    v105 = v25[21];
    v155 = v104;
    v156 = v103;
    v106 = v104[20];
    v162[0] = __dst[8];
    v158 = __dst[9];
    v166[0] = v100;
    v166[1] = v106;
    v167[0] = v105;
    v167[1] = v103;
    v168 = v102;
    v169 = v101;
    sub_1ABB51320(__dst, v172);
    sub_1ABEC2F58(v100);
    v107 = sub_1ABE1CB7C(v162[0], v158);
    if (v21)
    {

      v108 = v21;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      if (swift_dynamicCast())
      {

        *v162 = *v167;
        *v172 = *v166;
        v173 = *v167;
        v174 = v168;
        v175 = v169;
        LOBYTE(v176) = v170;
        ParserError.description.getter();

        v109 = sub_1ABEC2E2C();
        v110 = sub_1ABA7BD00(&type metadata for VOPError, v109);
        sub_1ABA81094(v110, v111);
      }

LABEL_35:
      sub_1ABA97E7C(v51, v52, v53, v54, v55, v56, v57, v58, v137, v139, v141, v143, v145[0], v145[1], v148, v150, v152, v154, v155, v156, v158, v160, v162[0], v162[1], v163, v164, v166[0], v166[1], v167[0], v167[1], v168, v169, v170, v171, *v172, *&v172[8], v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182, *(&v182 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v184[0]);
      v180 = v161;
      goto LABEL_36;
    }

    v124 = v107;

    v48 = v124;

    v160 = v124;
    v31 = v154;
    v25 = v155;
    v27 = v152;
LABEL_13:
    v49 = v48;
    sub_1ABA900B8();
    sub_1ABEC2284(v50);
    if (!v21)
    {
      v59 = v51;
      v137 = v49;
      v154 = v31;
      v60 = (v51 + 56);
      sub_1ABA7D32C();
      v63 = v62 & v61;
      v150 = (v64 + 63) >> 6;
      v141 = v27 - 1;

      v66 = 0;
      *v145 = xmmword_1ABF34740;
      v155 = v25;
      v139 = v60;
      v162[0] = v29;
      v152 = v27;
      v143 = v65;
      while (v63)
      {
        v67 = v66;
LABEL_20:
        v68 = (*(v59 + 48) + ((v67 << 10) | (16 * __clz(__rbit64(v63)))));
        v69 = v68[1];
        v157 = *v68;
        sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
        v70 = swift_allocObject();
        *(v70 + 16) = *v145;
        *(v70 + 32) = v162[0];
        *(v70 + 40) = v28;
        v158 = v69;

        if (!swift_isUniquelyReferenced_nonNull_native() || (v71 = v30[3] >> 1, v72 = v30, v71 <= v154))
        {
          sub_1ABAAA4F4();
          v72 = v73;
          v71 = v73[3] >> 1;
        }

        if (v71 <= v72[2])
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        ++v72[2];
        sub_1ABA900B8();
        sub_1ABEC1B74(v74, v75, v76, v77, v78, v79, v80, v81, v137, v139, v141, v143, v145[0], v145[1], v148, v150, v152, v154, v155, v157);
        if (v60)
        {

          goto LABEL_35;
        }

        v63 &= v63 - 1;

        v66 = v67;
        v59 = v143;
        v60 = v139;
        v29 = v162[0];
      }

      while (1)
      {
        v67 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_47;
        }

        if (v67 >= v150)
        {
          break;
        }

        v63 = *(v60 + v67);
        ++v66;
        if (v63)
        {
          goto LABEL_20;
        }
      }

      v112 = __dst[11];

      if (v112)
      {
        v113 = v164;
        v114 = v160;
LABEL_40:
        memcpy(v186, __src, sizeof(v186));
        v187 = v114;
        v188 = v113;
        v189 = *v184;
        sub_1ABA7C32C(v155 + 128, v166);

        sub_1ABB51320(v186, v172);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v172 = *(v155 + 128);
        sub_1ABAFB9F0(v186, v29, v28, isUniquelyReferenced_nonNull_native);
        *(v155 + 128) = *v172;

        v116 = swift_endAccess();
        sub_1ABA97E7C(v116, v117, v118, v119, v120, v121, v122, v123, v137, v139, v141, v143, v145[0], v145[1], v148, v150, v152, v154, v155, v156, v158, v160, v162[0], v162[1], v163, v164, v166[0], v166[1], v167[0], v167[1], v168, v169, v170, v171, *v172, *&v172[8], v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182, *(&v182 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v184[0]);
        v180 = v114;
        v181 = v113;
        goto LABEL_37;
      }

      sub_1ABA900B8();
      v127 = sub_1ABEC09C0(v125, v126);
      v114 = v160;
      if (!v60)
      {
        v113 = v127;
        goto LABEL_40;
      }

      v128 = swift_willThrow();
      sub_1ABA97E7C(v128, v129, v130, v131, v132, v133, v134, v135, v137, v139, v141, v143, v145[0], v145[1], v148, v150, v152, v154, v155, v156, v158, v160, v162[0], v162[1], v163, v164, v166[0], v166[1], v167[0], v167[1], v168, v169, v170, v171, *v172, *&v172[8], v173, *(&v173 + 1), v174, v175, v176, v177, v178, v179, v180, v181, v182, *(&v182 + 1), __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], v184[0]);
      v180 = v114;
      v181 = 0;
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_48:
  __break(1u);
}

void sub_1ABEC2284(void *a1)
{
  v3 = v2;
  v52[4] = MEMORY[0x1E69E7CD0];

  v50 = v1;
  v5 = sub_1ABEC25D4();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = a1[2];
      v7 = a1[3];

      sub_1ABB1840C(v52, v6, v7);
    }

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (a1[4])
    {
      v8 = a1[4];
    }

    else
    {
      type metadata accessor for KnosisQueryParam();
      v8 = sub_1ABF239C4();
    }

    v47 = v8 + 64;
    sub_1ABA7F040();
    v23 = v22 & v21;
    v45 = (v24 + 63) >> 6;

    v25 = 0;
    v49 = v8;
    do
    {
LABEL_9:
      if (!v23)
      {
        while (1)
        {
          v26 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_28;
          }

          if (v26 >= v45)
          {

            return;
          }

          v23 = *(v47 + 8 * v26);
          ++v25;
          if (v23)
          {
            v25 = v26;
            break;
          }
        }
      }

      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v28 = *(*(v8 + 56) + 8 * (v27 | (v25 << 6)));
      sub_1ABA7EF0C();
      swift_beginAccess();
    }

    while (!*(v28 + 24));

    sub_1ABEC2284(v29);
    if (v3)
    {

      return;
    }

    v31 = v30;
    v32 = 0;
    v33 = v30 + 56;
    sub_1ABA7F040();
    v36 = v35 & v34;
    v38 = (v37 + 63) >> 6;
    if ((v35 & v34) == 0)
    {
      goto LABEL_18;
    }

    do
    {
      v39 = v32;
LABEL_22:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v41 = (*(v31 + 48) + ((v39 << 10) | (16 * v40)));
      v42 = *v41;
      v43 = v41[1];

      sub_1ABB1840C(v51, v42, v43);
    }

    while (v36);
LABEL_18:
    while (1)
    {
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v39 >= v38)
      {

        v3 = 0;
        v8 = v49;
        goto LABEL_9;
      }

      v36 = *(v33 + 8 * v39);
      ++v32;
      if (v36)
      {
        v32 = v39;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    sub_1ABF24AB4();

    sub_1ABA7E19C();
    v52[0] = v10;
    v52[1] = v9;

    v11 = sub_1ABA7D2D8();
    MEMORY[0x1AC5A9410](v11);

    v12 = sub_1ABEC2E2C();
    v13 = sub_1ABA7BD00(&type metadata for VOPError, v12);
    sub_1ABA90B04(v13, v14, v15, v16, v17, v18, v19, v20, v44, v46, v48, v50);
  }
}

uint64_t sub_1ABEC25D4()
{
  sub_1ABA94DF8();
  swift_beginAccess();
  if (*(*(v0 + 128) + 16) && (v1 = sub_1ABA7D2D8(), sub_1ABA94FC8(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v15, v16, v17, v18, v19, v20, vars0, vars8), (v9 & 1) != 0))
  {
    swift_endAccess();
    return 1;
  }

  else
  {
    swift_endAccess();

    sub_1ABA7D2D8();
    sub_1ABB130E0();
    v12 = v11;

    if (v12)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABEC267C(uint64_t a1)
{
  v3 = a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *v1;
  sub_1ABA94DF8();
  swift_beginAccess();
  if (!*(v1[16] + 16) || (, v13 = sub_1ABA94FC8(v5, v4, v7, v8, v9, v10, v11, v12, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97), v15 = v14, , (v15 & 1) == 0))
  {
    swift_endAccess();

    return v3;
  }

  v82 = v6;
  v84 = v2;
  sub_1ABA81DB0();
  v18 = (v16 + v13 * v17);
  v19 = v18[1];
  v94 = *v18;
  v20 = v18[2];
  v99 = v18[3];
  v21 = v18[4];
  v22 = v18[11];
  v23 = v18[13];
  swift_endAccess();
  type metadata accessor for KnosisQueryParam();
  v100 = v19;

  v98 = v22;

  v96 = v23;

  v24 = sub_1ABF239C4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v25 = *(v3 + 32);
  if (!v25)
  {
    v31 = v19;
LABEL_32:
    if (v98)
    {

      v3 = sub_1ABE71D94();

      *(v3 + 96) = v94;
      *(v3 + 104) = v31;

      sub_1ABEBEA58(v3, v24, 25);
      if (!v84)
      {

        return v3;
      }

      goto LABEL_37;
    }

    sub_1ABF24AB4();

    MEMORY[0x1AC5A9410](v94, v31);

    MEMORY[0x1AC5A9410](0x61766E6920736920, 0xEB0000000064696CLL);
    v75 = sub_1ABEC2E2C();
    v76 = sub_1ABA7BD00(&type metadata for VOPError, v75);
    sub_1ABA7C930(v76, v77);

LABEL_36:

LABEL_37:

    return v3;
  }

  v26 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v26 = v99 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v21;
  if (v26)
  {
    v28 = *(v20 + 16);
    v29 = *(v25 + 16);
    v30 = v29 == v28 - 1;
  }

  else
  {
    v30 = 0;
    v29 = *(v25 + 16);
    v28 = *(v20 + 16);
  }

  v31 = v19;
  if (v29 != v28 && !v30)
  {

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](544239478, 0xE400000000000000);

    MEMORY[0x1AC5A9410](v94, v19);

    MEMORY[0x1AC5A9410](0xD000000000000012, 0x80000001ABF95D40);
    v3 = v20;
    v68 = MEMORY[0x1AC5A9750](v20, MEMORY[0x1E69E6158]);
    MEMORY[0x1AC5A9410](v68);

    MEMORY[0x1AC5A9410](0xD000000000000023, 0x80000001ABF95D60);
    v69 = sub_1ABF23984();
    v71 = v70;

    MEMORY[0x1AC5A9410](v69, v71);

    v72 = sub_1ABEC2E2C();
    v73 = sub_1ABA7BD00(&type metadata for VOPError, v72);
    sub_1ABA7C930(v73, v74);

    goto LABEL_36;
  }

  v33 = v25 + 64;
  sub_1ABA7D32C();
  v36 = v35 & v34;
  v38 = (v37 + 63) >> 6;

  v3 = 0;
  v86 = v38;
  v88 = v25 + 64;
  v90 = v27;
  v92 = v25;
  if (v36)
  {
    goto LABEL_20;
  }

LABEL_16:
  while (1)
  {
    v39 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v39 >= v38)
    {

      goto LABEL_32;
    }

    v36 = *(v33 + 8 * v39);
    ++v3;
    if (v36)
    {
      v3 = v39;
      while (1)
      {
LABEL_20:
        v40 = *(*(v25 + 56) + 8 * (__clz(__rbit64(v36)) | (v3 << 6)));
        v41 = sub_1ABF23C84();
        v43 = v42;
        swift_retain_n();
        swift_isUniquelyReferenced_nonNull_native();
        sub_1ABA94FC8(v41, v43, v44, v45, v46, v47, v48, v49, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
        sub_1ABA7AD10();
        if (__OFADD__(v52, v53))
        {
          goto LABEL_41;
        }

        v54 = v50;
        v55 = v51;
        sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
        if (sub_1ABF24C64())
        {
          v62 = sub_1ABA94FC8(v41, v43, v56, v57, v58, v59, v60, v61, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98);
          v25 = v92;
          if ((v55 & 1) != (v63 & 1))
          {
            goto LABEL_43;
          }

          v54 = v62;
          if ((v55 & 1) == 0)
          {
LABEL_24:
            sub_1ABA7D110(&v24[v54 >> 6]);
            v64 = (v24[6] + 16 * v54);
            *v64 = v41;
            v64[1] = v43;
            *(v24[7] + 8 * v54) = v40;

            v65 = v24[2];
            v66 = __OFADD__(v65, 1);
            v67 = v65 + 1;
            if (v66)
            {
              goto LABEL_42;
            }

            v24[2] = v67;
            goto LABEL_28;
          }
        }

        else
        {
          v25 = v92;
          if ((v55 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v24[7] + 8 * v54) = v40;

LABEL_28:
        v31 = v100;
        v33 = v88;
        v38 = v86;
        v36 &= v36 - 1;
        if (!v36)
        {
          goto LABEL_16;
        }
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEC2DAC(uint64_t a1, unint64_t a2)
{
  sub_1ABAA276C();
  v4 = sub_1ABF23E64();

  if (v4)
  {
    sub_1ABAA276C();
    v5 = sub_1ABF23D44();
    v6 = sub_1ABAA958C(v5, a1, a2);
    a1 = MEMORY[0x1AC5A9330](v6);
  }

  return a1;
}

unint64_t sub_1ABEC2E2C()
{
  result = qword_1EB4DC688;
  if (!qword_1EB4DC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC688);
  }

  return result;
}

uint64_t sub_1ABEC2E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC690, qword_1ABF77760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEC2EF0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC690, qword_1ABF77760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABEC2F58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1ABEC2FC4()
{
  result = qword_1ED86D6D8;
  if (!qword_1ED86D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D6D8);
  }

  return result;
}

uint64_t sub_1ABEC3034()
{
  sub_1ABE7A61C();
  v1 = v0;
  sub_1ABEC5A64();
  return v1;
}

uint64_t sub_1ABEC307C()
{
  sub_1ABE7AB84(v0);
  v2 = v1;

  return v2;
}

uint64_t sub_1ABEC30B0()
{
  sub_1ABE7AD14();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC30E4()
{
  sub_1ABE7AE44();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC3118()
{
  sub_1ABE7B094();
  v1 = v0;

  return v1;
}

uint64_t sub_1ABEC314C()
{
  sub_1ABE7B2E0();
  v1 = v0;
  sub_1ABEC5A64();
  return v1;
}

uint64_t sub_1ABEC31B4()
{
  v0 = sub_1ABA81DBC();
  sub_1ABA93E20(v0, v1);
}

IntelligencePlatform::VisualUnderstandingService::Error_optional __swiftcall VisualUnderstandingService.Error.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VisualUnderstandingService.Error.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1ABEC3238@<X0>(uint64_t *a1@<X8>)
{
  result = VisualUnderstandingService.Error.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABEC3260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABEC6F50();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t VisualUnderstandingService.__allocating_init(client:version:)()
{
  v0 = swift_allocObject();
  sub_1ABA7D0F8();
  VisualUnderstandingService.init(client:version:)();
  return v0;
}

void VisualUnderstandingService.init(client:version:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for EntityRecognitionClient(0);
  v8 = sub_1ABA7AB80(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  v12 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v13 = sub_1ABA7AB80(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for VisualUnderstandingService.Version(0);
  v21 = sub_1ABA7AB80(v20);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v24 = v23 - v22;
  v25 = OBJC_IVAR____TtC20IntelligencePlatform26VisualUnderstandingService_client;
  sub_1ABA7E1B0();
  sub_1ABEC366C(v6, v2 + v25, v26);
  sub_1ABEC366C(v4, v24, type metadata accessor for VisualUnderstandingService.Version);
  v27 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
  if (sub_1ABA7E1E0(v24, 1, v27) == 1)
  {
    sub_1ABF24CD4();
    __break(1u);
  }

  else
  {
    sub_1ABE10E7C(v24, v19);
    sub_1ABA7E1B0();
    sub_1ABEC366C(v6, v11, v28);
    sub_1ABB3E5B4(v19, v16, &qword_1EB4D1E40, &qword_1ABF349F0);
    v29 = type metadata accessor for VisualUnderstandingServiceBackendV1(0);
    swift_allocObject();
    v30 = sub_1ABEC71D0(v11, v16);
    if (v1)
    {
      sub_1ABA94E04();
      sub_1ABEC5A64();
      sub_1ABAB480C(v19, &qword_1EB4D1E40, &qword_1ABF349F0);
      sub_1ABEC5A64();
      type metadata accessor for VisualUnderstandingService(0);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v33 = v29;
      v34 = &off_1F2079A28;
      *&v32 = v30;
      sub_1ABA94E04();
      sub_1ABA8FDA0();
      sub_1ABEC5A64();
      sub_1ABAB480C(v19, &qword_1EB4D1E40, &qword_1ABF349F0);
      sub_1ABA946C0(&v32, v2 + 16);
    }

    sub_1ABA7BC90();
  }
}

uint64_t sub_1ABEC366C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1ABEC36CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABA81DBC();
  sub_1ABA93E20(v6, v7);
  sub_1ABEC73FC(a1, a2, a3);
}

uint64_t sub_1ABEC3728(uint64_t a1)
{
  v2 = sub_1ABA81DBC();
  sub_1ABA93E20(v2, v3);
  return sub_1ABEC7F1C(a1);
}

uint64_t sub_1ABEC376C(uint64_t *a1)
{
  v1 = sub_1ABA81DBC();
  sub_1ABA93E20(v1, v2);
  return sub_1ABF23424();
}

uint64_t sub_1ABEC37B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_1ABA81DBC();
  sub_1ABA93E20(v5, v6);
  v9 = v4;
  v10 = v3;
  result = sub_1ABEC80E8(&v10, &v9);
  if (v2)
  {
    return v8 & 1;
  }

  return result;
}

void sub_1ABEC3820(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA81DBC();
  sub_1ABA93E20(v2, v3);
  v4 = v1;
  sub_1ABEC820C(&v4);
}

void sub_1ABEC3868(uint64_t *a1@<X8>)
{
  v2 = sub_1ABA81DBC();
  sub_1ABA93E20(v2, v3);
  sub_1ABEC7D10(a1);
}

void sub_1ABEC38A0(uint64_t *x8_0@<X8>)
{
  v3 = sub_1ABA81DBC();
  sub_1ABA93E20(v3, v4);
  sub_1ABEC7D10(x8_0);
}

void sub_1ABEC38E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_1ABA81DBC();
  sub_1ABA93E20(v3, v4);
  v5[0] = v1;
  v5[1] = v2;
  sub_1ABEC7880(v5);
}

uint64_t VisualUnderstandingService.deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA8FDA0();
  sub_1ABEC5A64();
  return v0;
}

uint64_t VisualUnderstandingService.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA8FDA0();
  sub_1ABEC5A64();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC3A50(uint64_t a1, uint64_t *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for EntityRecognitionClient(0);
  sub_1ABB9009C(v9, a2);
  v10 = sub_1ABA7D0F8();
  v12 = sub_1ABA7AA24(v10, v11);
  v13 = *(v9 + 20);
  v14 = *a3;
  sub_1ABF235E4();
  sub_1ABA7BBB0();
  (*(v15 + 104))(&v12[v13], v14);
  v16 = *(v9 + 24);
  v17 = *MEMORY[0x1E69E05E8];
  sub_1ABF23484();
  sub_1ABA7BBB0();
  result = (*(v18 + 104))(&v12[v16], v17);
  *v12 = a4;
  *(v12 + 1) = a5;
  return result;
}

uint64_t sub_1ABEC3C78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for EntityRecognitionClient(0);
  sub_1ABA7AA24(v6, a2);
  sub_1ABA7E1B0();
  return sub_1ABEC366C(v7, a4, v8);
}

uint64_t static EntityRecognitionClient.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1ABF25054()) && (type metadata accessor for EntityRecognitionClient(0), sub_1ABF235E4(), sub_1ABA7FBB4(), sub_1ABEC5AD8(v3, 255, v4, MEMORY[0x1E69E0640]), sub_1ABF24014(), sub_1ABF24014(), v8 == v7))
  {
    v5 = sub_1ABF23474();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t EntityRecognitionClient.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  type metadata accessor for EntityRecognitionClient(0);
  sub_1ABF235E4();
  sub_1ABA7FBB4();
  sub_1ABEC5AD8(v1, 255, v2, MEMORY[0x1E69E0638]);
  sub_1ABF23A94();
  sub_1ABF23484();
  sub_1ABA83D78();
  sub_1ABEC5AD8(v3, 255, v4, MEMORY[0x1E69E05F8]);
  return sub_1ABF23A94();
}

uint64_t EntityRecognitionClient.hashValue.getter()
{
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  type metadata accessor for EntityRecognitionClient(0);
  sub_1ABF235E4();
  sub_1ABA7FBB4();
  sub_1ABEC5AD8(v0, 255, v1, MEMORY[0x1E69E0638]);
  sub_1ABF23A94();
  sub_1ABF23484();
  sub_1ABA83D78();
  sub_1ABEC5AD8(v2, 255, v3, MEMORY[0x1E69E05F8]);
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABEC3FA8(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABF235E4();
  sub_1ABEC5AD8(&qword_1EB4DC6D8, 255, MEMORY[0x1E69E0630], MEMORY[0x1E69E0638]);
  sub_1ABF23A94();
  sub_1ABF23484();
  sub_1ABEC5AD8(&qword_1EB4DC6E0, 255, MEMORY[0x1E69E05F0], MEMORY[0x1E69E05F8]);
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingStreamingGallery.__allocating_init()()
{
  v0 = swift_allocObject();
  VisualUnderstandingStreamingGallery.init()();
  return v0;
}

uint64_t VisualUnderstandingStreamingGallery.init()()
{
  sub_1ABF231F4();
  swift_allocObject();
  v2 = sub_1ABF231E4();
  if (v1)
  {
    type metadata accessor for VisualUnderstandingStreamingGallery();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v0 + 16) = v2;
  }

  return v0;
}

uint64_t VisualUnderstandingStreamingGallery.__allocating_init(for:)(uint64_t a1)
{
  type metadata accessor for VisualUnderstandingStreamingGallery();
  v1 = swift_allocObject();
  VisualUnderstandingStreamingGallery.init()();
  sub_1ABA8FDA0();
  sub_1ABEC5A64();
  return v1;
}

void sub_1ABEC41D0()
{
  sub_1ABA7BCA8();
  v57 = v0;
  v58 = v1;
  v61 = v2;
  v62 = v3;
  v60 = v4;
  v56 = sub_1ABF235F4();
  sub_1ABA7BB64();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v51 = v8 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4DC6E8, &unk_1ABF77860);
  sub_1ABA7AB80(v9);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v51 - v11;
  v12 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v13 = sub_1ABA7AB80(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7AC18();
  v59 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = sub_1ABF23654();
  sub_1ABA7BB64();
  v54 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  v53 = v23 - v22;
  v24 = type metadata accessor for VisualUnderstandingService.Context(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7AC18();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v51 - v30;
  v32 = sub_1ABAD219C(&qword_1EB4DC6F8, &unk_1ABF77870);
  sub_1ABA7AB80(v32);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v51 - v34;
  v36 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7AB80(v36);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v51 - v38;
  v57 = *(v57 + 16);
  sub_1ABB3E5B4(v58, v35, &qword_1EB4DC6F8, &unk_1ABF77870);
  v40 = 1;
  if (sub_1ABA7E1E0(v35, 1, v24) != 1)
  {
    sub_1ABEC5B64(v35, v31);
    v41 = sub_1ABA7D0F8();
    sub_1ABEC366C(v41, v42, v43);
    v58 = v18;
    sub_1ABB3E5B4(v28, v18, &qword_1EB4DC6F0, qword_1ABF78360);
    sub_1ABB3E5B4(v28 + *(v24 + 20), v59, &qword_1EB4DC6F0, qword_1ABF78360);
    v44 = MEMORY[0x1E69E0650];
    v45 = 1;
    v47 = v55;
    v46 = v56;
    switch(*(v28 + *(v24 + 24)))
    {
      case 1:
        v44 = MEMORY[0x1E69E0648];
        goto LABEL_5;
      case 2:
        v44 = MEMORY[0x1E69E0658];
        goto LABEL_5;
      case 3:
        goto LABEL_6;
      default:
LABEL_5:
        v49 = v51;
        v48 = v52;
        (*(v52 + 104))(v51, *v44, v56);
        (*(v48 + 32))(v47, v49, v46);
        v45 = 0;
LABEL_6:
        sub_1ABA7B9B4(v47, v45, 1, v46);
        v50 = v53;
        sub_1ABF23634();
        sub_1ABEC5A64();
        sub_1ABEC5A64();
        (*(v54 + 32))(v39, v50, v19);
        v40 = 0;
        break;
    }
  }

  sub_1ABA7B9B4(v39, v40, 1, v19);
  sub_1ABF231B4();
  sub_1ABAB480C(v39, &qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7BC90();
}

uint64_t VUGallery.Context.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1ABF235F4();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = sub_1ABAD219C(&qword_1EB4DC6E8, &unk_1ABF77860);
  sub_1ABA7AB80(v10);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABB3E5B4(a1, v27 - v20, &qword_1EB4DC6F0, qword_1ABF78360);
  v21 = type metadata accessor for VisualUnderstandingService.Context(0);
  sub_1ABB3E5B4(a1 + *(v21 + 20), v18, &qword_1EB4DC6F0, qword_1ABF78360);
  v22 = MEMORY[0x1E69E0650];
  v23 = 1;
  switch(*(a1 + *(v21 + 24)))
  {
    case 1:
      v22 = MEMORY[0x1E69E0648];
      goto LABEL_4;
    case 2:
      v22 = MEMORY[0x1E69E0658];
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      (*(v5 + 104))(v9, *v22, v3);
      v24 = sub_1ABA7D0F8();
      v25(v24);
      v23 = 0;
LABEL_5:
      sub_1ABA7B9B4(v13, v23, 1, v3);
      sub_1ABF23634();
      return sub_1ABEC5A64();
  }
}

void sub_1ABEC48D4()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABF231A4();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v11 = sub_1ABF231D4();
  if (!v0)
  {
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        v33 = v10;
        v28[1] = 0;
        v37 = MEMORY[0x1E69E7CC0];
        sub_1ABADEEC4(0, v13, 0);
        v15 = *(v3 + 16);
        v14 = v3 + 16;
        v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
        v17 = v14;
        v28[0] = v12;
        v18 = v12 + v16;
        v31 = *(v17 + 56);
        v32 = v15;
        v34 = v17;
        v29 = v1;
        v30 = (v17 - 8);
        do
        {
          v19 = v33;
          v20 = v32;
          (v32)(v33, v18, v1);
          v21 = sub_1ABA7D0F8();
          v20(v21);
          v36 = sub_1ABF23184();
          v35 = sub_1ABF23174();
          v22 = sub_1ABF23194();
          v23 = *v30;
          (*v30)(v7, v1);
          v23(v19, v1);
          v25 = *(v37 + 16);
          v24 = *(v37 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1ABADEEC4((v24 > 1), v25 + 1, 1);
          }

          *(v37 + 16) = v25 + 1;
          v26 = v37 + 24 * v25;
          v27 = v35;
          *(v26 + 32) = v36;
          *(v26 + 40) = v27;
          *(v26 + 48) = v22 & 1;
          v18 += v31;
          --v13;
          v1 = v29;
        }

        while (v13);
      }
    }
  }

  sub_1ABA7BC90();
}

uint64_t VisualUnderstandingStreamingGallery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4BB8@<X0>(uint64_t *a1@<X8>)
{
  result = _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
  *a1 = result;
  return result;
}

uint64_t sub_1ABEC4C94(uint64_t a1, uint64_t a2)
{
  sub_1ABA844B0(v2 + 16, a2);
  sub_1ABA94E50(v2 + 16, *(v2 + 40));
  sub_1ABF24864();
  swift_endAccess();
  return v4;
}

uint64_t VisualUnderstandingService.ObservationSequence.__deallocating_deinit()
{
  sub_1ABA84B54((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1ABEC4C94(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1ABEC4E64(uint64_t a1, uint64_t a2)
{
  sub_1ABA844B0(v2 + 32, a2);
  sub_1ABA94E50(v2 + 32, *(v2 + 56));
  sub_1ABAA4354();
  return swift_endAccess();
}

uint64_t VisualUnderstandingService.ChangeSequence.deinit()
{

  sub_1ABA84B54((v0 + 32));
  return v0;
}

uint64_t sub_1ABEC4EE4()
{

  sub_1ABA84B54((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC4FD4(uint64_t a1, uint64_t a2)
{
  sub_1ABA844B0(v2 + 16, a2);
  sub_1ABA94E50(v2 + 16, *(v2 + 40));
  sub_1ABAA4354();
  return swift_endAccess();
}

uint64_t VisualUnderstandingService.EntityUpdate.tag.getter()
{
  v2 = sub_1ABAA0880();
  v3 = type metadata accessor for VisualUnderstandingService.EntityUpdate(v2);
  return sub_1ABB3E5B4(v1 + *(v3 + 24), v0, &qword_1EB4DC6F0, qword_1ABF78360);
}

uint64_t VisualUnderstandingService.UpdateType.hashValue.getter(unsigned __int8 a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABEC51FC(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  VisualUnderstandingService.UpdateType.hash(into:)(v4, v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABEC5254(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656E6E69 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEC52E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEC5254(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEC530C(uint64_t a1)
{
  v2 = sub_1ABEC5BE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEC5348(uint64_t a1)
{
  v2 = sub_1ABEC5BE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VisualUnderstandingService.ChangeBookmark.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DC708, &qword_1ABF77880);
  sub_1ABA7BB64();
  v5 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = *v0;
  v10 = v0[1];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABB0DBF0(v9, v10);
  sub_1ABEC5BE8();
  sub_1ABF252E4();
  v11 = v9;
  v12 = v10;
  sub_1ABC38D74();
  sub_1ABF24F84();
  sub_1ABA96210(v11, v12);
  (*(v5 + 8))(v8, v3);
  sub_1ABA7BC90();
}

uint64_t VisualUnderstandingService.ChangeBookmark.hashValue.getter()
{
  sub_1ABA7AB5C();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

void VisualUnderstandingService.ChangeBookmark.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DC710, &qword_1ABF77888);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABEC5BE8();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABC38DC8();
    sub_1ABF24E64();
    (*(v7 + 8))(v10, v5);
    *v4 = v11;
  }

  sub_1ABA84B54(v2);
  sub_1ABA7BC90();
}

uint64_t sub_1ABEC569C(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingService.Source.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t VisualUnderstandingService.Context.init()()
{
  sub_1ABAA0880();
  sub_1ABF21F04();
  sub_1ABA9980C(v0);
  v1 = type metadata accessor for VisualUnderstandingService.Context(0);
  v2 = *(v1 + 20);
  sub_1ABA9980C(v0 + v2);
  v3 = *(v1 + 24);
  *(v0 + v3) = 3;
  sub_1ABAB480C(v0, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA9980C(v0);
  sub_1ABAB480C(v0 + v2, &qword_1EB4DC6F0, qword_1ABF78360);
  result = sub_1ABA9980C(v0 + v2);
  *(v0 + v3) = 3;
  return result;
}

uint64_t sub_1ABEC58D8()
{
  v2 = sub_1ABAA0880();
  v4 = v3(v2);
  return sub_1ABB3E5B4(v1 + *(v4 + 20), v0, &qword_1EB4DC6F0, qword_1ABF78360);
}

uint64_t VisualUnderstandingService.Context.asset.setter()
{
  v2 = sub_1ABAA4348();
  v3 = v1 + *(type metadata accessor for VisualUnderstandingService.Context(v2) + 20);

  return sub_1ABEC5C5C(v0, v3);
}

void (*VisualUnderstandingService.Context.asset.modify())()
{
  v0 = sub_1ABAA4348();
  type metadata accessor for VisualUnderstandingService.Context(v0);
  return nullsub_1;
}

uint64_t VisualUnderstandingService.Context.source.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for VisualUnderstandingService.Context(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t VisualUnderstandingService.Context.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for VisualUnderstandingService.Context(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*VisualUnderstandingService.Context.source.modify())()
{
  v0 = sub_1ABAA4348();
  type metadata accessor for VisualUnderstandingService.Context(v0);
  return nullsub_1;
}

uint64_t sub_1ABEC5A64()
{
  v1 = sub_1ABAA4348();
  v2(v1);
  sub_1ABA7BBB0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1ABEC5AD8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1ABEC5B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABEC5BE8()
{
  result = qword_1EB4CFA70;
  if (!qword_1EB4CFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA70);
  }

  return result;
}

uint64_t sub_1ABEC5C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABEC5CD0()
{
  result = qword_1EB4DC718;
  if (!qword_1EB4DC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC718);
  }

  return result;
}

unint64_t sub_1ABEC5F24()
{
  result = qword_1EB4DC748;
  if (!qword_1EB4DC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC748);
  }

  return result;
}

unint64_t sub_1ABEC5F7C()
{
  result = qword_1EB4DC750;
  if (!qword_1EB4DC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC750);
  }

  return result;
}

unint64_t sub_1ABEC5FD4()
{
  result = qword_1EB4DC758;
  if (!qword_1EB4DC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC758);
  }

  return result;
}

uint64_t sub_1ABEC6030(uint64_t a1)
{
  result = type metadata accessor for EntityRecognitionClient(319);
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

uint64_t dispatch thunk of VisualUnderstandingService.entities(for:)()
{
  sub_1ABA7D5F0();
  return (*(v0 + 120))();
}

{
  sub_1ABA7D5F0();
  return (*(v0 + 128))();
}

uint64_t sub_1ABEC6324(uint64_t a1)
{
  sub_1ABEC637C();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1ABEC637C()
{
  if (!qword_1ED86E290)
  {
    sub_1ABEC68A0(0, &unk_1ED8705A8, MEMORY[0x1E6968FB0]);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED86E290);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VisualUnderstandingService.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABEC64E4(uint64_t a1)
{
  result = sub_1ABF235E4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABF23484();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1ABEC6800(uint64_t a1)
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1ABEC68A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1ABF247E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1ABEC692C(uint64_t a1)
{
  result = type metadata accessor for VisualUnderstandingService.EntityUpdate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABEC6998(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_1ABEC69E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1ABEC6A68(uint64_t a1)
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

_BYTE *sub_1ABEC6B08(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1ABEC6C0C(uint64_t a1)
{
  sub_1ABEC68A0(319, &qword_1ED8705A0, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1ABEC6CAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABEC6CAC()
{
  if (!qword_1EB4CFA38)
  {
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CFA38);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualUnderstandingStreamingGallery.ClusterResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for VisualUnderstandingStreamingGallery.ClusterResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualUnderstandingService.ChangeBookmark.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABEC6E4C()
{
  result = qword_1EB4DC760;
  if (!qword_1EB4DC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC760);
  }

  return result;
}

unint64_t sub_1ABEC6EA4()
{
  result = qword_1EB4CFA60;
  if (!qword_1EB4CFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA60);
  }

  return result;
}

unint64_t sub_1ABEC6EFC()
{
  result = qword_1EB4CFA68;
  if (!qword_1EB4CFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA68);
  }

  return result;
}

unint64_t sub_1ABEC6F50()
{
  result = qword_1EB4DC768;
  if (!qword_1EB4DC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC768);
  }

  return result;
}

uint64_t sub_1ABEC6FDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABEC967C(a1, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1ABEC97FC(v7, v9 + v8);
  *(v2 + 16) = sub_1ABEC96E0;
  *(v2 + 24) = v9;
  sub_1ABEC967C(a1, v7);
  v16 = &type metadata for VisualUnderstandingServiceBackendV1.EntitySequenceV1.Iterator;
  v17 = sub_1ABEC9750();
  v10 = sub_1ABF233D4();
  v12 = v11;
  sub_1ABEC97A4(v7, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  *&v15 = v10;
  *(&v15 + 1) = v12;
  sub_1ABEC97A4(a1, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  sub_1ABA946C0(&v15, v2 + 32);
  return v2;
}

uint64_t sub_1ABEC715C(uint64_t a1)
{
  *(v1 + 16) = sub_1ABEC9598;
  *(v1 + 24) = a1;
  *(v1 + 56) = &type metadata for VisualUnderstandingServiceBackendV1.ChangeSequenceV1.Iterator;
  *(v1 + 64) = sub_1ABEC95B4();
  *(v1 + 32) = a1;
  *(v1 + 40) = 0;

  return v1;
}

void *sub_1ABEC71D0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1ABAD219C(&qword_1EB4D1E40, &qword_1ABF349F0);
  v8 = sub_1ABA7AB80(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = sub_1ABF235E4();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = type metadata accessor for EntityRecognitionClient(0);
  (*(v13 + 16))(v17, a1 + *(v18 + 20), v11);
  sub_1ABB3E5B4(a2, v10, &qword_1EB4D1E40, &qword_1ABF349F0);
  sub_1ABF236E4();
  swift_allocObject();
  v19 = sub_1ABF235A4();
  if (v3)
  {
    sub_1ABAB480C(a2, &qword_1EB4D1E40, &qword_1ABF349F0);
    sub_1ABA7C950();
    sub_1ABEC97A4(a1, v20);
    type metadata accessor for VisualUnderstandingServiceBackendV1(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v19;
    sub_1ABAB480C(a2, &qword_1EB4D1E40, &qword_1ABF349F0);
    *(v4 + 16) = v21;
    sub_1ABEC97FC(a1, v4 + OBJC_IVAR____TtC20IntelligencePlatform35VisualUnderstandingServiceBackendV1_client);
  }

  return v4;
}

void sub_1ABEC73FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = sub_1ABF234C4();
  sub_1ABA7BB64();
  v57 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v52 = v8 - v7;
  v9 = sub_1ABA8409C();
  type metadata accessor for VisualUnderstandingService.RecognitionResult(v9);
  sub_1ABA7BB64();
  v53 = v11;
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v56 = (v13 - v12);
  v14 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  v23 = sub_1ABA7AB80(v22);
  MEMORY[0x1EEE9AC00](v23);
  v47 = &v46 - v24;
  sub_1ABA8409C();
  v25 = sub_1ABF21F04();
  if (sub_1ABA7E1E0(a2, 1, v25) == 1 && sub_1ABA7E1E0(a3, 1, v25) == 1)
  {
    v26 = sub_1ABF23654();
    v27 = 1;
    v28 = v47;
  }

  else
  {
    sub_1ABB3E5B4(a2, v21, &qword_1EB4DC6F0, qword_1ABF78360);
    sub_1ABB3E5B4(a3, v18, &qword_1EB4DC6F0, qword_1ABF78360);
    v28 = v47;
    MEMORY[0x1AC5A8CA0](v21, v18);
    v26 = sub_1ABF23654();
    v27 = 0;
  }

  sub_1ABA7B9B4(v28, v27, 1, v26);
  type metadata accessor for EntityRecognitionClient(0);
  v29 = sub_1ABF236C4();
  if (v29)
  {
    v30 = v29;
    v31 = *(v29 + 16);
    if (v31)
    {
      v58 = MEMORY[0x1E69E7CC0];
      sub_1ABADEE3C(0, v31, 0);
      v32 = 0;
      v33 = v58;
      v50 = v30 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v51 = v30;
      v48 = v57 + 8;
      v49 = v57 + 16;
      v34 = v54;
      while (v32 < *(v30 + 16))
      {
        v35 = v57;
        v36 = v52;
        v37 = v55;
        (*(v57 + 16))(v52, v50 + *(v57 + 72) * v32, v55);
        v38 = sub_1ABF232F4();
        v39 = v56;
        sub_1ABF234B4();
        sub_1ABF23494();
        *v39 = v38;
        *(v39 + *(v34 + 24)) = v40;
        (*(v35 + 8))(v36, v37);
        v58 = v33;
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          v43 = sub_1ABA81DC8(v41);
          sub_1ABADEE3C(v43, v44, v45);
          v39 = v56;
          v33 = v58;
        }

        ++v32;
        *(v33 + 16) = v42 + 1;
        sub_1ABEC97FC(v39, v33 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v42);
        v30 = v51;
        if (v31 == v32)
        {

          sub_1ABAB480C(v47, &qword_1EB4DC700, &unk_1ABF785B0);
          return;
        }
      }

      __break(1u);
    }

    else
    {

      sub_1ABAB480C(v28, &qword_1EB4DC700, &unk_1ABF785B0);
    }
  }

  else
  {
    sub_1ABAB480C(v28, &qword_1EB4DC700, &unk_1ABF785B0);
  }
}

void sub_1ABEC7880(uint64_t *a1)
{
  v2 = v1;
  sub_1ABEC8558();
  sub_1ABF23684();
  v3 = sub_1ABF246B4();
  if (!v1)
  {
    if (v3)
    {
      v14 = v3;
      sub_1ABF23664();

      type metadata accessor for VisualUnderstandingService.ChangeSequence();
      swift_allocObject();

      sub_1ABEC715C(v25);

      return;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7DE3C();
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1ED871B40);
    v16 = sub_1ABF237D4();
    v17 = sub_1ABF24664();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      sub_1ABAD219C(&qword_1EB4DC778, &qword_1ABF78350);
      v20 = sub_1ABF23C74();
      v22 = sub_1ABADD6D8(v20, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1ABA78000, v16, v17, "Unexpected bookmark result: %s", v18, 0xCu);
      sub_1ABA84B54(v19);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    v23 = sub_1ABEC859C();
    v2 = sub_1ABA7BD00(&type metadata for VisualUnderstandingService.Error, v23);
    *v24 = 0;
    swift_willThrow();
  }

  if (qword_1ED871B38 != -1)
  {
    sub_1ABA7DE3C();
    swift_once();
  }

  v4 = sub_1ABF237F4();
  sub_1ABA7AA24(v4, qword_1ED871B40);
  v5 = v2;
  v6 = sub_1ABF237D4();
  v7 = sub_1ABF24664();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1ABA78000, v6, v7, "Failed to decode bookmark: %@", v8, 0xCu);
    sub_1ABAB480C(v9, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v12 = sub_1ABEC859C();
  sub_1ABA7BD00(&type metadata for VisualUnderstandingService.Error, v12);
  *v13 = 0;
  swift_willThrow();
}

void sub_1ABEC7D10(uint64_t *a2@<X8>)
{
  v3 = sub_1ABF234C4();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = sub_1ABAD219C(&qword_1EB4DC780, &qword_1ABF78358);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1ABF23534();
  sub_1ABB3E5B4(v17, v14, &qword_1EB4DC780, &qword_1ABF78358);
  if (sub_1ABA7E1E0(v14, 1, v3) == 1)
  {
    sub_1ABAB480C(v17, &qword_1EB4DC780, &qword_1ABF78358);
    type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
    v18 = sub_1ABA8C900();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v3);
    v22 = sub_1ABF232F4();
    v23 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
    sub_1ABF234B4();
    sub_1ABF23494();
    *a2 = v22;
    *(a2 + *(v23 + 24)) = v24;
    (*(v5 + 8))(v9, v3);
    sub_1ABAB480C(v17, &qword_1EB4DC780, &qword_1ABF78358);
    v18 = a2;
    v19 = 0;
    v20 = 1;
    v21 = v23;
  }

  sub_1ABA7B9B4(v18, v19, v20, v21);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABEC7F1C(uint64_t a1)
{
  v2 = sub_1ABF233F4();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v24 = v4;
      v25 = v2;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1ABADE07C(0, v14, 0);
      v15 = (a1 + 32);
      do
      {
        v17 = *v15++;
        v16 = v17;
        v19 = *(v26 + 16);
        v18 = *(v26 + 24);
        if (v19 >= v18 >> 1)
        {
          v20 = sub_1ABA81DC8(v18);
          sub_1ABADE07C(v20, v21, v22);
        }

        *(v26 + 16) = v19 + 1;
        *(v26 + 8 * v19 + 32) = v16;
        --v14;
      }

      while (v14);
      v2 = v25;
      v4 = v24;
    }
  }

  sub_1ABF236A4();

  (*(v4 + 32))(v13, v8, v2);
  type metadata accessor for VisualUnderstandingService.EntitySequence();
  swift_allocObject();
  return sub_1ABEC6FDC(v13);
}

uint64_t sub_1ABEC80E8(uint64_t *a1, uint64_t *a2)
{
  v2 = sub_1ABF23464();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E69E05E0], v2);
  v9 = sub_1ABF23324();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 0x100000000) != 0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = *&v9;
  }

  return result;
}

void sub_1ABEC820C(uint64_t *a1)
{
  v1 = sub_1ABF23464();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  (*(v3 + 104))(v6 - v5, *MEMORY[0x1E69E05E0], v1);
  v8 = sub_1ABF23454();
  (*(v3 + 8))(v7, v1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1ABADEE94(0, v9, 0);
    v10 = 0;
    v11 = v19;
    v12 = (v8 + 40);
    while (v10 < *(v8 + 16))
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1ABADEE94(v15 > 1, v16 + 1, 1);
      }

      ++v10;
      *(v19 + 16) = v16 + 1;
      v17 = v19 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 4;
      if (v9 == v10)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_9:
    type metadata accessor for VisualUnderstandingService.SimilarEntitySequence();
    v18 = swift_allocObject();
    v18[5] = &type metadata for VisualUnderstandingServiceBackendV1.SimilarEntitySequenceV1.Iterator;
    v18[6] = sub_1ABEC9608();
    v18[2] = v11;
    v18[3] = 0;
  }
}

uint64_t sub_1ABEC8420()
{

  sub_1ABA7C950();
  sub_1ABEC97A4(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABEC84B8(uint64_t a1)
{
  result = type metadata accessor for EntityRecognitionClient(319);
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

unint64_t sub_1ABEC8558()
{
  result = qword_1EB4CF7B8;
  if (!qword_1EB4CF7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CF7B8);
  }

  return result;
}

unint64_t sub_1ABEC859C()
{
  result = qword_1EB4DC770;
  if (!qword_1EB4DC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC770);
  }

  return result;
}

void sub_1ABEC85F0(_BYTE *a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  sub_1ABF23294();
  sub_1ABA7BB64();
  v67 = v4;
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v66 = v6 - v5;
  sub_1ABA8409C();
  sub_1ABF23204();
  sub_1ABA7BB64();
  v74 = v8;
  v75 = v7;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v73 = v10 - v9;
  sub_1ABA8409C();
  sub_1ABF232D4();
  sub_1ABA7BB64();
  v70 = v12;
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v69 = v14 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4DC798, &unk_1ABF78530);
  v16 = sub_1ABA7AB80(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  v19 = sub_1ABF23164();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7AC18();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = *v1;
  v29 = (v28 + 32);
  v81 = v28 + 88;
  v82 = (v28 + 16);
  v80 = *MEMORY[0x1E69E0548];
  v79 = *MEMORY[0x1E69E0550];
  v72 = v28;
  v30 = (v28 + 8);
  v77 = (v28 + 32);
  v78 = v27;
  while (1)
  {
    sub_1ABF233B4();
    if (sub_1ABA7E1E0(v18, 1, v19) == 1)
    {
      sub_1ABAB480C(v18, &qword_1EB4DC798, &unk_1ABF78530);
      v40 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
      v41 = v76;
      v42 = 1;
      goto LABEL_17;
    }

    (*v29)(v26, v18, v19);
    (*v82)(v23, v26, v19);
    v31 = sub_1ABA99828();
    v33 = v32(v31);
    if (v33 == v80)
    {
      v43 = v72 + 96;
      v44 = sub_1ABA99828();
      v45(v44);
      v47 = v69;
      v46 = v70;
      v48 = v71;
      (*(v70 + 32))(v69, v23, v71);
      v49 = v73;
      sub_1ABF232A4();
      v50 = sub_1ABEC8C2C();
      (*(v74 + 8))(v49, v75);
      v51 = sub_1ABF232C4();
      v52 = sub_1ABF232B4();
      (*(v46 + 8))(v47, v48);
      (*(v43 - 88))(v26, v19);
      v53 = v76;
      *v76 = v50;
      *(v53 + 1) = v51;
      *(v53 + 2) = v52;
      v54 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
      swift_storeEnumTagMultiPayload();
      v41 = v53;
      goto LABEL_16;
    }

    if (v33 == v79)
    {
      break;
    }

    if (v2[1])
    {
      v34 = *v30;
      (*v30)(v26, v19);
    }

    else
    {
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7DE3C();
        swift_once();
      }

      v35 = sub_1ABF237F4();
      sub_1ABA7AA24(v35, qword_1ED871B40);
      v36 = sub_1ABF237D4();
      v37 = sub_1ABF24674();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1ABA78000, v36, v37, "Unknown type of VUGalleryUpdate was received. Ignoring.", v38, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v34 = *v30;
      (*v30)(v26, v19);
      *(v2 + 8) = 1;
      v29 = v77;
    }

    v39 = sub_1ABA99828();
    (v34)(v39);
  }

  v55 = v72 + 96;
  v56 = sub_1ABA99828();
  v57(v56);
  v59 = v67;
  v58 = v68;
  v60 = *(v67 + 32);
  v82 = v26;
  v61 = v66;
  v60(v66, v23, v68);
  v62 = v73;
  sub_1ABF23264();
  v63 = sub_1ABEC8C2C();
  (*(v74 + 8))(v62, v75);
  v64 = sub_1ABF23274();
  type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v65 = v76;
  sub_1ABF23284();
  (*(v59 + 8))(v61, v58);
  (*(v55 - 88))(v82, v19);
  *v65 = v63;
  *(v65 + 1) = v64;
  v54 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  swift_storeEnumTagMultiPayload();
  v41 = v65;
LABEL_16:
  v42 = 0;
  v40 = v54;
LABEL_17:
  sub_1ABA7B9B4(v41, v42, 1, v40);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABEC8C2C()
{
  v1 = sub_1ABF23204();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0, v1);
  v8 = (*(v3 + 88))(v7, v1);
  if (v8 == *MEMORY[0x1E69E0560])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x1E69E0570])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E69E0568])
  {
    return 2;
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

void sub_1ABEC8D98(uint64_t *a1@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF233C4();
  if (v2)
  {
    v3 = v2;
    v19[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v19];
    v5 = v19[0];
    if (v4)
    {
      v6 = sub_1ABF21DD4();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v18 = v5;
      sub_1ABF21BE4();

      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_1ABEC859C();
    v10 = sub_1ABA7BD00(&type metadata for VisualUnderstandingService.Error, v9);
    sub_1ABA9A7C8(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void sub_1ABEC8EAC(uint64_t a1@<X8>)
{
  v3 = sub_1ABF23334();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  v10 = sub_1ABF23314();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = v1[1];
  v18 = *(*v1 + 16);
  if (v17 == v18)
  {
    sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
    sub_1ABA8C900();
    sub_1ABA7BC1C();

    sub_1ABA7B9B4(v19, v20, v21, v22);
  }

  else if (v17 >= v18)
  {
    __break(1u);
  }

  else
  {
    v24 = *v1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17;
    v1[1] = v17 + 1;
    (*(v12 + 16))(v16, v24, v10);
    v28 = sub_1ABF232F4();
    sub_1ABF232F4();
    sub_1ABF24454();
    sub_1ABEC9148();
    (*(v5 + 8))(v9, v3);
    sub_1ABF232E4();
    sub_1ABA82858();
    type metadata accessor for VisualUnderstandingService.ObservationSequence();
    v25 = swift_allocObject();
    v25[5] = &type metadata for VisualUnderstandingServiceBackendV1.ObservationSequenceV1.Iterator;
    v25[6] = sub_1ABB66238();
    v25[2] = v16;
    v25[3] = 0;
    v26 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
    v27 = *(v26 + 80);
    *a1 = v28;
    *(a1 + 8) = v29;
    *(a1 + 24) = v30;
    *(a1 + 32) = v31;
    *(a1 + 40) = v32;
    sub_1ABF23304();
    (*(v12 + 8))(v16, v10);
    *(a1 + v27) = v25;
    sub_1ABA7B9B4(a1, 0, 1, v26);
    sub_1ABA7BC1C();
  }
}

void sub_1ABEC9148()
{
  v1 = v0;
  v2 = sub_1ABF23334();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 != *MEMORY[0x1E69E05D0])
  {
    if (v9 != *MEMORY[0x1E69E05C8])
    {
      if (v9 != *MEMORY[0x1E69E05C0])
      {
        if (_Records_GDEntityClass_records)
        {
          sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v14);
          v13 = sub_1ABA8EE34();
          (*(v4 + 8))(v8, v2, v13);
          return;
        }

        goto LABEL_17;
      }

      if (_Records_GDEntityClass_records)
      {
        v10 = *(_Records_GDEntityClass_records + 0x5A8);
        v11 = *(_Records_GDEntityClass_records + 0x5B0);
        v12 = *(_Records_GDEntityClass_records + 0x5A0);
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (_Records_GDEntityClass_records)
    {
      v10 = *(_Records_GDEntityClass_records + 0x278);
      v11 = *(_Records_GDEntityClass_records + 0x280);
      v12 = *(_Records_GDEntityClass_records + 0x270);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_15;
  }

  v10 = *(_Records_GDEntityClass_records + 8);
  v11 = *(_Records_GDEntityClass_records + 8 + 8);
  v12 = *_Records_GDEntityClass_records;
LABEL_10:
  sub_1ABA8882C(v12, v10, v11, v14);
  sub_1ABA8EE34();
}

void sub_1ABEC936C(uint64_t *a1@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF233E4();
  if (v2)
  {
    v3 = v2;
    v19[0] = 0;
    v4 = [objc_opt_self() archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v19];
    v5 = v19[0];
    if (v4)
    {
      v6 = sub_1ABF21DD4();
      v8 = v7;

      *a1 = v6;
      a1[1] = v8;
    }

    else
    {
      v18 = v5;
      sub_1ABF21BE4();

      swift_willThrow();
    }
  }

  else
  {
    v9 = sub_1ABEC859C();
    v10 = sub_1ABA7BD00(&type metadata for VisualUnderstandingService.Error, v9);
    sub_1ABA9A7C8(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_1ABEC9480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1ABEC947C(a1);
  v6 = v5;
  result = sub_1ABEC97A4(v2, type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1);
  *a2 = v4;
  a2[1] = v6;
  return result;
}

void sub_1ABEC94DC(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v5 = *(v4 + 40);
    *a1 = *(v4 + 32);
    *(a1 + 8) = v5;
    v1[1] = v2 + 1;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_1ABEC952C()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    result = *(*v0 + 8 * v1 + 32);
    v0[1] = v1 + 1;
  }

  return result;
}

uint64_t sub_1ABEC9568@<X0>(uint64_t a1@<X8>)
{
  result = sub_1ABEC952C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1ABEC95B4()
{
  result = qword_1EB4CF998;
  if (!qword_1EB4CF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF998);
  }

  return result;
}

unint64_t sub_1ABEC9608()
{
  result = qword_1EB4DC788;
  if (!qword_1EB4DC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC788);
  }

  return result;
}

uint64_t sub_1ABEC967C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABEC96E0(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0);
  sub_1ABA7AB80(v2);
  sub_1ABEC936C(a1);
}

unint64_t sub_1ABEC9750()
{
  result = qword_1EB4CF990;
  if (!qword_1EB4CF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF990);
  }

  return result;
}

uint64_t sub_1ABEC97A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABEC97FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABA82858();
  v5(v4);
  sub_1ABA7BBB0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1ABEC9890(uint64_t a1)
{
  result = sub_1ABF233F4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1ABEC9920(uint64_t a1)
{
  result = sub_1ABEC9948();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABEC9948()
{
  result = qword_1EB4DC790;
  if (!qword_1EB4DC790)
  {
    type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC790);
  }

  return result;
}

uint64_t sub_1ABEC99B8()
{
  v10 = MEMORY[0x1E69E7CC0];
  sub_1ABADE07C(0, 0, 0);
  while (1)
  {
    v0 = sub_1ABEC4C94(v0, v1);
    if (v1)
    {
      break;
    }

    v2 = v0;
    if (!v0)
    {
      if (qword_1EB4CE780 != -1)
      {
        swift_once();
      }

      v3 = sub_1ABF237F4();
      sub_1ABA7AA24(v3, qword_1EB4CE788);
      v4 = sub_1ABF237D4();
      v5 = sub_1ABF24674();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1ABA78000, v4, v5, "GDVUGalleryTransaction.entities: Observation ID should never be zero. This is an error in VU.", v6, 2u);
        MEMORY[0x1AC5AB8B0](v6, -1, -1);
      }
    }

    v8 = *(v10 + 16);
    v7 = *(v10 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1ABADE07C(v7 > 1, v8 + 1, 1);
    }

    *(v10 + 16) = v8 + 1;
    *(v10 + 8 * v8 + 32) = v2;
  }

  return v10;
}

id GDVUVisualUnderstandingService.gallery.getter()
{
  v0 = *(*sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner) + 16);
  v1 = objc_allocWithZone(GDVUGallery);
  *&v1[OBJC_IVAR___GDVUGallery_inner] = v0;
  v3.receiver = v1;
  v3.super_class = GDVUGallery;

  return objc_msgSendSuper2(&v3, sel_init);
}

id GDVUVisualUnderstandingService.init(client:version:url:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1ABF21CF4();
  v7 = 0;
  if (sub_1ABA7E1E0(a3, 1, v6) != 1)
  {
    v7 = sub_1ABF21C54();
    (*(*(v6 - 8) + 8))(a3, v6);
  }

  v12[0] = 0;
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithClient:a1 version:a2 url:v7 error:v12];

  if (v8)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v8;
}

void GDVUVisualUnderstandingService.init(client:version:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v24 = v23;
  v26 = v25;
  v27 = sub_1ABAA4780();
  v28 = type metadata accessor for EntityRecognitionClient(v27);
  v29 = sub_1ABA7AB80(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v30 = type metadata accessor for VisualUnderstandingService.Version(0);
  v31 = sub_1ABA7AB80(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v41 - v33;
  if (v26 == 1)
  {
    sub_1ABAE2EC4();
    v35 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
    v36 = v34;
    v37 = 0;
  }

  else
  {
    if (v26)
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF96220);
      type metadata accessor for GDVUVersion(0);
      sub_1ABF24C54();
      sub_1ABF24CD4();
      __break(1u);
      return;
    }

    v35 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
    v36 = v34;
    v37 = 1;
  }

  sub_1ABA7B9B4(v36, v37, 1, v35);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA8C4CC();
  sub_1ABED22C8();
  sub_1ABED22C8();
  type metadata accessor for VisualUnderstandingService(0);
  sub_1ABA90758();
  swift_allocObject();
  VisualUnderstandingService.init(client:version:)();
  if (v21)
  {

    sub_1ABAB480C(v24, &qword_1EB4D1E40, &qword_1ABF349F0);
    v39 = sub_1ABAA6260();
    type metadata accessor for GDVUVisualUnderstandingService(v39);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v38;
    sub_1ABAA6260();
    *&v20[OBJC_IVAR___GDVUVisualUnderstandingService_inner] = v40;
    v42.receiver = v20;
    v42.super_class = GDVUVisualUnderstandingService;
    objc_msgSendSuper2(&v42, sel_init);

    sub_1ABAB480C(v24, &qword_1EB4D1E40, &qword_1ABF349F0);
  }

  sub_1ABA7BC90();
}

void GDVUVisualUnderstandingService.recognize(in:context:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  sub_1ABA7BB64();
  v34 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v10 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v33 - v17;
  v19 = *(v0 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (v4)
  {
    v20 = [v4 moment];
    sub_1ABF21EE4();

    v21 = sub_1ABF21F04();
    sub_1ABA7B9B4(v18, 0, 1, v21);
    v22 = [v4 asset];
    sub_1ABF21EE4();

    v23 = v14;
    v24 = 0;
  }

  else
  {
    v21 = sub_1ABF21F04();
    sub_1ABA7B9B4(v18, 1, 1, v21);
    v23 = v14;
    v24 = 1;
  }

  sub_1ABA7B9B4(v23, v24, 1, v21);
  sub_1ABA93E20((v19 + 16), *(v19 + 40));
  sub_1ABEC73FC(v6, v18, v14);
  v26 = v25;
  sub_1ABAB480C(v14, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABAB480C(v18, &qword_1EB4DC6F0, qword_1ABF78360);
  if (!v1)
  {
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = sub_1ABF24BC4();
      type metadata accessor for GDVURecognitionResult(v29);
      v30 = *(v34 + 80);
      v33[1] = v27;
      v31 = v27 + ((v30 + 32) & ~v30);
      v32 = *(v34 + 72);
      do
      {
        sub_1ABED22C8();
        v35 = *v2;
        sub_1ABECA518(*(v2 + *(v7 + 24)));
        sub_1ABA93AA8();
        sub_1ABED261C();
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v31 += v32;
        --v28;
      }

      while (v28);
    }
  }

  sub_1ABA7BC90();
}

void *sub_1ABECA518(float a1)
{
  sub_1ABA81488();
  v3 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v10 = *v1;
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  v7 = objc_allocWithZone(GDVURecognitionResult);
  return sub_1ABED1658(&v10, v6, a1);
}

id sub_1ABECA6CC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v63 = a3;
  v7 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - v8;
  v62 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  v16 = *(a2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (a1)
  {
    v17 = sub_1ABAAB7C8(a1);
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v19 = v17;
      v60 = a1;
      *&v65 = MEMORY[0x1E69E7CC0];
      result = sub_1ABADDFFC(0, v17 & ~(v17 >> 63), 0);
      if (v19 < 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v57 = v16;
      v58 = v3;
      v21 = 0;
      v18 = v65;
      v22 = v60;
      i = v60 & 0xC000000000000001;
      do
      {
        if (i)
        {
          v23 = MEMORY[0x1AC5AA170](v21, v22);
        }

        else
        {
          v23 = *(v22 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = [v23 intValue];

        *&v65 = v18;
        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1ABADDFFC((v26 > 1), v27 + 1, 1);
          v22 = v60;
          v18 = v65;
        }

        ++v21;
        *(v18 + 16) = v27 + 1;
        *(v18 + 8 * v27 + 32) = v25;
      }

      while (v19 != v21);
      v16 = v57;
      v4 = v58;
    }
  }

  else
  {
    v18 = 0;
  }

  sub_1ABA93E20((v16 + 16), *(v16 + 40));
  v28 = sub_1ABEC7F1C(v18);
  v29 = v4;

  if (v4)
  {
    _Block_release(v63);
  }

  else
  {
    v60 = (v63 + 16);

    v59 = v15;
    for (i = v28; ; v28 = i)
    {
      sub_1ABEC6FD0();
      v30 = v62;
      if (sub_1ABA7E1E0(v15, 1, v62) == 1)
      {

        goto LABEL_25;
      }

      v31 = *(v15 + 4);
      v32 = v15[40];
      v33 = *(v30 + 64);
      v34 = *(v30 + 80);
      v35 = *&v15[v34];
      v36 = *(v15 + 1);
      *v12 = *v15;
      *(v12 + 1) = v36;
      *(v12 + 4) = v31;
      v12[40] = v32;
      sub_1ABED2054(&v15[v33], &v12[v33]);
      *&v12[v34] = v35;
      v37 = v29;
      sub_1ABEC99B8();
      v38 = v61;
      sub_1ABAE2EC4();
      v39 = *v38;

      v40 = *(v30 + 64);

      v41 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      result = sub_1ABAB480C(v38 + v40, &qword_1EB4DC6F0, qword_1ABF78360);
      if (!v41)
      {
        goto LABEL_27;
      }

      type metadata accessor for GDVUEntityClass(result);
      v42 = *(v12 + 3);
      v43 = *(v12 + 4);
      v44 = v12[40];
      v65 = *(v12 + 8);
      v66 = v42;
      v67 = v43;
      v68 = v44;
      v45 = sub_1ABECB098(&v65);
      v46 = v64;
      sub_1ABAE2EC4();
      v47 = sub_1ABF21F04();
      v48 = sub_1ABA7E1E0(v46, 1, v47);
      v49 = 0;
      if (v48 != 1)
      {
        v50 = v64;
        v49 = sub_1ABF21ED4();
        (*(*(v47 - 8) + 8))(v50, v47);
      }

      v51 = sub_1ABF240C4();
      v52 = (*(v63 + 2))(v63, v41, v45, v49, v51);

      v29 = v37;
      if (!v52)
      {
        break;
      }

      sub_1ABAB480C(v12, &qword_1EB4D3878, &unk_1ABF3DF08);
      v15 = v59;
    }

    v28 = i;

    v53 = sub_1ABAB480C(v12, &qword_1EB4D3878, &unk_1ABF3DF08);
LABEL_25:
    v54 = (*(v28 + 16))(&v65, v53);
    type metadata accessor for GDVUChangeBookmark(v54);
    v55 = v65;
    v69 = v65;
    v4 = sub_1ABECB128(&v69);

    sub_1ABA96210(v55, *(&v55 + 1));
    _Block_release(v63);
  }

  return v4;
}

void GDVUVisualUnderstandingService.entities(for:body:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v59 = v3;
  v60 = v4;
  v6 = v5;
  v62 = sub_1ABAD219C(&qword_1EB4D3878, &unk_1ABF3DF08);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7AC18();
  v61 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_1ABAD219C(&qword_1EB4D3870, &qword_1ABF3DF00);
  sub_1ABA7AB80(v13);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = *(v0 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  if (v6)
  {
    v18 = sub_1ABAAB7C8(v6);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v20 = v18;
      *&v64 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v18 & ~(v18 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v56 = v17;
      v57 = v1;
      v21 = 0;
      v19 = v64;
      i = v6 & 0xC000000000000001;
      v69 = v6;
      v22 = v20;
      do
      {
        if (i)
        {
          v23 = MEMORY[0x1AC5AA170](v21, v6);
        }

        else
        {
          v23 = *(v6 + 8 * v21 + 32);
        }

        v24 = v23;
        v25 = [v23 intValue];

        *&v64 = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          v28 = sub_1ABA7BBEC(v26);
          sub_1ABADDFFC(v28, v27 + 1, 1);
          v19 = v64;
        }

        ++v21;
        *(v19 + 16) = v27 + 1;
        *(v19 + 8 * v27 + 32) = v25;
        v6 = v69;
      }

      while (v22 != v21);
      v17 = v56;
      v2 = v57;
    }
  }

  else
  {
    v19 = 0;
  }

  sub_1ABA93E20((v17 + 16), *(v17 + 40));
  v29 = sub_1ABEC7F1C(v19);
  v30 = v2;

  if (!v2)
  {

    v31 = &qword_1EB4D3878;
    v58 = v16;
    for (i = v29; ; v29 = i)
    {
      sub_1ABEC6FD0();
      v32 = v62;
      if (sub_1ABA7E1E0(v16, 1, v62) == 1)
      {

        goto LABEL_22;
      }

      v33 = *(v16 + 4);
      v34 = v16[40];
      v35 = *(v32 + 64);
      v36 = *(v32 + 80);
      v37 = v32;
      v38 = *&v16[v36];
      v39 = *(v16 + 1);
      *v12 = *v16;
      *(v12 + 1) = v39;
      *(v12 + 4) = v33;
      v12[40] = v34;
      sub_1ABED2054(&v16[v35], &v12[v35]);
      *&v12[v36] = v38;
      v40 = sub_1ABEC99B8();
      v70 = v30;
      v41 = v61;
      v42 = v31;
      sub_1ABAE2EC4();
      v43 = *v41;

      v44 = *(v37 + 64);

      v45 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      v46 = sub_1ABAB480C(v41 + v44, &qword_1EB4DC6F0, qword_1ABF78360);
      if (!v45)
      {
        goto LABEL_24;
      }

      type metadata accessor for GDVUEntityClass(v46);
      v47 = *(v12 + 3);
      v48 = *(v12 + 4);
      v49 = v12[40];
      v64 = *(v12 + 8);
      v65 = v47;
      v66 = v48;
      v67 = v49;
      v50 = sub_1ABECB098(&v64);
      v51 = v59(v45, v50, &v12[v35], v40);

      if ((v51 & 1) == 0)
      {
        break;
      }

      v31 = v42;
      sub_1ABAB480C(v12, v42, &unk_1ABF3DF08);
      v30 = v70;
      v16 = v58;
    }

    v29 = i;

    v52 = sub_1ABAB480C(v12, &qword_1EB4D3878, &unk_1ABF3DF08);
LABEL_22:
    v53 = (*(v29 + 16))(&v64, v52);
    type metadata accessor for GDVUChangeBookmark(v53);
    v54 = v64;
    v68 = v64;
    sub_1ABECB128(&v68);

    sub_1ABA96210(v54, *(&v54 + 1));
  }

  sub_1ABA7BC90();
}

id sub_1ABECB098(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 32);
  v6 = objc_allocWithZone(GDVUEntityClass);
  v7 = &v6[OBJC_IVAR___GDVUEntityClass_inner];
  *v7 = v2;
  *(v7 + 1) = v1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v7[32] = v5;
  v9.receiver = v6;
  v9.super_class = GDVUEntityClass;

  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1ABECB128(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = objc_allocWithZone(GDVUChangeBookmark);
  v4 = &v3[OBJC_IVAR___GDVUChangeBookmark_inner];
  *v4 = v1;
  *(v4 + 1) = v2;
  v5 = sub_1ABA7D000();
  sub_1ABB0DBF0(v5, v6);
  v8.receiver = v3;
  v8.super_class = GDVUChangeBookmark;
  return objc_msgSendSuper2(&v8, sel_init);
}

void GDVUVisualUnderstandingService.keyObservation(for:output:)(void *a1, uint64_t *a2)
{
  v12 = [a1 intValue];
  v4 = sub_1ABEC376C(&v12);
  if (!v2)
  {
    if (v5)
    {
      v4 = 0;
LABEL_5:
      *a2 = v4;
      return;
    }

    if (v4)
    {
      goto LABEL_5;
    }

    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v6 = sub_1ABF237F4();
    sub_1ABA7AA24(v6, qword_1EB4CE788);
    v7 = sub_1ABF237D4();
    v8 = sub_1ABF24674();
    v9 = sub_1ABA84024();
    if (os_log_type_enabled(v9, v10))
    {
      sub_1ABA8179C();
      v11 = swift_slowAlloc();
      *v11 = 0;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    *a2 = 0;
  }
}

uint64_t GDVUVisualUnderstandingService.similarity(withBetween:and:output:)(void *a1, void *a2, double *a3)
{
  v10 = [a1 intValue];
  v9 = [a2 intValue];
  result = sub_1ABEC37B8(&v10, &v9);
  if (!v3)
  {
    v8 = *&result;
    if (v7)
    {
      v8 = NAN;
    }

    *a3 = v8;
  }

  return result;
}

void sub_1ABECB5B0(void *a1, uint64_t a2, uint64_t (**a3)(void, void, double))
{
  v11[0] = [a1 intValue];
  sub_1ABEC3820(v11);
  if (v3)
  {
LABEL_6:
    _Block_release(a3);
  }

  else
  {
    while (1)
    {
      sub_1ABEC4FD4(v5, v6);
      if (v12)
      {
LABEL_5:

        goto LABEL_6;
      }

      v7 = *&v11[1];
      v8 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v8)
      {
        break;
      }

      v9 = v8;
      v10 = (a3)[2](a3, v8, v7);

      if ((v10 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void GDVUVisualUnderstandingService.similarEntities(to:body:)(void *a1, uint64_t (*a2)(double))
{
  v10[0] = [a1 intValue];
  sub_1ABEC3820(v10);
  if (!v2)
  {
    while (1)
    {
      sub_1ABEC4FD4(v4, v5);
      if (v11)
      {
LABEL_5:

        return;
      }

      v6 = *&v10[1];
      v7 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      v9 = a2(v6);

      if ((v9 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

id sub_1ABECB854(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  v6 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = *(a2 + OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  v19 = *(a1 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  v46 = *(a1 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v47 = v19;
  sub_1ABB0DBF0(v46, v19);
  v20 = v50;
  sub_1ABEC38E4(&v46);
  v22 = v21;
  sub_1ABA96210(v46, v47);
  if (!v20)
  {
    v44 = 0;
    v50 = a3 + 2;

    v45 = v17;
    while (1)
    {
      sub_1ABEC4E60(v23);
      if (sub_1ABA7E1E0(v17, 1, v12) == 1)
      {
        break;
      }

      sub_1ABED25C4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABED25C4();
        sub_1ABED22C8();
        v25 = objc_allocWithZone(GDVUEntityUpdate);
        v26 = sub_1ABED1308(v8);
        v27 = (a3)[2](a3, v26);

        v23 = sub_1ABED261C();
        if ((v27 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v28 = *v14;
        v29 = v12;
        v30 = v11;
        v31 = a3;
        v32 = v22;
        v33 = v8;
        v34 = *(v14 + 1);
        v35 = *(v14 + 2);
        type metadata accessor for GDVUObservationUpdate(EnumCaseMultiPayload);
        LOBYTE(v46) = v28;
        v47 = v34;
        v48 = v35;
        v8 = v33;
        v22 = v32;
        a3 = v31;
        v11 = v30;
        v12 = v29;
        v17 = v45;
        v36 = sub_1ABECBF08(&v46);
        LOBYTE(v34) = (a3)[2](a3, v36);

        if ((v34 & 1) == 0)
        {
          break;
        }
      }
    }

    v18 = *(v22 + 24);
    v38 = v44;
    v39 = (*(v22 + 16))(&v46, v37);
    if (!v38)
    {
      type metadata accessor for GDVUChangeBookmark(v39);
      v41 = v46;
      v42 = v47;
      v49[0] = v46;
      v49[1] = v47;
      v18 = sub_1ABECB128(v49);

      sub_1ABA96210(v41, v42);
      _Block_release(a3);
      return v18;
    }
  }

  _Block_release(a3);
  return v18;
}

void GDVUVisualUnderstandingService.changes(since:body:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  v9 = sub_1ABA7AB80(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v48 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v47 = type metadata accessor for VisualUnderstandingService.MappingChange(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = (v17 - v16);
  v19 = sub_1ABAD219C(&qword_1EB4D3868, &qword_1ABF3DEF8);
  sub_1ABA7AB80(v19);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABAA26DC();
  v21 = *(v7 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  v50 = *(v7 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v51 = v21;
  sub_1ABB0DBF0(v50, v21);
  sub_1ABEC38E4(&v50);
  v23 = v22;
  sub_1ABA96210(v50, v51);
  if (!v1)
  {
    v46 = 0;

    v25 = v47;
    v26 = v48;
    v49 = v23;
    v54 = v0;
    do
    {
      sub_1ABEC4E60(v24);
      if (sub_1ABA7E1E0(v0, 1, v25) == 1)
      {
        break;
      }

      sub_1ABED25C4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        sub_1ABED25C4();
        sub_1ABED22C8();
        v28 = objc_allocWithZone(GDVUEntityUpdate);
        v29 = sub_1ABED1308(v26);
        v30 = v5();

        v24 = sub_1ABED261C();
      }

      else
      {
        v31 = *v18;
        v32 = v25;
        v33 = v14;
        v34 = v26;
        v35 = v5;
        v36 = v3;
        v37 = *(v18 + 1);
        v38 = *(v18 + 2);
        type metadata accessor for GDVUObservationUpdate(EnumCaseMultiPayload);
        LOBYTE(v50) = v31;
        v51 = v37;
        v52 = v38;
        v3 = v36;
        v5 = v35;
        v26 = v34;
        v14 = v33;
        v25 = v32;
        v23 = v49;
        v39 = sub_1ABECBF08(&v50);
        v30 = v5();
      }

      v0 = v54;
    }

    while ((v30 & 1) != 0);

    v41 = v46;
    v42 = (*(v23 + 16))(&v50, v40);
    if (v41)
    {
    }

    else
    {
      type metadata accessor for GDVUChangeBookmark(v42);
      v43 = v50;
      v44 = v51;
      v53[0] = v50;
      v53[1] = v51;
      sub_1ABECB128(v53);

      sub_1ABA96210(v43, v44);
    }
  }

  sub_1ABA7BC90();
}

id sub_1ABECBF08(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = objc_allocWithZone(GDVUObservationUpdate);
  v5 = &v4[OBJC_IVAR___GDVUObservationUpdate_inner];
  *v5 = v1;
  *(v5 + 1) = v2;
  *(v5 + 2) = v3;
  v7.receiver = v4;
  v7.super_class = GDVUObservationUpdate;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *sub_1ABECC04C()
{
  v0 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  v2 = sub_1ABAD219C(&qword_1EB4DC910, &qword_1ABF78650);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7AC18();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - v8);
  sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  sub_1ABEC7D10(v9);
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v6, 1, v0) == 1)
  {
    sub_1ABAB480C(v9, &qword_1EB4DC910, &qword_1ABF78650);
    return 0;
  }

  else
  {
    v11 = sub_1ABA99834();
    type metadata accessor for GDVURecognitionResult(v11);
    v10 = sub_1ABAA5B60(v12);
    sub_1ABA93AA8();
    sub_1ABED261C();
    sub_1ABAB480C(v9, &qword_1EB4DC910, &qword_1ABF78650);
  }

  return v10;
}

void *sub_1ABECC210(uint64_t a1)
{
  v1 = type metadata accessor for VisualUnderstandingService.RecognitionResult(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  v3 = sub_1ABAD219C(&qword_1EB4DC910, &qword_1ABF78650);
  v4 = sub_1ABA7AB80(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - v9);
  sub_1ABAA2E98(OBJC_IVAR___GDVUVisualUnderstandingService_inner);
  sub_1ABEC7D10(v10);
  sub_1ABAE2EC4();
  if (sub_1ABA7E1E0(v7, 1, v1) == 1)
  {
    sub_1ABAB480C(v10, &qword_1EB4DC910, &qword_1ABF78650);
    return 0;
  }

  else
  {
    v12 = sub_1ABA99834();
    type metadata accessor for GDVURecognitionResult(v12);
    v11 = sub_1ABAA5B60(v13);
    sub_1ABA93AA8();
    sub_1ABED261C();
    sub_1ABAB480C(v10, &qword_1EB4DC910, &qword_1ABF78650);
  }

  return v11;
}

void GDVUGallery.observationsCountPerEntity.getter()
{
  v0 = sub_1ABF23594();
  v1 = *(v0 + 16);
  if (v1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1ABADEEE4(0, v1, 0);
    v2 = v33;
    v5 = sub_1ABAB0E08();
    v6 = 0;
    v7 = v0 + 64;
    v28 = v3;
    v29 = v1;
    v27 = v0 + 72;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v0 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v0 + 36) != v3)
      {
        goto LABEL_26;
      }

      v31 = v6;
      v32 = v3;
      v30 = v4;
      v9 = v0;
      v10 = *(*(v0 + 48) + 8 * v5);
      v11 = *(*(v0 + 56) + 8 * v5);
      v12 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
      if (!v12)
      {
        goto LABEL_30;
      }

      v13 = v12;
      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v26 = sub_1ABA7BBEC(v15);
        sub_1ABADEEE4(v26, v16 + 1, 1);
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v18 = 1 << *(v9 + 32);
      if (v5 >= v18)
      {
        goto LABEL_27;
      }

      v19 = *(v7 + 8 * v8);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v0 = v9;
      if (*(v9 + 36) != v32)
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v8 << 6;
        v22 = v8 + 1;
        v23 = (v27 + 8 * v8);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1ABAC933C(v5, v32, v30 & 1);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_20;
          }
        }

        sub_1ABAC933C(v5, v32, v30 & 1);
      }

LABEL_20:
      v4 = 0;
      v6 = v31 + 1;
      v5 = v18;
      v3 = v28;
      if (v31 + 1 == v29)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1ABECCCA8(v2);
  }
}

uint64_t sub_1ABECCCA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(&qword_1EB4D5510, &qword_1ABF4AAD0);
    v3 = sub_1ABF24D54();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1ABED20EC(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1ABECCE68(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = objc_allocWithZone(GDVUGalleryTransaction);
  *&v4[OBJC_IVAR___GDVUGalleryTransaction_inner] = a1;
  v8.receiver = v4;
  v8.super_class = GDVUGalleryTransaction;

  v5 = objc_msgSendSuper2(&v8, sel_init);
  v7 = a2(v5, v6);

  if (v7)
  {
    swift_willThrow();
  }
}

id sub_1ABECCFC0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);

  return v2;
}

void GDVUGallery.clusters(for:)()
{
  sub_1ABA7E2A8();
  sub_1ABAA4780();
  v1 = sub_1ABF23334();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
  v5 = objc_opt_self();
  v6 = [v5 person];
  v7 = sub_1ABF247B4();

  if (v7)
  {
    v8 = MEMORY[0x1E69E05C8];
LABEL_5:
    (*(v3 + 104))(v0, *v8, v1);
    sub_1ABF23694();
    (*(v3 + 8))(v0, v1);
    sub_1ABA7BC1C();
    return;
  }

  v9 = [v5 animal];
  sub_1ABA826A8();
  v10 = sub_1ABF247B4();

  if (v10)
  {
    v8 = MEMORY[0x1E69E05C0];
    goto LABEL_5;
  }

  sub_1ABAD219C(&qword_1EB4D1970, &qword_1ABF33B00);
  sub_1ABA7BC1C();

  sub_1ABF239C4();
}

Swift::Void __swiftcall GDVUGallery.updateSocialGroups(with:)(Swift::OpaquePointer with)
{
  sub_1ABA7E2A8();
  sub_1ABAA4348();
  v3 = sub_1ABF23374();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  v7 = sub_1ABAAB7C8(v1);
  if (!v7)
  {
LABEL_10:
    sub_1ABF23504();

    sub_1ABA7BC1C();
    return;
  }

  v8 = v7;
  v17 = MEMORY[0x1E69E7CC0];
  sub_1ABADEF24(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC5AA170](i);
      }

      else
      {
        v10 = *(v1 + 8 * i + 32);
      }

      v11 = v10;
      v12 = *&v10[OBJC_IVAR___GDVUSocialGroup_inner];
      v13 = *(*v12 + 88);
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*(v5 + 16))(v2, v12 + v13, v3);

      v15 = *(v17 + 16);
      v14 = *(v17 + 24);
      if (v15 >= v14 >> 1)
      {
        v16 = sub_1ABA7BBEC(v14);
        sub_1ABADEF24(v16, v15 + 1, 1);
      }

      *(v17 + 16) = v15 + 1;
      (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v2, v3);
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t GDVUGallery.reset(with:)(uint64_t a1)
{
  v2 = sub_1ABF236B4();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = MEMORY[0x1E69E0670];
  if (a1 != 1)
  {
    v13 = MEMORY[0x1E69E0668];
  }

  (*(v4 + 104))(v8, *v13, v2, v10);
  (*(v4 + 32))(v12, v8, v2);
  sub_1ABF235C4();
  return (*(v4 + 8))(v12, v2);
}

uint64_t GDVUGallery.update(progressHandler:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  v5 = sub_1ABA826A8();
  sub_1ABE36260(v5);
  sub_1ABA7AC64();
  sub_1ABF23624();
  v6 = sub_1ABA7AC64();
  sub_1ABAC9398(v6, v7);
  v8 = sub_1ABA7AC64();
  return sub_1ABAC9398(v8, v9);
}

uint64_t sub_1ABECD754(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_1ABF23414();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  v9 = objc_allocWithZone(GDVUProgressStatus);
  v10 = sub_1ABECDD64(v7);
  v11 = a2();

  return v11 & 1;
}

uint64_t GDVUGallery.keyObservations(for:limit:offset:)(uint64_t a1)
{
  v1 = sub_1ABF23444();
  v2 = *(v1 + 16);
  if (v2)
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    sub_1ABF237F4();
    v3 = (v1 + 40);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = sub_1ABA826A8();
      sub_1ABA7AA24(v7, v8);
      v9 = sub_1ABF237D4();
      v10 = sub_1ABF24654();
      v11 = sub_1ABA84024();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134218496;
        *(v13 + 4) = a1;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v5;
        *(v13 + 22) = 2048;
        *(v13 + 24) = v6;
        _os_log_impl(&dword_1ABA78000, v9, v10, "keyObservation for entity %ld : %ld (%f", v13, 0x20u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAD219C(&qword_1EB4DC7C8, &qword_1ABF78598);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1ABF34740;
      *(inited + 32) = v5;
      *(inited + 40) = v6;
      v15 = sub_1ABF239C4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABADCD4C(0, *(v4 + 16) + 1, 1, v4);
        v4 = v18;
      }

      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = sub_1ABA7BBEC(v16);
        sub_1ABADCD4C(v19, v17 + 1, 1, v4);
        v4 = v20;
      }

      *(v4 + 16) = v17 + 1;
      *(v4 + 8 * v17 + 32) = v15;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

id sub_1ABECDD64(uint64_t a1)
{
  v3 = sub_1ABF23414();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  sub_1ABAD219C(&qword_1EB4DC920, &unk_1ABF78660);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + *(*v8 + 88), v7, v3);
  *&v1[OBJC_IVAR___GDVUProgressStatus_inner] = v8;
  v11.receiver = v1;
  v11.super_class = GDVUProgressStatus;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v4 + 8))(a1, v3);
  return v9;
}

float GDVUProgressStatus.fractionCompleted.getter()
{
  v1 = sub_1ABF23414();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABA97E98();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = sub_1ABAA560C();
  v6(v5);
  sub_1ABF23404();
  v8 = v7;
  (*(v3 + 8))(v0, v1);
  return v8;
}

void __swiftcall GDVUSocialGroup.init(numberOfMomentNodes:tags:)(GDVUSocialGroup *__return_ptr retstr, NSNumber_optional numberOfMomentNodes, Swift::OpaquePointer tags)
{
  isa = numberOfMomentNodes.value.super.super.isa;
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABF21F04();
  v5 = sub_1ABF240C4();

  sub_1ABA8E58C();
  [v6 v7];
}

id GDVUSocialGroup.init(numberOfMomentNodes:tags:)(uint64_t a1, uint64_t a2)
{
  sub_1ABAA4348();
  v5 = sub_1ABF23374();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  if (v2)
  {
    [v2 integerValue];
  }

  sub_1ABF23354();
  sub_1ABAD219C(&qword_1EB4DC7D8, &unk_1ABF785A0);
  sub_1ABA90758();
  v9 = swift_allocObject();
  (*(v7 + 32))(v9 + *(*v9 + 88), v4, v5);
  *&v3[OBJC_IVAR___GDVUSocialGroup_inner] = v9;
  v12.receiver = v3;
  v12.super_class = GDVUSocialGroup;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id sub_1ABECE2BC()
{
  v2 = sub_1ABF23374();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  v6 = *(v0 + OBJC_IVAR___GDVUSocialGroup_inner);
  v7 = *(*v6 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v2);
  v8 = sub_1ABF23344();
  LOBYTE(v7) = v9;
  (*(v4 + 8))(v1, v2);
  result = 0;
  if ((v7 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  return result;
}

id sub_1ABECE404(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  sub_1ABF21F04();
  v5 = sub_1ABF240C4();

  return v5;
}

uint64_t sub_1ABECE470()
{
  v1 = sub_1ABF23374();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABAA20B0();
  sub_1ABA97E98();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v5 = sub_1ABAA560C();
  v6(v5);
  v7 = sub_1ABF23364();
  (*(v3 + 8))(v0, v1);
  return v7;
}

id sub_1ABECE5A8()
{
  v1 = type metadata accessor for VisualUnderstandingService.Context(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABF21F04();
  sub_1ABA7B9B4(v4, 1, 1, v5);
  v6 = *(v2 + 28);
  sub_1ABA7B9B4(&v4[v6], 1, 1, v5);
  v7 = *(v2 + 32);
  v4[v7] = 3;
  sub_1ABAB480C(v4, &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7B9B4(v4, 1, 1, v5);
  sub_1ABAB480C(&v4[v6], &qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7B9B4(&v4[v6], 1, 1, v5);
  v4[v7] = 3;
  sub_1ABAD219C(&qword_1EB4DC900, &unk_1ABF78640);
  v8 = swift_allocObject();
  sub_1ABED25C4();
  *&v0[OBJC_IVAR___GDVUContext_inner] = v8;
  v10.receiver = v0;
  v10.super_class = GDVUContext;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t GDVUContext.moment.getter()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return sub_1ABAE2EC4();
}

void GDVUContext.moment.setter()
{
  sub_1ABA7E2A8();
  v2 = sub_1ABAA4348();
  v3 = type metadata accessor for VisualUnderstandingService.Context(v2);
  v4 = sub_1ABA7AB80(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  v8 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA3B24();
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  sub_1ABAA3384(v7);
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  sub_1ABED1F34(v7);
  sub_1ABAA3384(v1);
  swift_endAccess();
  sub_1ABAA3384(v0);
  sub_1ABA7BC1C();
}

uint64_t GDVUContext.asset.getter()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7AEA4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  type metadata accessor for VisualUnderstandingService.Context(0);
  return sub_1ABAE2EC4();
}

void sub_1ABECEA48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v8);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABAA20B0();
  if (a3)
  {
    sub_1ABF21EE4();
    v10 = sub_1ABF21F04();
    v11 = 0;
  }

  else
  {
    v10 = sub_1ABF21F04();
    v11 = 1;
  }

  sub_1ABA7B9B4(v4, v11, 1, v10);
  v12 = a1;
  a4(v4);
}

void GDVUContext.asset.setter()
{
  sub_1ABA7E2A8();
  v1 = sub_1ABAA4348();
  v2 = type metadata accessor for VisualUnderstandingService.Context(v1);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  v7 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  sub_1ABAA3384(v6 + *(v3 + 28));
  sub_1ABA8E58C();
  sub_1ABAE2EC4();
  sub_1ABED1F34(v6);
  sub_1ABAA3384(v10);
  swift_endAccess();
  sub_1ABAA3384(v0);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABECEC78@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1ABF21EE4();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1ABF21F04();

  return sub_1ABA7B9B4(a3, v6, 1, v7);
}

void sub_1ABECECF4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1ABA826A8();
  v9 = sub_1ABAD219C(v7, v8);
  sub_1ABA7AB80(v9);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1ABAE2EC4();
  v13 = *a2;
  v14 = sub_1ABF21F04();
  v15 = 0;
  if (sub_1ABA7E1E0(v12, 1, v14) != 1)
  {
    v15 = sub_1ABF21ED4();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  [v13 *a5];
}

uint64_t GDVUContext.source.getter()
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7AEA4();
  v2 = v1 + *(v0 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return qword_1ABF78690[*(v2 + *(type metadata accessor for VisualUnderstandingService.Context(0) + 24))];
}

uint64_t GDVUContext.source.setter(unint64_t a1)
{
  v3 = type metadata accessor for VisualUnderstandingService.Context(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  sub_1ABA96A10();
  if (a1 >= 4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0x2010003u >> (8 * a1);
  }

  swift_beginAccess();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA7E1C8();
  sub_1ABED22C8();
  *(v1 + *(v4 + 32)) = v5;
  sub_1ABED1F34(v1);
  return swift_endAccess();
}

id sub_1ABECF078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_1ABF23BD4();

  return v3;
}

uint64_t GDVUEntityClass.isEqual(_:)()
{
  sub_1ABAE2EC4();
  if (!v7)
  {
    sub_1ABAB480C(&v6, &qword_1EB4D3000, &unk_1ABF3AA60);
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  sub_1ABAFF238(&v6, v8);
  v1 = sub_1ABAE2BF0(v8, &v6);
  type metadata accessor for GDVUEntityClass(v1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABA84B54(v8);
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR___GDVUEntityClass_inner + 16) == *&v5[OBJC_IVAR___GDVUEntityClass_inner + 16] && *(v0 + OBJC_IVAR___GDVUEntityClass_inner + 24) == *&v5[OBJC_IVAR___GDVUEntityClass_inner + 24])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABF25054();
  }

  sub_1ABA84B54(v8);
  return v3 & 1;
}

void static GDVUEntityClass.person()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void static GDVUEntityClass.animal()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x5A0), *(_Records_GDEntityClass_records + 0x5A8), *(_Records_GDEntityClass_records + 0x5B0), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void static GDVUEntityClass.entity()()
{
  if (_Records_GDEntityClass_records)
  {
    v7 = v0;
    v8 = v1;
    sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v6);
    v2 = sub_1ABA90504();
    *&v3 = sub_1ABA83D90(v2, OBJC_IVAR___GDVUEntityClass_inner, v4).n128_u64[0];
    objc_msgSendSuper2(&v5, sel_init, v3);
  }

  else
  {
    __break(1u);
  }
}

void GDVUGalleryTransaction.add(with:context:priority:at:output:)()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v33 = v3;
  v35 = v5;
  v36 = v4;
  v7 = v6;
  v8 = sub_1ABF23254();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  v34 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for VisualUnderstandingService.Context(0);
  v18 = sub_1ABA7AB80(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  v19 = sub_1ABAD219C(&qword_1EB4DC700, &unk_1ABF785B0);
  sub_1ABA7AB80(v19);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - v21;
  if (v7)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7E1C8();
    v2 = v0;
    sub_1ABED22C8();
    VUGallery.Context.init(_:)(v1, v22);
    v23 = sub_1ABF23654();
    v24 = 0;
  }

  else
  {
    v23 = sub_1ABF23654();
    v24 = 1;
  }

  sub_1ABA7B9B4(v22, v24, 1, v23);
  v25 = MEMORY[0x1E69E05A8];
  v26 = v34;
  if (v35)
  {
    v25 = MEMORY[0x1E69E05B0];
  }

  (*(v10 + 104))(v34, *v25, v8);
  (*(v10 + 32))(v16, v26, v8);
  v27 = sub_1ABF23214();
  if (v2)
  {
    v28 = sub_1ABA7AC64();
    v29(v28);
    sub_1ABAB480C(v22, &qword_1EB4DC700, &unk_1ABF785B0);
  }

  else
  {
    v30 = v27;
    v31 = sub_1ABA7AC64();
    v32(v31);
    sub_1ABAB480C(v22, &qword_1EB4DC700, &unk_1ABF785B0);
    *v33 = v30;
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABECF934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = a1;
  a5(a3);

  return 1;
}

void GDVUGalleryTransaction.tag(_:with:type:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1ABAA4780();
  v6 = sub_1ABF23244();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  sub_1ABAA3B24();
  if (v3)
  {
    if (a3 > 2)
    {
      v10 = MEMORY[0x1E69E05A0];
    }

    else
    {
      v10 = qword_1E7961E48[a3];
    }

    (*(v8 + 104))(v4, *v10, v6);
    sub_1ABF23224();
    (*(v8 + 8))(v4, v6);
  }

  else
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v11 = sub_1ABF237F4();
    sub_1ABA7AA24(v11, qword_1EB4CE788);
    v12 = sub_1ABF237D4();
    v13 = sub_1ABF24674();
    v14 = sub_1ABA84024();
    if (os_log_type_enabled(v14, v15))
    {
      sub_1ABA8179C();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1ABA78000, v12, v13, "GDVUGalleryTransaction.tag: Observation ID should never be zero.", v16, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }
}

void sub_1ABECFEA4(uint64_t a1, void (*a2)(void), const char *a3)
{
  if (a1)
  {
    a2();
  }

  else
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v4 = sub_1ABF237F4();
    sub_1ABA7AA24(v4, qword_1EB4CE788);
    v5 = sub_1ABF237D4();
    v6 = sub_1ABF24674();
    v7 = sub_1ABA84024();
    if (os_log_type_enabled(v7, v8))
    {
      sub_1ABA8179C();
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1ABA78000, v5, v6, a3, v9, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }
}

uint64_t sub_1ABECFFF0()
{
  v0 = sub_1ABF237F4();
  sub_1ABB9009C(v0, qword_1EB4CE788);
  sub_1ABA7AA24(v0, qword_1EB4CE788);
  return sub_1ABF237E4();
}

uint64_t sub_1ABED0064(void *a1)
{
  v3 = v1;
  type metadata accessor for VisualUnderstandingStreamingGallery();
  v5 = swift_allocObject();
  v6 = VisualUnderstandingStreamingGallery.init()();
  if (v2)
  {

    type metadata accessor for GDVUStreamingGallery(v7);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___GDVUStreamingGallery_inner] = v6;
    v9.receiver = v3;
    v9.super_class = GDVUStreamingGallery;
    v5 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v5;
}

uint64_t sub_1ABED01E0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void *GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1ABF240C4();
  v10[0] = 0;
  v4 = [v1 updateWithMaxKeyFacesPerCluster:a1 sortBy:v3 error:v10];

  v6 = v10[0];
  if (v4)
  {
    type metadata accessor for GDVUClusterResult(v5);
    v3 = sub_1ABF240D4();
    v7 = v6;
  }

  else
  {
    v8 = v10[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v3;
}

void GDVUStreamingGallery.update(withMaxKeyFacesPerCluster:sortBy:)()
{
  sub_1ABEC48D4();
  if (!v0)
  {
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      sub_1ABF24BC4();
      v4 = 0;
      v5 = (v2 + 48);
      while (v4 < *(v2 + 16))
      {
        v6 = *(v5 - 2);
        v7 = *v5;
        v8 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
        if (!v8)
        {
          goto LABEL_14;
        }

        v9 = v8;
        ++v4;
        v10 = objc_allocWithZone(GDVUClusterResult);
        sub_1ABED0988(v6, v9, v7);
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v5 += 24;
        if (v3 == v4)
        {

          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t GDVUStreamingGallery.add(with:observationIdentifiers:trackIdentifiers:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1ABAD219C(&qword_1EB4DC6F8, &unk_1ABF77870);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABAA3B24();
  if (a4)
  {
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA7E1C8();
    sub_1ABED22C8();
    v8 = type metadata accessor for VisualUnderstandingService.Context(0);
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for VisualUnderstandingService.Context(0);
    v9 = 1;
  }

  sub_1ABA7B9B4(v4, v9, 1, v8);
  sub_1ABEC41D0();
  v11 = v10;
  sub_1ABAB480C(v4, &qword_1EB4DC6F8, &unk_1ABF77870);
  return v11;
}

id sub_1ABED0988(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR___GDVUClusterResult_observationIdentifier) = a1;
  *(v3 + OBJC_IVAR___GDVUClusterResult_entityIdentifier) = a2;
  *(v3 + OBJC_IVAR___GDVUClusterResult_isKeyFace) = a3;
  v5.super_class = GDVUClusterResult;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t GDVUChangeBookmark.encodeToData()()
{
  sub_1ABF21854();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABF21844();
  v3 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner);
  v4 = *(v0 + OBJC_IVAR___GDVUChangeBookmark_inner + 8);
  sub_1ABB0DBF0(v3, v4);
  sub_1ABED2334();
  v1 = sub_1ABF21834();
  sub_1ABA96210(v3, v4);

  return v1;
}

id static GDVUChangeBookmark.decode(from:)(uint64_t a1, id a2)
{
  sub_1ABAA4780();
  sub_1ABF217F4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABF217E4();
  sub_1ABED2388();
  sub_1ABF217D4();
  if (v2)
  {
  }

  else
  {
    v4 = v10;
    v5 = objc_allocWithZone(GDVUChangeBookmark);
    v6 = &v5[OBJC_IVAR___GDVUChangeBookmark_inner];
    *v6 = v9;
    *(v6 + 1) = v4;
    v8.receiver = v5;
    v8.super_class = GDVUChangeBookmark;
    a2 = objc_msgSendSuper2(&v8, sel_init);
  }

  return a2;
}

uint64_t GDVUChangeBookmark.isEqual(_:)()
{
  swift_getObjectType();
  sub_1ABAE2EC4();
  if (!v4)
  {
    sub_1ABAB480C(&v3, &qword_1EB4D3000, &unk_1ABF3AA60);
LABEL_6:
    v0 = 0;
    return v0 & 1;
  }

  sub_1ABAFF238(&v3, v5);
  sub_1ABAE2BF0(v5, &v3);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABA84B54(v5);
    goto LABEL_6;
  }

  sub_1ABAFF390(0, &qword_1ED871D80, 0x1E69E58C0);
  v0 = sub_1ABF247B4();

  sub_1ABA84B54(v5);
  return v0 & 1;
}

uint64_t sub_1ABED0F2C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1ABF248F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1ABAB480C(v10, &qword_1EB4D3000, &unk_1ABF3AA60);
  return v8 & 1;
}

uint64_t GDVUChangeBookmark.hash.getter()
{
  sub_1ABF25234();
  sub_1ABF21DE4();
  return sub_1ABF25294();
}

uint64_t GDVUObservationUpdate.observationIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUObservationUpdate_inner + 8);
  if (!v1)
  {
    if (qword_1EB4CE780 != -1)
    {
      sub_1ABA8FDB8();
      swift_once();
    }

    v2 = sub_1ABF237F4();
    sub_1ABA7AA24(v2, qword_1EB4CE788);
    v3 = sub_1ABF237D4();
    v4 = sub_1ABF24674();
    v5 = sub_1ABA84024();
    if (os_log_type_enabled(v5, v6))
    {
      sub_1ABA8179C();
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1ABA78000, v3, v4, "GDVUObservationUpdate.observationIdentifier: Observation ID should never be zero. This is an error in VU.", v7, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  return v1;
}

id GDVUObservationUpdate.entityIdentifier.getter()
{
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1ABED1308(uint64_t a1)
{
  v2 = type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1ABED22C8();
  sub_1ABAD219C(&qword_1EB4DC930, &qword_1ABF78678);
  v3 = swift_allocObject();
  sub_1ABED25C4();
  *&v1[OBJC_IVAR___GDVUEntityUpdate_inner] = v3;
  v6.receiver = v1;
  v6.super_class = GDVUEntityUpdate;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1ABED261C();
  return v4;
}

uint64_t GDVUEntityUpdate.updateType.getter()
{
  v1 = *(v0 + OBJC_IVAR___GDVUEntityUpdate_inner);
  v2 = *(*v1 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  return *(v1 + v2);
}

id GDVUEntityUpdate.entityIdentifier.getter()
{
  sub_1ABA7AEA4();
  v2 = v1 + *(v0 + 88);
  sub_1ABA7EF0C();
  swift_beginAccess();
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t GDVUEntityUpdate.tag.getter()
{
  sub_1ABA7AEA4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  type metadata accessor for VisualUnderstandingService.EntityUpdate(0);
  return sub_1ABAE2EC4();
}

void *sub_1ABED1658(void *a1, uint64_t a2, float a3)
{
  v7 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    *&v3[OBJC_IVAR___GDVURecognitionResult_entityIdentifier] = result;
    sub_1ABAE2EC4();
    sub_1ABAD219C(&qword_1EB4DC938, &unk_1ABF78680);
    v11 = swift_allocObject();
    sub_1ABED2054(v9, v11 + *(*v11 + 88));
    *&v3[OBJC_IVAR___GDVURecognitionResult__tag] = v11;
    *&v3[OBJC_IVAR___GDVURecognitionResult_confidence] = a3;
    v13.receiver = v3;
    v13.super_class = GDVURecognitionResult;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    sub_1ABAB480C(a2, &qword_1EB4DC6F0, qword_1ABF78360);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id GDVURecognitionResult.entityIdentifier.getter()
{
  v1 = OBJC_IVAR___GDVURecognitionResult_entityIdentifier;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GDVURecognitionResult.entityIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___GDVURecognitionResult_entityIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1ABED190C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entityIdentifier];
  *a2 = result;
  return result;
}

id sub_1ABED1960(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA26DC();
  a3();
  v7 = sub_1ABF21F04();
  v8 = 0;
  if (sub_1ABA7E1E0(v3, 1, v7) != 1)
  {
    v8 = sub_1ABF21ED4();
    (*(*(v7 - 8) + 8))(v3, v7);
  }

  return v8;
}

uint64_t GDVURecognitionResult.tag.getter()
{
  sub_1ABA97E98();
  sub_1ABA7EF0C();
  swift_beginAccess();
  return sub_1ABAE2EC4();
}

id sub_1ABED1B80(uint64_t a1)
{
  v2 = type metadata accessor for EntityRecognitionClient(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1ABED22C8();
  sub_1ABAD219C(&qword_1EB4DC918, &qword_1ABF78658);
  v3 = swift_allocObject();
  sub_1ABED25C4();
  *&v1[OBJC_IVAR___GDVUEntityRecognitionClient_inner] = v3;
  v6.receiver = v1;
  v6.super_class = GDVUEntityRecognitionClient;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1ABED261C();
  return v4;
}

id sub_1ABED1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAA4780();
  v7 = type metadata accessor for EntityRecognitionClient(v6);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  if (*v4 != -1)
  {
    swift_once();
  }

  sub_1ABA7AA24(v7, a2);
  sub_1ABA8C4CC();
  sub_1ABED22C8();
  v9 = objc_allocWithZone(GDVUEntityRecognitionClient);
  return sub_1ABED1B80(v3);
}

uint64_t sub_1ABED1F34(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v3 = *v1;
    v4 = *(*v3 + 88);
    swift_beginAccess();
    sub_1ABED2670(a1, v3 + v4);
    return swift_endAccess();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DC900, &unk_1ABF78640);
    v6 = swift_allocObject();
    sub_1ABED25C4();

    *v1 = v6;
  }

  return result;
}

uint64_t sub_1ABED2054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABED20EC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    sub_1ABAF8B70();
    v13 = v12;
    v14 = v8[2];
    v15 = (v11 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v17 = v11;
    if (v8[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4DC928, &qword_1ABF78670);
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC06998(v16, a2 & 1);
      sub_1ABAF8B70();
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    v20 = *a3;
    if (v17)
    {

      v21 = v20[7];
      v22 = *(v21 + 8 * v13);
      *(v21 + 8 * v13) = v10;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      *(v20[6] + 8 * v13) = v9;
      *(v20[7] + 8 * v13) = v10;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v20[2] = v25;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABED22C8()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA7BBB0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

unint64_t sub_1ABED2334()
{
  result = qword_1EB4CFA58;
  if (!qword_1EB4CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA58);
  }

  return result;
}

unint64_t sub_1ABED2388()
{
  result = qword_1EB4CFA50;
  if (!qword_1EB4CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFA50);
  }

  return result;
}

uint64_t sub_1ABED24D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1ABED255C()
{
  result = qword_1EB4DC908;
  if (!qword_1EB4DC908)
  {
    sub_1ABAFF390(255, &unk_1EB4CE670, off_1E795FE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC908);
  }

  return result;
}

uint64_t sub_1ABED25C4()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA7BBB0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

uint64_t sub_1ABED261C()
{
  v1 = sub_1ABAA4348();
  v2(v1);
  sub_1ABA7BBB0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1ABED2670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingService.Context(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void VOPBuilder.toString.getter()
{
  v4 = *v1;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
      v91 = 0;
      sub_1ABA7FBD4();
      v93 = v92[3];
      v174 = v92[2];
      v94 = v92[7];
      v95 = *(v94 + 16);
      v96 = MEMORY[0x1E69E7CC0];
      while (v95 != v91)
      {
        if (v91 >= *(v94 + 16))
        {
          goto LABEL_116;
        }

        *&v176 = *(v94 + 32 + 8 * v91);
        VOPBuilder.toString.getter();
        v98 = v97;
        v100 = v99;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v96 = v103;
        }

        v101 = *(v96 + 16);
        if (v101 >= *(v96 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v96 = v104;
        }

        *(v96 + 16) = v101 + 1;
        v102 = v96 + 16 * v101;
        *(v102 + 32) = v98;
        *(v102 + 40) = v100;
        ++v91;
      }

      sub_1ABA8EE50();
      MEMORY[0x1AC5A9410](v174, v93);
      sub_1ABA81358();
      v40 = sub_1ABD7343C(v96);
      goto LABEL_98;
    case 2uLL:
      v78 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1ABF24AB4();

      sub_1ABA9A7E8();
      *&v176 = v79;
      *(&v176 + 1) = 0xED0000202C4C494ELL;
      v181 = v78;
      VOPBuilder.toString.getter();
      MEMORY[0x1AC5A9410]();

      sub_1ABA97C60();

      return;
    case 3uLL:
      sub_1ABA7FBD4();
      v84 = *(v83 + 16);
      sub_1ABA7D028();
      v85 = swift_allocObject();
      sub_1ABA7D028();
      v86 = swift_allocObject();
      *(v86 + 16) = v84;
      *(v85 + 16) = v86 | 0x3000000000000004;
      *&v176 = v85 | 0x1000000000000000;

      goto LABEL_92;
    case 4uLL:
      sub_1ABA7FBD4();
      v43 = *(v42 + 24);
      sub_1ABA9A7E8();
      *&v176 = v44;
      *(&v176 + 1) = 0xE800000000000000;

      VOPBuilder.toString.getter();
      MEMORY[0x1AC5A9410]();

      sub_1ABA81358();
      sub_1ABA7D028();
      v45 = swift_allocObject();
      *(v45 + 16) = v43;
      v181 = v45 | 0x2000000000000004;
      VOPBuilder.toString.getter();
      v47 = v46;
      v49 = v48;

      v50 = v47;
      goto LABEL_109;
    case 5uLL:
    case 7uLL:
      sub_1ABA7FBD4();
      v6 = *(v5 + 16);
      *&v176 = 677670497;
      *(&v176 + 1) = 0xE400000000000000;
      v7 = *(v6 + 16);

      v16 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        if (*(v6 + 16))
        {
          sub_1ABA844CC(v8, v9, v10, v11, v12, v13, v14, v15, v173);
          sub_1ABA93AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v16 = v18;
          }

          v17 = *(v16 + 24);
          if (*(v16 + 16) >= v17 >> 1)
          {
            sub_1ABA7DD04(v17);
            sub_1ABAAA4F4();
            v16 = v19;
          }

          sub_1ABA90BFC();
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_114;
    case 6uLL:
      sub_1ABA7FBD4();
      v27 = *(v26 + 16);
      *&v176 = 2650735;
      *(&v176 + 1) = 0xE300000000000000;
      v28 = *(v27 + 16);

      v16 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (!v28)
        {
LABEL_20:

          v181 = v16;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          sub_1ABA7ECA8();
          v40 = sub_1ABF23B54();
LABEL_98:
          v166 = v40;
          v49 = v41;

          v50 = v166;
LABEL_109:
          MEMORY[0x1AC5A9410](v50, v49);
          goto LABEL_110;
        }

        if (*(v27 + 16))
        {
          sub_1ABA844CC(v29, v30, v31, v32, v33, v34, v35, v36, v173);
          sub_1ABA93AC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v16 = v38;
          }

          v37 = *(v16 + 24);
          if (*(v16 + 16) >= v37 >> 1)
          {
            sub_1ABA7DD04(v37);
            sub_1ABAAA4F4();
            v16 = v39;
          }

          sub_1ABA90BFC();
          continue;
        }

        break;
      }

LABEL_114:
      __break(1u);
      goto LABEL_115;
    case 8uLL:
      sub_1ABA7FBD4();
      v67 = *(v66 + 16);
      v68 = *(v67 + 16);

      v69 = 0;
      v70 = (v67 + 40);
      v71 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v68 != v69)
        {
          if (v69 < *(v67 + 16))
          {
            v73 = *(v70 - 1);
            v72 = *v70;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABA7BEF0();
              sub_1ABAAA4F4();
              v71 = v76;
            }

            v74 = *(v71 + 16);
            v2 = v74 + 1;
            if (v74 >= *(v71 + 24) >> 1)
            {
              sub_1ABAAA4F4();
              v71 = v77;
            }

            *(v71 + 16) = v2;
            v75 = v71 + 16 * v74;
            *(v75 + 32) = v73;
            *(v75 + 40) = v72;
            v70 += 5;
            ++v69;
            continue;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        break;
      }

      v156 = _Records_GDEntityPredicate_records;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_124;
      }

      v157 = swift_allocObject();
      sub_1ABA91D48(v156[156], *(v156 + 40), *(v156 + 41), &v176);
      v158 = v177;
      v159 = v178;
      v160 = v179;
      *(v157 + 16) = v176;
      *(v157 + 32) = v158;
      *(v157 + 40) = v159;
      *(v157 + 48) = v160;
      sub_1ABD7343C(v71);
      sub_1ABA93AC0();

      *(v157 + 56) = v156;
      *(v157 + 64) = v2;
      *(v157 + 72) = 0;
      *(v157 + 80) = 0;
      *(v157 + 87) = 0;
      *&v176 = v157;
LABEL_92:
      VOPBuilder.toString.getter();

      return;
    case 9uLL:
      sub_1ABA7FBD4();
      v20 = 0x28797469746E65;
      v21 = 0xE700000000000000;
      goto LABEL_81;
    case 0xAuLL:
      sub_1ABA7FBD4();
      v58 = *(v56 + 16);
      v57 = *(v56 + 24);
      sub_1ABA7C968();
      v181 = v59;
      v182 = v60;
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_123;
      }

      v61 = *(_Records_GDEntityPredicate_records + 4);
      v62 = *(_Records_GDEntityPredicate_records + 5);
      v63 = _Records_GDEntityPredicate_records[12];

      sub_1ABA91D48(v63, v61, v62, &v176);
      v64 = v176;

      MEMORY[0x1AC5A9410](v64, *(&v64 + 1));

      v65 = sub_1ABA7ECA8();
      MEMORY[0x1AC5A9410](v65);
      MEMORY[0x1AC5A9410](v58, v57);

      sub_1ABA97C60();
      return;
    case 0xBuLL:
      sub_1ABA7FBD4();
      sub_1ABA7C968();
      *&v176 = v115;
      *(&v176 + 1) = v116;
      v118 = sub_1ABED3538(v117);
      MEMORY[0x1AC5A9410](v118);

      goto LABEL_61;
    case 0xCuLL:
      sub_1ABA7FBD4();
      v23 = sub_1ABAA6288(v22);
      goto LABEL_35;
    case 0xDuLL:
      sub_1ABA7FBD4();
      v23 = sub_1ABAA6288(v80);
      v25 = v81 + 5;
LABEL_35:
      v82 = 0xE400000000000000;
      goto LABEL_38;
    case 0xEuLL:
      v129 = 0;
      sub_1ABA7FBD4();
      v131 = v130[3];
      v175 = v130[2];
      v132 = v130[4];
      v133 = *(v132 + 16);
      v134 = (v132 + 40);
      v135 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v133 == v129)
        {
          sub_1ABD7343C(v135);
          sub_1ABA94BE8();
          sub_1ABA8EE50();
          MEMORY[0x1AC5A9410](v175, v131);
          goto LABEL_107;
        }

        if (v129 < *(v132 + 16))
        {
          v136 = *(v134 - 1);
          v2 = *v134;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7BEF0();
            sub_1ABAAA4F4();
            v135 = v139;
          }

          v137 = *(v135 + 16);
          v3 = v137 + 1;
          if (v137 >= *(v135 + 24) >> 1)
          {
            sub_1ABAAA4F4();
            v135 = v140;
          }

          *(v135 + 16) = v3;
          v138 = v135 + 16 * v137;
          *(v138 + 32) = v136;
          *(v138 + 40) = v2;
          v134 += 5;
          ++v129;
          continue;
        }

        break;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    case 0xFuLL:
      sub_1ABA7FBD4();
      v52 = v51[2];
      v53 = v51[3];
      v54 = v51[9];
      *&v176 = 0xD000000000000011;
      *(&v176 + 1) = 0x80000001ABF96BA0;
      MEMORY[0x1AC5A9410](v52, v53);
      sub_1ABA81358();
      sub_1ABA9052C();
      sub_1ABA81358();
      v55 = sub_1ABED3538(v54);
      MEMORY[0x1AC5A9410](v55);
      goto LABEL_110;
    case 0x10uLL:
      v141 = 0;
      sub_1ABA7FBD4();
      v143 = v142[2];
      v144 = v142[3];
      v145 = v142[4];
      *&v176 = 0;
      *(&v176 + 1) = 0xE000000000000000;
      v146 = *(v145 + 16);
      v147 = (v145 + 40);
      while (2)
      {
        if (v146 == v141)
        {
          return;
        }

        if (v141 < *(v145 + 16))
        {
          v149 = *(v147 - 1);
          v148 = *v147;
          if (v141)
          {
            v181 = 0x287465672ELL;
            v182 = 0xE500000000000000;
          }

          else
          {
            v181 = 678716775;
            v182 = 0xE400000000000000;

            MEMORY[0x1AC5A9410](v143, v144);
            v150 = sub_1ABA7ECA8();
            MEMORY[0x1AC5A9410](v150);
          }

          MEMORY[0x1AC5A9410](v149, v148);

          sub_1ABA97C60();
          MEMORY[0x1AC5A9410](v181, v182);

          v147 += 2;
          ++v141;
          continue;
        }

        break;
      }

LABEL_118:
      __break(1u);
      goto LABEL_119;
    case 0x11uLL:
      sub_1ABA7FBD4();
      v23 = *(v87 + 16);
      v24 = *(v87 + 24);
      v25 = 0x746567706F727071;
      v82 = 0xE900000000000028;
LABEL_38:
      *&v176 = v25;
      *(&v176 + 1) = v82;
      MEMORY[0x1AC5A9410](v23, v24);
LABEL_61:
      sub_1ABA81358();
      sub_1ABA9052C();
      goto LABEL_111;
    case 0x12uLL:
      sub_1ABA7FBD4();
      v20 = 677667937;
      goto LABEL_80;
    case 0x13uLL:
      sub_1ABA7FBD4();
      v20 = 677869153;
LABEL_80:
      v21 = 0xE400000000000000;
      goto LABEL_81;
    case 0x14uLL:
      sub_1ABA7FBD4();
      v20 = 0x28746E756F63;
      v21 = 0xE600000000000000;
LABEL_81:
      *&v176 = v20;
      *(&v176 + 1) = v21;

      sub_1ABA9052C();
      goto LABEL_110;
    case 0x15uLL:
      v2 = 0;
      sub_1ABA7FBD4();
      v3 = *(v105 + 16);
      v106 = *(v105 + 24);
      v107 = *(v3 + 16);
      v108 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        if (v107)
        {
          if (*(v3 + 16))
          {
            sub_1ABA8E598();
            if (v0)
            {
              v110 = *v109;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1ABA7BEF0();
                sub_1ABAAA4F4();
                v108 = v113;
              }

              v111 = *(v108 + 16);
              if (v111 >= *(v108 + 24) >> 1)
              {
                sub_1ABA8C4E4();
                v108 = v114;
              }

              *(v108 + 16) = v111 + 1;
              v112 = v108 + 16 * v111;
              *(v112 + 32) = v110;
              *(v112 + 40) = v0;
            }

            continue;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        break;
      }

      v161 = sub_1ABD7343C(v108);
      v163 = v162;

      v164 = *(v106 + 16);
      v165 = MEMORY[0x1E69E7CC0];
      while (v164)
      {
        if (!*(v106 + 16))
        {
          goto LABEL_121;
        }

        sub_1ABA99860();
      }

      sub_1ABD7343C(v165);
      sub_1ABA94BE8();
      v170 = 0x6373615F74726F73;
      v171 = 0xE900000000000028;
      goto LABEL_106;
    case 0x16uLL:
      v2 = 0;
      sub_1ABA7FBD4();
      v3 = *(v119 + 16);
      v120 = *(v119 + 24);
      v121 = *(v3 + 16);
      v122 = MEMORY[0x1E69E7CC0];
      break;
    case 0x17uLL:
      sub_1ABA7FBD4();
      v152 = *(v151 + 24);
      VOPBuilder.toString.getter();
      *&v176 = v153;
      *(&v176 + 1) = v154;
      v181 = 0x3D74696D696C2CLL;
      v182 = 0xE700000000000000;
      v180 = v152;

      v155 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v155);

      sub_1ABF23D64();

      sub_1ABED365C();
      sub_1ABF23DC4();

      return;
    default:
      v89 = *(v4 + 56);
      v88 = *(v4 + 64);
      v90 = *(v4 + 90);
      sub_1ABA8EE50();
      MEMORY[0x1AC5A9410]();
      sub_1ABA81358();
      v49 = 0xE000000000000000;
      v50 = 0;
      switch(v90)
      {
        case 1:
          v181 = v89;
          v50 = EntityIdentifier.stringValue.getter();
          v49 = v172;
          break;
        case 4:
          goto LABEL_109;
        default:

          v50 = v89;
          v49 = v88;
          break;
      }

      goto LABEL_109;
  }

  while (v121)
  {
    if (!*(v3 + 16))
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      return;
    }

    sub_1ABA8E598();
    if (v0)
    {
      v124 = *v123;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v122 = v127;
      }

      v125 = *(v122 + 16);
      if (v125 >= *(v122 + 24) >> 1)
      {
        sub_1ABA8C4E4();
        v122 = v128;
      }

      *(v122 + 16) = v125 + 1;
      v126 = v122 + 16 * v125;
      *(v126 + 32) = v124;
      *(v126 + 40) = v0;
    }
  }

  v161 = sub_1ABD7343C(v122);
  v163 = v167;

  v168 = *(v120 + 16);
  v169 = MEMORY[0x1E69E7CC0];
  while (v168)
  {
    if (!*(v120 + 16))
    {
      goto LABEL_122;
    }

    sub_1ABA99860();
  }

  sub_1ABD7343C(v169);
  sub_1ABA94BE8();
  v170 = 0x7365645F74726F73;
  v171 = 0xEA00000000002863;
LABEL_106:
  *&v176 = v170;
  *(&v176 + 1) = v171;
  MEMORY[0x1AC5A9410](v161, v163);

LABEL_107:
  sub_1ABA81358();
  MEMORY[0x1AC5A9410](v2, v3);
LABEL_110:

LABEL_111:
  sub_1ABA97C60();
}

uint64_t sub_1ABED3538(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABAAA4F4();
      i = v8;
    }

    v6 = *(i + 16);
    if (v6 >= *(i + 24) >> 1)
    {
      sub_1ABAAA4F4();
      i = v9;
    }

    *(i + 16) = v6 + 1;
    v7 = i + 16 * v6;
    *(v7 + 32) = v5;
    *(v7 + 40) = v4;
    v2 += 5;
  }

  v10 = sub_1ABD7343C(i);

  return v10;
}

unint64_t sub_1ABED365C()
{
  result = qword_1EB4DC940;
  if (!qword_1EB4DC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC940);
  }

  return result;
}

uint64_t sub_1ABED36C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x69 && *(a1 + 8))
    {
      v2 = *a1 + 104;
    }

    else
    {
      v2 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
      if (v2 >= 0x68)
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

uint64_t sub_1ABED3718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t WritableAssetRegistry.trialAssetManagerPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 72);
  *(a1 + 16) = v5;
  return sub_1ABAF3440(v3, v4, v5);
}

uint64_t WritableAssetRegistry.__allocating_init(trialAssetManagerPolicy:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (qword_1ED870B70 != -1)
  {
    swift_once();
  }

  v5 = unk_1ED870BA0;
  qword_1ED870B98(v10);
  if (v1)
  {
    sub_1ABAFC7DC(v3, v2, v4);
  }

  else
  {
    sub_1ABA93E64(v10, v9);
    v7[0] = v3;
    v7[1] = v2;
    v8 = v4;
    v5 = swift_allocObject();
    sub_1ABED38C4(v9, v7);
    sub_1ABA84B54(v10);
  }

  return v5;
}

uint64_t sub_1ABED38C4(__int128 *a1, uint64_t a2)
{
  v4 = *a2;
  v19 = *(a2 + 8);
  v20 = v4;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for AssetRegistry();
  v7 = *(a1 + 3);
  v21 = *(a1 + 4);
  v22 = v6;
  v8 = sub_1ABA93E20(a1, v7);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v14 = v13(v12, v11);
  v23[0] = v20;
  v23[1] = v19;
  v24 = v5;
  v15 = MEMORY[0x1EEE9AC00](v14);
  (v13)(v12, v12, v7, v15);
  v16 = sub_1ABA94614(v12, v23, v22, v7, *(*(v21 + 8) + 8));
  (*(v9 + 8))(v12, v7);
  *(v2 + 16) = v16;
  sub_1ABA946C0(a1, v2 + 24);
  return v2;
}

uint64_t WritableAssetRegistry.asset(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1ABA8C014();
}

uint64_t sub_1ABED3A6C()
{
  sub_1ABA7BBF8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1ABED3B10;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABED3B10()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t WritableAssetRegistry.assets(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABED3C08()
{
  sub_1ABA7BBF8();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1ABED3CA4;

  return AssetRegistry.assets(for:)();
}

uint64_t sub_1ABED3CA4()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t WritableAssetRegistry.assetEntry(for:in:)()
{
  sub_1ABA81374();
  sub_1ABA93E20((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = sub_1ABA7C98C();
  return v2(v1);
}

uint64_t WritableAssetRegistry.overrideAssetEntry(for:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v9 = *(a5 + 26);
  v10 = *(a5 + 24);
  v11 = v10;
  v12 = v5[6];
  v13 = v5[7];
  sub_1ABA93E20(v5 + 3, v12);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v24 = v9;
  v23 = v10;
  v14 = *(v13 + 16);
  sub_1ABAF8040(v6, v7, v8, v11);
  v14(a1, a2, a3, a4, &v20, v12, v13);
  return sub_1ABED3F1C(v20, v21, v22, v23 | (v24 << 16));
}

uint64_t sub_1ABED3F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((~a4 & 0xFE) != 0)
  {
    return sub_1ABAF7FB8(a1, a2, a3, a4);
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WritableAssetRegistry.clearAssetEntryOverride(for:in:)(Swift::String a1, Swift::String in)
{
  sub_1ABA81374();
  sub_1ABA93E20((v2 + 24), *(v2 + 48));
  v3 = sub_1ABA7C98C();
  v4(v3);
}

uint64_t WritableAssetRegistry.deinit()
{

  sub_1ABA84B54((v0 + 24));
  return v0;
}

uint64_t WritableAssetRegistry.__deallocating_deinit()
{

  sub_1ABA84B54((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABED4048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1ABED4114;

  return WritableAssetRegistry.asset(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1ABED4114()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1ABED41F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABB9916C;

  return WritableAssetRegistry.assets(for:)(a1);
}

uint64_t sub_1ABED4314(void *a1)
{
  v3 = sub_1ABF21CF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1ABED47B8();
  sub_1ABD32890();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1ABE0BB90(v6, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for EntityRerankerModel();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_1ABED44FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x63735F7475706E69 && a2 == 0xEC0000007365726FLL;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABED4624()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1ABF24394();

  return v2;
}

id sub_1ABED467C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1ABF23BD4();
  v5 = [v3 featureValueForName_];

  return v5;
}

id sub_1ABED46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1ABED4760()
{
  swift_unknownObjectRelease();
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

void sub_1ABED47B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1ABED5424(0xD000000000000013, 0x80000001ABF78AB0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1ABF21CA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABED4874(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1ABED48E0(a1, v2);

  return v3;
}

uint64_t sub_1ABED48E0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for EntityRerankerModelOutput();
    sub_1ABA7D028();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1ABED49B4(void *a1)
{
  type metadata accessor for EntityRerankerModelInput();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1ABED4874(v2);

  return v4;
}

uint64_t sub_1ABED4A1C()
{
  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

id sub_1ABED4AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x307475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x317475706E69 && a2 == 0xE600000000000000;
  if (v8 || (sub_1ABF25054() & 1) != 0)
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_1ABED4BF8()
{
  sub_1ABED4BD0();

  return swift_deallocClassInstance();
}

id sub_1ABED4CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1ABED4D50()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABED4DD0(void *a1)
{
  v3 = sub_1ABF21CF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1ABED519C();
  sub_1ABD32890();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_1ABE0BB90(v6, a1);
  if (v1)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v12 = v10;
  (*(v4 + 8))(v9, v3);
  type metadata accessor for MentionGenerationModel();
  sub_1ABA7D028();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

id sub_1ABED4FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1ABED50FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1ABF23C04();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1ABED519C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1ABED5424(0xD000000000000016, 0x80000001ABF78BB0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1ABF21CA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABED5258(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1ABED52C4(a1, v2);

  return v3;
}

uint64_t sub_1ABED52C4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v12[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v12];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MentionGenerationModelOutput();
    sub_1ABA7D028();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v12[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1ABED5398(void *a1)
{
  type metadata accessor for MentionGenerationModelInput();
  sub_1ABA7D028();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1ABED5258(v2);

  return v4;
}

id sub_1ABED5424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1ABF23BD4();

  v7 = sub_1ABF23BD4();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

void sub_1ABED5B3C(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [[GDSQLEntityIterator alloc] initWithColumns:511 statement:v3];
  v5 = [(GDSQLEntityIterator *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              (*(*(a1 + 32) + 16))();
              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(GDSQLEntityIterator *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

void sub_1ABEE1F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE260C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE2664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE2C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE2CD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE31F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE3234(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE3760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABEE37A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1ABEE4A54(uint64_t a1, void *a2)
{
  tokenizer = a2;
  v3 = *(a1 + 40);
  v6.length = [*(a1 + 32) length];
  v6.location = 0;
  CFStringTokenizerSetString(tokenizer, v3, v6);
  ITSTokenListPopulateFromString();
  v7.location = 0;
  v7.length = 1;
  CFStringTokenizerSetString(tokenizer, @"⌘", v7);
  CFRelease(tokenizer);
}

void sub_1ABEE4AF4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x1E69C5D50]) initWithBlock:&unk_1F20A1918 idleTimeout:1.0];
  v2 = qword_1EB4DD468;
  qword_1EB4DD468 = v1;

  objc_autoreleasePoolPop(v0);
}

id sub_1ABEE4B58()
{
  v6.location = 0;
  v6.length = 0;
  v0 = CFStringTokenizerCreate(0, 0, v6, 0x810000uLL, 0);
  if (!v0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ITSTokenListRef _createITSListForFTSQuery(NSString *__strong)_block_invoke_2"];
    [v3 handleFailureInFunction:v4 file:@"GDFTSTokenize.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"tokenizer"}];
  }

  v1 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v0];

  return v1;
}

void sub_1ABEE4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABEE4E38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABEE4E50(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = objc_alloc(objc_opt_class());
  v7 = [v9 entityIdentifier];
  v8 = [v6 initByCastingFrom:v7];

  if (v8)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v8);
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }
}

id sub_1ABEF4058(void *a1)
{
  v24 = MEMORY[0x1E696AEC0];
  v2 = [a1 namePrefix];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F20A2CD8;
  }

  v23 = v4;
  v5 = [a1 givenName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F20A2CD8;
  }

  v22 = v7;
  v8 = [a1 middleName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F20A2CD8;
  }

  v11 = [a1 familyName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F20A2CD8;
  }

  v14 = [a1 nameSuffix];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_1F20A2CD8;
  }

  v17 = [a1 nickname];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F20A2CD8;
  }

  v20 = [v24 stringWithFormat:@"%@ %@ %@ %@ %@ %@", v23, v22, v10, v13, v16, v19];

  return v20;
}

void sub_1ABEFFC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABEFFCA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABEFFCC0(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = objc_alloc(objc_opt_class());
  v7 = [v9 entityIdentifier];
  v8 = [v6 initByCastingFrom:v7];

  if (v8)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v8);
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *a3 = 1;
  }
}

id GDDefaultLog()
{
  if (qword_1ED87C070[0] != -1)
  {
    dispatch_once(qword_1ED87C070, &unk_1F20A1958);
  }

  v1 = qword_1ED87BF50;

  return v1;
}

uint64_t sub_1ABF00E48()
{
  qword_1ED87BF50 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "default");

  return MEMORY[0x1EEE66BB8]();
}

id GDSignpostLog()
{
  if (qword_1ED87C3B0 != -1)
  {
    dispatch_once(&qword_1ED87C3B0, &unk_1F20763D0);
  }

  v1 = qword_1ED87C3A0;

  return v1;
}

uint64_t sub_1ABF00EE4()
{
  qword_1ED87C3A0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "signpost");

  return MEMORY[0x1EEE66BB8]();
}

id GDViewLog()
{
  if (qword_1ED87C398 != -1)
  {
    dispatch_once(&qword_1ED87C398, &unk_1F20763B0);
  }

  v1 = qword_1ED87C390;

  return v1;
}

uint64_t sub_1ABF00F80()
{
  qword_1ED87C390 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "views");

  return MEMORY[0x1EEE66BB8]();
}

id GDOrchestrationLog()
{
  if (qword_1ED877EE0 != -1)
  {
    dispatch_once(&qword_1ED877EE0, &unk_1F2076510);
  }

  v1 = qword_1ED877EE8;

  return v1;
}

uint64_t sub_1ABF0101C()
{
  qword_1ED877EE8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "orchestration");

  return MEMORY[0x1EEE66BB8]();
}

id GDConstructionLog()
{
  if (qword_1ED877F00 != -1)
  {
    dispatch_once(&qword_1ED877F00, &unk_1F20764F0);
  }

  v1 = qword_1ED877F08;

  return v1;
}

uint64_t sub_1ABF010B8()
{
  qword_1ED877F08 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "construction");

  return MEMORY[0x1EEE66BB8]();
}

id GDOntologyLog()
{
  if (qword_1ED879020 != -1)
  {
    dispatch_once(&qword_1ED879020, &unk_1F20764D0);
  }

  v1 = qword_1ED879028;

  return v1;
}

uint64_t sub_1ABF01154()
{
  qword_1ED879028 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "ontology");

  return MEMORY[0x1EEE66BB8]();
}

id GDStorageLog()
{
  if (qword_1ED879EB0 != -1)
  {
    dispatch_once(&qword_1ED879EB0, &unk_1F2076490);
  }

  v1 = qword_1ED879EB8;

  return v1;
}

uint64_t sub_1ABF011F0()
{
  qword_1ED879EB8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "storage");

  return MEMORY[0x1EEE66BB8]();
}

id GDECRLog()
{
  if (qword_1ED87BF40 != -1)
  {
    dispatch_once(&qword_1ED87BF40, &unk_1F2076470);
  }

  v1 = qword_1ED87BF48;

  return v1;
}

uint64_t sub_1ABF0128C()
{
  qword_1ED87BF48 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "ECR");

  return MEMORY[0x1EEE66BB8]();
}

id GDKTSLog()
{
  if (qword_1EB4DD470 != -1)
  {
    dispatch_once(&qword_1EB4DD470, &unk_1F2076450);
  }

  v1 = qword_1EB4DD478;

  return v1;
}

uint64_t sub_1ABF01328()
{
  qword_1EB4DD478 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "KTS");

  return MEMORY[0x1EEE66BB8]();
}

id GDBehaviorLog()
{
  if (qword_1ED877F10 != -1)
  {
    dispatch_once(&qword_1ED877F10, &unk_1F2076430);
  }

  v1 = qword_1ED877F18;

  return v1;
}

uint64_t sub_1ABF013C4()
{
  qword_1ED877F18 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "behavior");

  return MEMORY[0x1EEE66BB8]();
}

id GDKnosisLog()
{
  if (qword_1ED877EF0 != -1)
  {
    dispatch_once(&qword_1ED877EF0, &unk_1F2076410);
  }

  v1 = qword_1ED877EF8;

  return v1;
}

uint64_t sub_1ABF01460()
{
  qword_1ED877EF8 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "knosis");

  return MEMORY[0x1EEE66BB8]();
}

id GDAppIntentLog()
{
  if (qword_1EB549388 != -1)
  {
    dispatch_once(&qword_1EB549388, &unk_1F20763F0);
  }

  v1 = qword_1EB549380;

  return v1;
}

uint64_t sub_1ABF014FC()
{
  qword_1EB549380 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "appIntent");

  return MEMORY[0x1EEE66BB8]();
}

id GDK2TLog()
{
  if (qword_1EB549398 != -1)
  {
    dispatch_once(&qword_1EB549398, &unk_1F20A1978);
  }

  v1 = qword_1EB549390;

  return v1;
}

uint64_t sub_1ABF01598()
{
  qword_1EB549390 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "k2t");

  return MEMORY[0x1EEE66BB8]();
}

id GDLifeEventLog()
{
  if (qword_1ED873AD0[0] != -1)
  {
    dispatch_once(qword_1ED873AD0, &unk_1F20A1998);
  }

  v1 = qword_1ED8729C0;

  return v1;
}

uint64_t sub_1ABF01634()
{
  qword_1ED8729C0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "lifeEvent");

  return MEMORY[0x1EEE66BB8]();
}

id GDLifeEventSummaryLog()
{
  if (qword_1EB5493A8 != -1)
  {
    dispatch_once(&qword_1EB5493A8, &unk_1F20A19B8);
  }

  v1 = qword_1EB5493A0;

  return v1;
}

uint64_t sub_1ABF016D0()
{
  qword_1EB5493A0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "lifeEventSummary");

  return MEMORY[0x1EEE66BB8]();
}

id GDGlobalKnowledgeLog()
{
  if (qword_1EB4E3F20[0] != -1)
  {
    dispatch_once(qword_1EB4E3F20, &unk_1F20A19D8);
  }

  v1 = qword_1EB4DD480;

  return v1;
}

uint64_t sub_1ABF0176C()
{
  qword_1EB4DD480 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "globalKnowledge");

  return MEMORY[0x1EEE66BB8]();
}

id GDAutonamingLog()
{
  if (qword_1EB4DD488 != -1)
  {
    dispatch_once(&qword_1EB4DD488, &unk_1F20A19F8);
  }

  v1 = qword_1EB4DD490;

  return v1;
}

uint64_t sub_1ABF01808()
{
  qword_1EB4DD490 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "autonaming");

  return MEMORY[0x1EEE66BB8]();
}

id GDSearchLog()
{
  if (qword_1EB5493B8 != -1)
  {
    dispatch_once(&qword_1EB5493B8, &unk_1F20A1A18);
  }

  v1 = qword_1EB5493B0;

  return v1;
}

uint64_t sub_1ABF018A4()
{
  qword_1EB5493B0 = os_log_create([@"com.apple.intelligenceplatform" UTF8String], "search");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1ABF01B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF01B28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1ABF01B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64AsNSNumberForColumnAlias:"MD_ID"];
  v5 = [v3 getDoubleAsNSNumberForColumnAlias:"rank"];

  if (v4 && v5)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  v6 = MEMORY[0x1E69C5DD0];

  return *v6;
}

void sub_1ABF04F14()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];
  v3 = qword_1ED87C3D0;
  qword_1ED87C3D0 = v2;

  objc_autoreleasePoolPop(v0);
}

void sub_1ABF05148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0516C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF05184(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 accessInfoForKey:a1[4] useCase:a1[5]];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(a1[7] + 8) + 40))
  {
    v7 = a1[5];
    v8 = *(a1[6] + 16);
    v9 = a1[4];
    v22 = 0;
    v10 = [v8 accessInfoForViewName:v9 useCase:v7 error:&v22];
    v11 = v22;
    v12 = v22;
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v10;

    v15 = *(*(a1[7] + 8) + 40);
    if (v15)
    {
      v16 = [v15 alwaysAvailable];
      v17 = *(*(a1[7] + 8) + 40);
      v18 = a1[4];
      v19 = a1[5];
      if (v16)
      {
        [v3 setPersistentInfo:v17 forKey:v18 useCase:v19];
      }

      else
      {
        [v3 setInfo:v17 forKey:v18 useCase:v19];
      }
    }

    else
    {
      v20 = GDViewLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = a1[4];
        *buf = 138412546;
        v24 = v21;
        v25 = 2112;
        v26 = v12;
        _os_log_error_impl(&dword_1ABA78000, v20, OS_LOG_TYPE_ERROR, "Could not retrieve access info for view name %@ error: %@", buf, 0x16u);
      }

      objc_storeStrong((*(a1[8] + 8) + 40), v11);
    }
  }
}

void sub_1ABF054D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF054FC(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32) useCase:*(a1 + 40)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = +[GDRemoteViewAccessRequester currentProcessIsSandboxed];
    v8 = [*(a1 + 32) isEqualToString:@"standardFeatureView"];
    v9 = *(*(a1 + 48) + 16);
    if (v8)
    {
      v10 = *(a1 + 40);
      v34 = 0;
      v11 = &v34;
      v12 = [v9 accessTokenForFeaturesWithIsSandboxed:v7 useCase:v10 error:&v34];
    }

    else
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v33 = 0;
      v11 = &v33;
      v12 = [v9 accessTokenForViewName:v13 isSandboxed:v7 useCase:v14 error:&v33];
    }

    v15 = v12;
    v16 = *v11;
    v17 = *v11;
    if (v15)
    {
      v18 = [_GDViewAccessAssertion alloc];
      v19 = *(a1 + 32);
      v32 = v17;
      v20 = [(_GDViewAccessAssertion *)v18 initWithViewName:v19 extensionToken:v15 error:&v32];
      v21 = v32;
      v22 = v32;

      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v20;

      v25 = *(*(*(a1 + 56) + 8) + 40);
      if (v25)
      {
        v26 = [v25 alwaysAvailable];
        v27 = *(*(*(a1 + 56) + 8) + 40);
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        if (v26)
        {
          [v3 setPersistentObject:v27 forKey:v28 useCase:v29];
        }

        else
        {
          [v3 setObject:v27 forKey:v28 useCase:v29];
        }
      }

      else
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
      }

      v17 = v22;
    }

    else
    {
      v30 = GDViewLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 32);
        *buf = 138412546;
        v36 = v31;
        v37 = 2112;
        v38 = v17;
        _os_log_error_impl(&dword_1ABA78000, v30, OS_LOG_TYPE_ERROR, "Could not retrieve access token for view name %@ error: %@", buf, 0x16u);
      }

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
    }
  }
}

void sub_1ABF05818()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  getpid();
  v1 = sandbox_check();
  if (v1 == -1)
  {
    v2 = GDViewLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = __error();
      v4 = strerror(*v3);
      v5 = 136315138;
      v6 = v4;
      _os_log_fault_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_FAULT, "Error checking sandbox policy: %s", &v5, 0xCu);
    }
  }

  dword_1ED87C388 = v1 != 0;
  objc_autoreleasePoolPop(v0);
}

void sub_1ABF060A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF060C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1ABF060D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"viewName" table:"kv"];
  v5 = [v3 getNSStringForColumnName:"featureName" table:"kv"];
  v6 = [v3 getNSStringForColumnName:"subidentifierName" table:"kv"];

  if (v4 && v5 && v6)
  {
    if (![v6 length])
    {

      v6 = 0;
    }

    v7 = *(a1 + 32);
    v8 = [[GDFeatureKey alloc] initWithViewName:v4 featureName:v5 subidentifierName:v6];
    [v7 addObject:v8];
  }

  v9 = MEMORY[0x1E69C5DD0];

  return *v9;
}

void sub_1ABF06434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0644C(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) viewName];
  [v7 bindNamedParam:":viewName" toNSString:v3];

  v4 = [*(a1 + 32) featureName];
  [v7 bindNamedParam:":featureName" toNSString:v4];

  v5 = [*(a1 + 32) subidentifierName];

  if (v5)
  {
    v6 = [*(a1 + 32) subidentifierName];
    [v7 bindNamedParam:":subidentifierName" toNSString:v6];
  }
}

uint64_t sub_1ABF06520(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnName:"value" table:"kv"];
  if (v3)
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  v6 = MEMORY[0x1E69C5DD0];

  return *v6;
}

uint64_t sub_1ABF06774(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) objectForIdentifier:a2];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(*(a1 + 40) + 16))();
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1ABF06AE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v27 = *(a1 + 40);
  v4 = a2;
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = [v27 objectFTSTerm];

  if (v5)
  {
    v6 = [v27 objectFTSTerm];
    [v4 bindNamedParam:":match" toNSString:v6];
  }

  else
  {
    v7 = [v27 objects];
    v8 = [v7 count];

    v9 = [v27 objects];
    v6 = v9;
    if (v8 == 1)
    {
      v10 = [v9 objectAtIndexedSubscript:0];
      [v4 bindNamedParam:":object" toNSString:v10];
    }

    else
    {
      v11 = [v9 count];

      if (!v11)
      {
        goto LABEL_9;
      }

      v6 = [v27 objects];
      [v4 bindNamedParam:":objects" toNSArray:v6];
    }
  }

LABEL_9:
  v12 = [v27 predicates];
  v13 = [v12 count];

  v14 = [v27 predicates];
  v15 = v14;
  if (v13 == 1)
  {
    v16 = [v14 objectAtIndexedSubscript:0];
    [v4 bindNamedParam:":predicate" toNSString:v16];

LABEL_13:
    goto LABEL_14;
  }

  v17 = [v14 count];

  if (v17)
  {
    v15 = [v27 predicates];
    [v4 bindNamedParam:":predicates" toNSArray:v15];
    goto LABEL_13;
  }

LABEL_14:
  v18 = [v27 subjects];
  v19 = [v18 count];

  if (v19 == 1)
  {
    v20 = [GDEntityIdentifier alloc];
    v21 = [v27 subjects];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [(GDEntityIdentifier *)v20 initWithString:v22];

    [v4 bindNamedParam:":subject" toInt64:{-[GDEntityIdentifier intValue](v23, "intValue")}];
  }

  else
  {
    v24 = [v27 subjects];
    v25 = [v24 count];

    if (!v25)
    {
      goto LABEL_19;
    }

    v23 = [v27 subjects];
    v26 = [(GDEntityIdentifier *)v23 _pas_mappedArrayWithTransform:&unk_1F20A1B18];
    [v4 bindNamedParam:":subjects" toNSArray:v26];
  }

LABEL_19:
}

uint64_t sub_1ABF06D9C(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = -[GDEntityIdentifier initWithValue:]([GDEntityIdentifier alloc], "initWithValue:", [a2 getInt64ForColumnName:"subject" table:0]);
  v4 = [(GDEntityIdentifier *)v3 entityClass];
  v5 = MEMORY[0x1E69C5DD0];
  if (v4 == *(*(a1 + 32) + 32))
  {
    v6 = *(a1 + 40);
    v7 = [(GDEntityIdentifier *)v3 stringValue];
    (*(v6 + 16))(v6, v7, &v9);

    if (v9)
    {
      v5 = MEMORY[0x1E69C5DD8];
    }
  }

  return *v5;
}

id sub_1ABF06E68(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GDEntityIdentifier alloc] initWithString:v2];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[GDEntityIdentifier intValue](v3, "intValue")}];

  return v4;
}

id sub_1ABF06FEC(uint64_t a1, int a2)
{
  v14[9] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_opt_new();
    v13[0] = &unk_1F20CF2D8;
    v13[1] = &unk_1F20CF2F0;
    v14[0] = @"subject";
    v14[1] = @"predicate";
    v13[2] = &unk_1F20CF308;
    v13[3] = &unk_1F20CF320;
    v14[2] = @"relationshipId";
    v14[3] = @"relationshipPredicate";
    v13[4] = &unk_1F20CF338;
    v13[5] = &unk_1F20CF350;
    v14[4] = @"object";
    v14[5] = @"sources";
    v13[6] = &unk_1F20CF368;
    v13[7] = &unk_1F20CF380;
    v14[6] = @"confidence";
    v14[7] = @"sourceDuplicates";
    v13[8] = &unk_1F20CF398;
    v14[8] = @"timestamp";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:9];
    v6 = 1;
    do
    {
      if ((v6 & a2) != 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
        v8 = [v5 objectForKeyedSubscript:v7];

        if (!v8)
        {
          v10 = [MEMORY[0x1E696AAA8] currentHandler];
          [v10 handleFailureInMethod:sel_columnQueryStringForColumns_ object:a1 file:@"GDSQLGraphObjectRetriever.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"columnName"}];
        }

        [v4 addObject:v8];
      }

      v9 = v6 >= 0x81;
      v6 = (2 * v6);
    }

    while (!v9);
    v11 = [v4 _pas_componentsJoinedByString:{@", "}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1ABF07248(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 bindNamedParam:":entityClassIdentifier" toInt64:*(a1[4] + 32)];
  [v3 bindNamedParam:":classOffset" toInt64:{+[GDEntityIdentifier entityClassOffset](GDEntityIdentifier, "entityClassOffset")}];
  v4 = [[GDSQLEntityIterator alloc] initWithColumns:a1[6] statement:v3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [(GDSQLEntityIterator *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [objc_alloc(objc_opt_class()) initWithTriplesIterator:v10];
        if (v12)
        {
          v14 = 0;
          v13 = objc_autoreleasePoolPush();
          (*(a1[5] + 16))();
          objc_autoreleasePoolPop(v13);
          if (v14 == 1)
          {

            objc_autoreleasePoolPop(v11);
            goto LABEL_12;
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [(GDSQLEntityIterator *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void sub_1ABF075CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF075F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF07608(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":subject" toInt64:{objc_msgSend(v3, "intValue")}];
  v5 = [GDSQLTripleRowIterator alloc];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 32) stringValue];
  v11 = [(GDSQLTripleRowIterator *)v5 initWithColumns:v6 statement:v4 subjectOverride:v7];

  v8 = [objc_alloc(objc_opt_class()) initWithTriplesIterator:v11];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_1ABF0781C(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnName:"subject" table:0];
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
    v4 = MEMORY[0x1E69C5DD0];
  }

  else
  {
    v4 = MEMORY[0x1E69C5DD0];
  }

  v5 = *v4;

  return v5;
}

id *sub_1ABF078B4(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = GDSQLGraphObjectRetriever;
    v15 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      a1[4] = a5;
      a1[5] = a6;
    }
  }

  return a1;
}

id sub_1ABF07A44(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + a2 + 8) < 0)
  {
    v5 = 0;
  }

  else
  {
    v2 = [*(a1 + 24) getDoubleAsNSNumberForColumn:?];
    v3 = v2;
    v4 = &unk_1F20CF3C8;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  return v5;
}

__CFString *sub_1ABF07B74(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + a2 + 8) < 0)
  {
    v5 = 0;
  }

  else
  {
    v2 = [*(a1 + 24) getNSStringForColumn:?];
    v3 = v2;
    v4 = &stru_1F20A2CD8;
    if (v2)
    {
      v4 = v2;
    }

    v5 = v4;
  }

  return v5;
}

id *sub_1ABF07EF4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = GDLazyGraphTripleRow;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a3);
      objc_storeStrong(a1 + 11, a2);
    }
  }

  return a1;
}

_BYTE *sub_1ABF081D8(_BYTE *a1, int a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = GDLazyGraphTripleRowCursor;
    v7 = objc_msgSendSuper2(&v11, sel_init);
    a1 = v7;
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      *(v7 + 1) = -1;
      *(v7 + 16) = -1;
      do
      {
        if (((1 << v8) & a2) != 0)
        {
          *(v7 + v8 + 8) = v9++;
        }

        ++v8;
      }

      while (v8 != 9);
      objc_storeStrong(v7 + 3, a3);
      a1[32] = 0;
    }
  }

  return a1;
}

_BYTE *sub_1ABF08294(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = GDSQLTripleRowIterator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[16] = 0;
    }
  }

  return a1;
}

uint64_t sub_1ABF08898(uint64_t a1, void *a2)
{
  v16 = 0;
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"topicId" table:0];
  [v3 getDoubleForColumnName:"score" table:0];
  v6 = v5;
  v7 = [v3 getNSStringForColumnName:"most_recent_documentId" table:0];

  if (!v4)
  {
    v10 = GDViewLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      v9 = *MEMORY[0x1E69C5DD0];
      goto LABEL_8;
    }

    v15 = 0;
    v11 = "Encountered nil topicId while enumerating topics -- skipping";
    v12 = &v15;
LABEL_10:
    _os_log_error_impl(&dword_1ABA78000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_7;
  }

  if (!v7)
  {
    v10 = GDViewLog();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 0;
    v11 = "Encountered nil mostRecentDocId while enumerating topics -- skipping";
    v12 = &v14;
    goto LABEL_10;
  }

  v8 = [[GDTopicViewTopic alloc] initWithTopicIdentifier:v4 topicScore:v7 mostRecentDocumentId:v6];
  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69C5DD0];

LABEL_8:
  return v9;
}

void sub_1ABF09728()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [GDViewService alloc];
  v2 = +[GDSwiftViewService clientService];
  v3 = [(GDViewService *)v1 initWithSwiftViewService:v2];
  v4 = qword_1ED87C068;
  qword_1ED87C068 = v3;

  objc_autoreleasePoolPop(v0);
}

void sub_1ABF0B738(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 linkEntitiesForPerson:v4];
  (*(*(a1 + 40) + 16))();
}

void sub_1ABF0B9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0B9C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0B9DC(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 visualIdentifierObjects];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) visualIdentifier];
        v13 = [v12 isEqual:*(a1 + 32)];

        if (v13)
        {

          [*(a1 + 40) linkEntitiesForPerson:v6];
          goto LABEL_12;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 40) linkEntitiesForPerson:v6];
  v14 = [v6 contactIdentifiers];
  if ([v14 containsObject:*(a1 + 32)])
  {
  }

  else
  {
    v15 = [v6 conversationIdentifiers];
    v16 = [v15 containsObject:*(a1 + 32)];

    if ((v16 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_12:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  *a3 = 1;
LABEL_13:
}

void sub_1ABF0C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0C964(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0C97C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCAssetRegistryService: error during overrideAssetEntryForAssetId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0CA48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0CD48(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCAssetRegistryService: error during assetEntryDataForAssetId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0CE14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0D060(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF0D080(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCAssetRegistryServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF0D124()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCAssetRegistryServer interrupted.", v1, 2u);
  }
}

void sub_1ABF0D4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0D4CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0D4E4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during sysdiagnoseInfo call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0D5B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0D810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0D834(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during migrateViewDatabases call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF0DB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0DBC8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during streamsUpdated call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF0DF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0DF70(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during streamUpdatedWithStreamName call: %@ %@: %@", &v10, 0x20u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void sub_1ABF0E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0E350(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during sourceUpdated call: %@ %@: %@", &v10, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[7] + 8) + 24) = 0;
}

void sub_1ABF0E65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0E680(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: error during graphUpdated call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF0E948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF0E968(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "GDXPCCoordinationService: Connection invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF0EA0C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "GDXPCCoordinationService: Connection interrupted.", v1, 2u);
  }
}

void sub_1ABF0EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF0EDC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF0EDDC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during requestAssetDownloadForAssetType call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0EEA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F1D8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0F2A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F5D4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0F6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0F9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0F9D0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF0FA9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF0FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF0FD80(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEntityResolutionService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF10030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF10050(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCEntityResolutionService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF100F4()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCEntityResolutionService interrupted.", v1, 2u);
  }
}

void sub_1ABF10498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF104B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF104C8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logInstantWithId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF107CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF107E4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logEndWithId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF10AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF10AC4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCEventLogService: error during logStartWithId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF10D68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF10D88(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCEventLogServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF10E2C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCEventLogServer interrupted.", v1, 2u);
  }
}

void sub_1ABF111B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF111C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF111E0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCFeedbackService: error during logWithFeedbackData call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF11484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF114A4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCFeedbackServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF11548()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCFeedbackServer interrupted.", v1, 2u);
  }
}

void sub_1ABF118B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF118DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF118F4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCGraphSimulationService: error during mocking triples for entity tagging call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF11BBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF11BDC(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCGraphSimulationService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF11C80()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCGraphSimulationService interrupted.", v1, 2u);
  }
}

void sub_1ABF12040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF12064(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1207C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInferenceSupportService: error during assetEntryDataForAssetId call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF12148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF12394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF123B4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInferenceSupportServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF12458()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInferenceSupportServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF127C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF127D8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewValidate call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF12A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF12AC0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewDumpState call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF12E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF12E2C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewRunUpdate: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF12F18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF131E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13210(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = a1[4];
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewSetEnabled [name=%@]: %@", &v9, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[6] + 8) + 24) = 0;
}

void sub_1ABF13584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF135A8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewClearAllData call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF13694(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF138F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13918(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewStop: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF13C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF13C90(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewRunUpdate: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF13D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF13FC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF13FE8(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInternalBiomeServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1408C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInternalBiomeServer interrupted.", v1, 2u);
  }
}

void sub_1ABF14410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF14434(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1444C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during featureKeysWithError call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF14518(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1484C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewSql [name=%@]: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF14928(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF14C14(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during viewInfo call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF14CE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF14F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF14F64(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during clearEntityTaggingInjectedTags call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF152A0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during showEntityTaggingInjectedTags call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1538C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF15620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15644(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during injectTagForPerson call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF15968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15994(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding mockEntityRelevanceContext: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF15D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF15D4C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during generateActivityCentricLifeEvents call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF15E38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1615C(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding sampleEntityTaggingFeatures [personID=%@]: %@", &v11, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF16258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF165C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF165EC(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding evaluate [behaviorType=%@, queryName=%@, inferenceServiceInstanceId=%@]: %@", &v13, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF166FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF16A94(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = 138413314;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2048;
    v19 = v12;
    v20 = 1024;
    v21 = v13;
    v22 = 2112;
    v23 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during PhotosMetadataWithStartDate [startDate=%@, endDate=%@, maxEvents=%ld, newestFirst=%d]: %@", &v14, 0x30u);
  }

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF16BB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF16F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF16F4C(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during ContextData fetch [startDate=%@, endDate=%@, source=%@]: %@", &v13, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1705C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF173C0(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding featurizedBehaviors [featureName=%@, behaviorType=%@]: %@", &v12, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF174C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1783C(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding histograms [kind=%@, behaviorType=%@]: %@", &v12, 0x20u);
  }

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF17940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF17CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF17CD4(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v13 = 138413058;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding featurizeBehavior [type=%@, identifier=%@, date=%@]: %@", &v13, 0x2Au);
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF17DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF180DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18108(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = a1[4];
    v11 = 138412546;
    v12 = v10;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding recentBehaviorsOfType [type=%@]: %@", &v11, 0x16u);
  }

  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF18204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF184A0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding Digest call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF18794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF187B8(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding ClearAllData call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF18AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18AF4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during Behavior Understanding Status call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF18BE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF18F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF18F48(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF19014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF192C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF192EC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during vectorSearchBenchmark call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF193D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF19674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19698(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during validateGraph call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF19784(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF199E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19A08(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during benchmark call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF19CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF19D08(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runToMatchingPipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF19FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A020(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during runDeltaUpdatePipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1A2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A320(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during stopPipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1A59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A5B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  [v5 addObject:a2];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

void sub_1ABF1A630(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GDXPCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_error_impl(&dword_1ABA78000, v3, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during triplesQuery call: %@", &v4, 0xCu);
  }
}

void sub_1ABF1A8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1A910(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during stats call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF1A9DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1AC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1AC60(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during clearStatus call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1AF9C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCInternalService: error during status call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1B088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1B2D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1B2F4(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCInternalServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1B398()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCInternalServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1B884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1B8A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1B8C0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during runTest call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF1B98C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 256), 8);
  _Block_object_dispose((v38 - 208), 8);
  _Block_object_dispose((v38 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1BE8C(void *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnosisService: error during iteratingExecuteKGQ call: %@", &v8, 0xCu);
  }

  v5 = *(a1[4] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = 1;
}

void sub_1ABF1BF80(void *a1, void *a2, void *a3)
{
  v13 = a3;
  if (a2)
  {
    v6 = a2;
    *(*(a1[8] + 8) + 24) = [v6 hasMoreAnswers];
    v7 = [v6 offset];
    v8 = *(a1[9] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v6 limit];
    v11 = *(a1[10] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *(*(a1[6] + 8) + 24) = 1;
    *(*(a1[7] + 8) + 24) = 1;
  }

  (*(a1[4] + 16))();
}

void sub_1ABF1C48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 224), 8);
  _Block_object_dispose((v36 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1C4F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(*(*(a1 + 56) + 8) + 24) = 3;
    goto LABEL_19;
  }

  v10 = [v5 kgq];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [v6 query];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  *(*(*(a1 + 56) + 8) + 24) = [v6 status];
  v16 = [v6 debug];
  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ([v6 status] == 3)
  {
    v7 = [v6 errorMessage];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = [v6 answers];
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(a1 + 32) addObject:*(*(&v28 + 1) + 8 * i)];
          v24 = *(*(a1 + 80) + 8);
          v25 = *(v24 + 24);
          v26 = v25 < 1;
          v27 = v25 - 1;
          if (!v26)
          {
            *(v24 + 24) = v27;
            if (!*(*(*(a1 + 80) + 8) + 24))
            {
              *a3 = 1;
              goto LABEL_18;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

LABEL_19:
}

void sub_1ABF1C8D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1C8F0(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCKnosisServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1C994()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCKnosisServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1CCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1CCFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1CD14(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during checkIn call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1CFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D014(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during stopPipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D324(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during runFastpassPipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1D610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1D634(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCKnowledgeConstructionService: error during runFullPipeline call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF1D7C8(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCKnowledgeConstructionService invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1D86C()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCKnowledgeConstructionService interrupted.", v1, 2u);
  }
}

void sub_1ABF1DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1DBA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1DBB8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCLighthouseService: error during collectDBStatus call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF1DC84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1ABF1DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1DF3C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCLighthouseService: error during collectDBStats call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF1E008(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1ABF1E24C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1E26C(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCLighthouseServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1E310()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCLighthouseServer interrupted.", v1, 2u);
  }
}

void sub_1ABF1E690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF1E6B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF1E6CC(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during event view diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1E7B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1EA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1EA78(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during Views supplemental diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1EB64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1EE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1EE24(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityResolution supplemental diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1EF10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F1D0(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityRelevanceRanking supplemental diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1F2BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F57C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during EntityTagging supplemental diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1F668(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1F904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF1F928(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: error during diagnostics call: %@", &v10, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

void sub_1ABF1FA14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF1FC60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF1FC80(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "GDXPCSysdiagnoseService: Connection invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF1FD24()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "GDXPCSysdiagnoseService: Connection interrupted.", v1, 2u);
  }
}

void sub_1ABF200E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1ABF20110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1ABF20128(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during reportSQLiteErrorForViewName call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF20448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20474(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during reportUnknownErrorForViewName call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF20798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF207BC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessTokenForFeaturesWithIsSandboxed call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF20888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF20B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20BBC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessInfoForViewName call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF20C88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF20F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ABF20FBC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during accessTokenForViewName call: %@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void sub_1ABF21088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1ABF21324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1ABF21348(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = GDXPCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_error_impl(&dword_1ABA78000, v4, OS_LOG_TYPE_ERROR, "GDXPCViewService: error during runUpdateWithViewName call: %@", &v8, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_1ABF21628(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_1ABF21648(uint64_t a1)
{
  v2 = GDXPCLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1ABA78000, v2, OS_LOG_TYPE_DEFAULT, "Connection to GDXPCViewServer invalidated.", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    objc_sync_enter(v5);
    v6 = v5[1];
    v5[1] = 0;

    objc_sync_exit(v5);
  }
}

void sub_1ABF216EC()
{
  v0 = GDXPCLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1ABA78000, v0, OS_LOG_TYPE_ERROR, "Connection to GDXPCViewServer interrupted.", v1, 2u);
  }
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}