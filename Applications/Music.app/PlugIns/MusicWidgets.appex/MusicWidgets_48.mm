uint64_t sub_1004CAA00()
{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[36];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[7];
    v11 = *v1;
    v12 = *(v2 + 48);
    v13 = *(v9 - 8);
    (*(v13 + 32))(v6, v1 + v12, v9);
    (*(v13 + 56))(v6, 0, 1, v9);
    sub_100572D78();
    sub_1004A0514(v11, *v10, v8);
    (*(v7 + 40))(*v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
    v14.location = v5;
    CFRange.init(_:)(v14);
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_1004CA8F0;
    v16 = v0[23];
    v17 = v0[21];

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v16, v0 + 2);
  }
}

uint64_t sub_1004CACB8()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004CADB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_1004CADE8, 0, 0);
}

uint64_t sub_1004CADE8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1004CAF10;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1004CAF10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1004CB004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100009DCC(&unk_1006F87E0, &qword_1005A5B88);
  __chkstk_darwin();
  v9 = v18 - v8;
  sub_1004A316C(a1, v18 - v8);
  v10 = sub_100572F48();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1004A3908(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_100572E78();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_100572F38();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_1004CB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_10000CB98;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_100573C28();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  sub_100572C08();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v37 = *(a3 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v30 - v5;
  v34 = v6;
  v8 = type metadata accessor for DisplayUnit(0, v7, v6, v6);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin();
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v9;
  v21 = *(v9 + 16);
  v21(&v30 - v17, v35, v8, v16);
  (v21)(&v18[v20], v36, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v21)(v13, v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v37;
      v28 = v31;
      (*(v37 + 32))(v31, &v18[v20], a3);
      v24 = sub_1005727E8();
      v25 = *(v27 + 8);
      v25(v28, a3);
      v26 = v13;
      goto LABEL_6;
    }

LABEL_8:
    (*(v37 + 8))(v13, a3);
    v24 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  (v21)(v11, v18, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v11;
    goto LABEL_8;
  }

  v22 = v37;
  v23 = v32;
  (*(v37 + 32))(v32, &v18[v20], a3);
  v24 = sub_1005727E8();
  v25 = *(v22 + 8);
  v25(v23, a3);
  v26 = v11;
LABEL_6:
  v25(v26, a3);
  v15 = v33;
LABEL_9:
  (*(v15 + 8))(v18, v8);
  return v24 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  sub_100574128();
  sub_100573198();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_100574118();
  return (v8)(v7, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100574128();
  sub_100574128();
  sub_100572728();
  v9 = *(v4 + 8);
  v9(v6, v3);
  return (v9)(v8, v3);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v9, v10);
  ClosedRange<>.normalize(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t Array.extract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_getWitnessTable();
  result = sub_100573FB8();
  if (!v3)
  {
    v5 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_100573318();
    return v5;
  }

  return result;
}

void Array.extractFirst(where:)(uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  swift_getWitnessTable();
  sub_100573228();

  if (!v4)
  {
    if (v7)
    {
      (*(*(*(a3 + 16) - 8) + 56))(a4, 1, 1);
    }

    else
    {
      sub_100572E08();
      (*(*(*(a3 + 16) - 8) + 56))(a4, 0, 1);
    }
  }
}

uint64_t Array.removingDuplicates<A>(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100572668();
  sub_100572E38();

  swift_getWitnessTable();
  v3 = sub_100573FB8();

  return v3;
}

uint64_t sub_1004CBFC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(*a3 + class metadata base offset for KeyPath + 8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_100573158();
  v8 = sub_100573128();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin();
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100572668();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = sub_100572C18();

  return v12;
}

uint64_t sub_1004CC28C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v12 - v8;
  swift_getAtKeyPath();
  sub_100573158();
  v10 = sub_100573128();
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t sub_1004CC440(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v15 - v10;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v12 = a3(v11, v9);
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v11, v6);
  return v12 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(sub_1004CD85C, v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  sub_100572E38();

  swift_getWitnessTable();
  v7 = sub_100573168();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(sub_1004CD7F4, v8, a2, a3);

  return v9;
}

uint64_t sub_1004CC664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_100572E38();
  swift_getWitnessTable();
  return sub_100572C98() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin();
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return sub_100572C18();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_1004CD2EC, v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_1004CD36C, v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(sub_1004CD358, v4, a2, a3);
}

double Sequence.firstNonNil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100573F08();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100572BF8();
  swift_getWitnessTable();
  v9 = sub_100572BB8();
  (*(v6 + 8))(v8, v5);
  v11 = v9;
  sub_100572E38();
  swift_getWitnessTable();
  sub_100573258();

  return result;
}

double Sequence.firstNonNilWithOriginal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)(sub_1004CD3E4, v9, a3, TupleTypeMetadata2, a5);
}

uint64_t sub_1004CCC6C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[0] = a5;
  v24[1] = a3;
  v10 = sub_100573C28();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = *(a4 - 8);
  v15 = __chkstk_darwin();
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v15);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v17, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(v22 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v20((a6 + v23), v17, a4);
    return (*(*(v22 - 8) + 56))(a6, 0, 1, v22);
  }
}

void sub_1004CD030()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x1004CA1D0);
}

uint64_t sub_1004CD410(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CD474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
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
    goto LABEL_23;
  }

LABEL_12:
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

  return (v4 | v9) + 255;
}

void sub_1004CD580(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
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
LABEL_37:
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
            goto LABEL_37;
          }
        }

LABEL_34:
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
      goto LABEL_37;
    }

    goto LABEL_34;
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

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_1004CD768()
{
  result = qword_1006F9000[0];
  if (!qword_1006F9000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F9000);
  }

  return result;
}

uint64_t sub_1004CD7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1004CD7F4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return Set.contains(_:)(a1, v3, AssociatedTypeWitness, v4);
}

uint64_t sub_1004CD868()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void sub_1004CD950()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  JUMPOUT(0x1004CADB8);
}

uint64_t sub_1004CDAAC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1004CDB94(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000116F0;

  return sub_1004C9968(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_1004CDCD8()
{

  return swift_deallocObject();
}

uint64_t sub_1004CDD10(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

void Text.withChevron<A>(_:tintColor:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  sub_10056F298();
  __chkstk_darwin();
  v14 = sub_100572898();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:a1];

  if (v15)
  {
    sub_10056F288();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_10056F278(v33);
    v34._countAndFlagsBits = 41154;
    v34._object = 0xA200000000000000;
    sub_10056F268(v34);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_10056F278(v35);
    v16 = [v15 imageWithRenderingMode:2];
    sub_100570538();
    sub_10056F258();

    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_10056F278(v36);
    sub_10056F2B8();
    v17 = sub_10056FF08();
    v19 = v18;
    v21 = v20;
    v22 = sub_10056FE28();
    v24 = v23;
    v26 = v25;
    sub_10001B5A4(v17, v19, v21 & 1);

    v27 = sub_10056FE58();
    a4 = v28;
    v30 = v29;
    a6 = v31;

    sub_10001B5A4(v22, v24, v26 & 1);

    *a9 = v27;
  }

  else
  {
    *a9 = a3;
    v30 = a5;
    sub_10002AAC4(a3, a4, a5 & 1);
  }

  *(a9 + 8) = a4;
  *(a9 + 16) = v30 & 1;
  *(a9 + 24) = a6;
}

uint64_t Text.playableForegroundStyle<A>(_:isPlayable:)(int *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, void *a8)
{
  v10 = __chkstk_darwin();
  (*(v12 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v10);
  if (swift_dynamicCast())
  {
    if (a2)
    {
      v14 = v16[7];
    }

    else
    {
      v14 = sub_10056F6E8();
    }

    v16[3] = v14;
  }

  return sub_10056FE28();
}

uint64_t View.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlayableForegroundStyle(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = a2;
  sub_100570328();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1004CE3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  swift_getWitnessTable();
  v6 = sub_10056F6A8();
  v7 = *(a2 + 16);
  v59 = *(a2 + 24);
  v72 = sub_10056F798();
  v8 = sub_10056ECA8();
  v65 = *(v8 - 8);
  __chkstk_darwin();
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v57 - v10;
  sub_100010324(&qword_1006F9088, &qword_1005A67B8);
  v11 = v6;
  v64 = *(sub_10056ECA8() - 8);
  __chkstk_darwin();
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v57 - v13;
  __chkstk_darwin();
  v60 = &v57 - v15;
  v16 = *(v7 - 8);
  __chkstk_darwin();
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v19;
  v20 = sub_10056F5C8();
  v69 = *(v20 - 8);
  v70 = v20;
  v21 = __chkstk_darwin();
  v23 = &v57 - v22;
  v24 = v4;
  (*(v16 + 16))(v18, v4, v7, v21);
  v25 = swift_dynamicCast();
  v66 = v11;
  if (v25)
  {
    v26 = v68;
    v65 = v23;
    v27 = *(v24 + *(a2 + 36));
    v58 = v8;
    if (v27)
    {
      v28 = v87;
    }

    else
    {
      v28 = sub_10056F6B8();
    }

    v87 = v28;
    WitnessTable = swift_getWitnessTable();
    sub_1005700F8();
    v40 = sub_1004CF2C4();
    v75 = WitnessTable;
    v76 = v40;
    v67 = swift_getWitnessTable();
    v41 = v64;
    v42 = *(v64 + 16);
    v43 = v60;
    v42(v60, v14, v26);
    v44 = *(v41 + 8);
    v44(v14, v26);
    v45 = v61;
    v42(v61, v43, v26);
    v46 = swift_getWitnessTable();
    v73 = WitnessTable;
    v74 = v46;
    v47 = v58;
    v48 = swift_getWitnessTable();
    v23 = v65;
    sub_1004CEB44(v45, v26, v47, v67, v48);
    v44(v45, v26);
    v44(v43, v26);
  }

  else
  {
    v29 = swift_getWitnessTable();
    v30 = v62;
    sub_1005700F8();
    v31 = swift_getWitnessTable();
    v85 = v29;
    v86 = v31;
    v67 = swift_getWitnessTable();
    v32 = v65;
    v33 = *(v65 + 2);
    v34 = v63;
    v33(v63, v30, v8);
    v35 = *(v32 + 1);
    v35(v30, v8);
    v33(v30, v34, v8);
    v36 = sub_1004CF2C4();
    v83 = v29;
    v84 = v36;
    v37 = v68;
    v38 = swift_getWitnessTable();
    sub_1004CEC3C(v30, v37, v8, v38, v67);
    v35(v30, v8);
    v35(v34, v8);
  }

  v49 = swift_getWitnessTable();
  v50 = sub_1004CF2C4();
  v81 = v49;
  v82 = v50;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v79 = v49;
  v80 = v52;
  v53 = swift_getWitnessTable();
  v77 = v51;
  v78 = v53;
  v54 = v70;
  swift_getWitnessTable();
  v55 = v69;
  (*(v69 + 16))(v71, v23, v54);
  return (*(v55 + 8))(v23, v54);
}

uint64_t sub_1004CEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10056F5A8();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t sub_1004CEC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10056F5A8();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_10056F5B8();
}

uint64_t _UIHostingView.init(content:)(uint64_t a1)
{
  v1 = __chkstk_darwin();
  v2(v1);
  return sub_10056EB88();
}

uint64_t sub_1004CEDD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayableForegroundStyle(255, a1[1], a1[3], a4);
  sub_10056ECA8();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1004CEE68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CEEE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
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

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_1004CF054(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
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
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_1004CF2C4()
{
  result = qword_1006F9090;
  if (!qword_1006F9090)
  {
    sub_100010324(&qword_1006F9088, &qword_1005A67B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9090);
  }

  return result;
}

uint64_t sub_1004CF328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayableForegroundStyle(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_10056F6A8();
  sub_100010324(&qword_1006F9088, &qword_1005A67B8);
  sub_10056ECA8();
  sub_10056F798();
  sub_10056ECA8();
  sub_10056F5C8();
  swift_getWitnessTable();
  sub_1004CF2C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id TextKitManager.container.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TextKitManager.container.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

double TextKitManager.fragments.getter()
{
  swift_beginAccess();

  return result;
}

double TextKitManager.fragments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t TextKitManager.__allocating_init(text:size:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  TextKitManager.init(text:size:)(a1, a2);
  return v4;
}

void TextKitManager.init(text:size:)(void *a1, double a2)
{
  v2[5] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(NSTextLayoutManager) init];
  [v5 setUsesFontLeading:0];
  isa = sub_100572E68().super.super.isa;
  v7 = sub_100572898();
  [v5 setValue:isa forKey:v7];

  v2[2] = v5;
  v8 = objc_allocWithZone(NSTextContentStorage);
  v9 = v5;
  v10 = [v8 init];
  [v10 setAttributedString:a1];
  [v10 addTextLayoutManager:v9];
  v2[3] = v10;
  v11 = objc_allocWithZone(NSTextContainer);
  v12 = v10;
  v13 = [v11 initWithSize:{a2, 0.0}];
  [v13 setLineFragmentPadding:0.0];
  v14 = v13;
  [v9 setTextContainer:v14];
  v2[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1004D0D28;
  *(v15 + 24) = v2;
  v18[4] = sub_1004D08F8;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1004CF918;
  v18[3] = &unk_1006AE9F0;
  v16 = _Block_copy(v18);

  v17 = [v9 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_1004CF918(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1004CF95C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_100572CE8();
  if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  return 1;
}

Swift::Void __swiftcall TextKitManager.update(with:)(NSAttributedString with)
{
  [*(v1 + 24) setAttributedString:with.super.isa];
  v2 = *(v1 + 16);
  v3 = [v2 documentRange];
  [v2 invalidateLayoutForRange:v3];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v4 = swift_allocObject();
  *(v4 + 16) = sub_1004D093C;
  *(v4 + 24) = v1;
  aBlock[4] = sub_1004D0D2C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004CF918;
  aBlock[3] = &unk_1006AEA40;
  v5 = _Block_copy(aBlock);

  v6 = [v2 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v5];
  swift_unknownObjectRelease();
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void TextKitManager.update(with:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  [v3 size];
  [v3 setSize:a1];

  v4 = *(v1 + 16);
  v5 = [v4 documentRange];
  [v4 invalidateLayoutForRange:v5];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v6 = swift_allocObject();
  *(v6 + 16) = sub_1004D0D28;
  *(v6 + 24) = v1;
  v9[4] = sub_1004D0D2C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004CF918;
  v9[3] = &unk_1006AEA90;
  v7 = _Block_copy(v9);

  v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void *TextKitManager.linesWithFrames()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v45 = v1 & 0xC000000000000001;
  v42 = v1 + 32;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v44 = v2;
  do
  {
    if (v45)
    {
      v1 = sub_100573F58();
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v1 = *(v42 + 8 * v3);
    }

    v5 = v1;
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (v6)
    {
      goto LABEL_33;
    }

    v46 = v7;
    v8 = [v1 textLineFragments];
    sub_1000D3B98(0, &qword_1006F9098, NSTextLineFragment_ptr);
    v9 = sub_100572D28();

    if (v9 >> 62)
    {
      v1 = sub_100574178();
      v10 = v1;
      if (v1)
      {
LABEL_12:
        if (v10 < 1)
        {
          goto LABEL_34;
        }

        for (i = 0; v10 != i; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_100573F58();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 typographicBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v13 boundsWithType:2 options:0];
          v23 = v22;
          v47.origin.x = v15;
          v47.origin.y = v17;
          v47.size.width = v19;
          v47.size.height = v21;
          Height = CGRectGetHeight(v47);
          [v5 layoutFragmentFrame];
          v26 = v25;
          [v5 layoutFragmentFrame];
          v28 = v27;
          v29 = [v13 characterRange];
          v31 = v30;
          v32 = [v5 rangeInElement];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 range];

            v6 = __OFADD__(v29, v34);
            v29 = &v34[v29];
            if (v6)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v40 = v1;
              v2 = sub_100574178();
              v1 = v40;
              if (!v2)
              {
                return _swiftEmptyArrayStorage;
              }

              goto LABEL_3;
            }
          }

          else
          {
          }

          v35 = v15 + v26;
          v36 = v17 + v28 - (v23 - Height);
          v48.origin.x = v35;
          v48.origin.y = v36;
          v48.size.width = v19;
          v48.size.height = v23;
          if (CGRectGetWidth(v48) <= 0.0)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_1004A85B4(0, v4[2] + 1, 1, v4);
            }

            v38 = v4[2];
            v37 = v4[3];
            if (v38 >= v37 >> 1)
            {
              v4 = sub_1004A85B4((v37 > 1), v38 + 1, 1, v4);
            }

            v4[2] = v38 + 1;
            v39 = &v4[7 * v38];
            *(v39 + 4) = v13;
            v39[5] = v35;
            v39[6] = v36;
            v39[7] = v19;
            v39[8] = v23;
            *(v39 + 9) = v29;
            *(v39 + 10) = v31;
          }
        }
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v3 = v46;
  }

  while (v46 != v44);

  return v4;
}

uint64_t TextKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1004D020C(void *a1)
{
  *&v1[OBJC_IVAR____TtCCE14MusicUtilitiesCSo20NSTextLayoutFragment4View13FragmentLayer_fragment] = a1;
  v16.receiver = v1;
  v16.super_class = _s4ViewC13FragmentLayerCMa();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, "init");
  [v3 renderingSurfaceBounds];
  [v4 setBounds:?];
  [v4 bounds];
  v6 = -v5;
  [v4 bounds];
  v8 = v6 / v7;
  [v4 bounds];
  v10 = -v9;
  [v4 bounds];
  [v4 setAnchorPoint:{v8, v10 / v11}];
  [v3 layoutFragmentFrame];
  [v4 setPosition:?];
  v12 = [objc_opt_self() currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  [v4 setContentsScale:v14];
  [v4 setNeedsDisplay];

  return v4;
}

uint64_t NSTextLayoutFragment.View.__allocating_init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1004D095C(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  sub_1004D095C(a1, a2);
  v4 = v3;

  return v4;
}

id NSTextLineFragment.View.__allocating_init(line:size:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v9 setOpaque:{0, v11.receiver, v11.super_class}];

  return v9;
}

id NSTextLineFragment.View.init(line:size:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NSTextLineFragment.View();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v8 setOpaque:{0, v10.receiver, v10.super_class}];

  return v8;
}

void NSTextLineFragment.View.draw(_:)()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    [*(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line) drawAtPoint:0.0 inContext:0.0];
  }
}

id sub_1004D08A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004D0924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004D095C(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCE14MusicUtilitiesCSo20NSTextLayoutFragment4View_fragments] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for NSTextLayoutFragment.View();

  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (a2)
  {
    v6 = kCAFilterColorMonochrome;
    v7 = objc_allocWithZone(CAFilter);
    v8 = a2;
    v9 = [v7 initWithType:{v6, v25.receiver, v25.super_class}];
    isa = sub_100573178().super.super.isa;
    [v9 setValue:isa forKey:kCAFilterInputBias];

    v11 = sub_100573178().super.super.isa;
    [v9 setValue:v11 forKey:kCAFilterInputAmount];

    v12 = [v8 CGColor];
    [v9 setValue:v12 forKey:kCAFilterInputColor];

    v13 = [v5 layer];
    sub_100009DCC(&qword_1006F8E38, &qword_1005A6510);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10057B510;
    *(v14 + 56) = sub_1000D3B98(0, &qword_1006F9238, CAFilter_ptr);
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = sub_100572D08().super.isa;

    [v13 setFilters:v16];
  }

  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v5 setOpaque:0];
    return;
  }

  v17 = sub_100574178();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = sub_100573F58();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = objc_allocWithZone(_s4ViewC13FragmentLayerCMa());
      v22 = v20;
      v23 = sub_1004D020C(v22);
      v24 = [v5 layer];
      [v24 addSublayer:v23];
    }

    while (v17 != v18);
    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_1004D0D30(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000F2364(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1004D0DC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004D842C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1004D761C(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1004D0EE0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_100574178();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100573F58();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1000D3B98(0, &qword_1006F92C8, UIViewController_ptr);
    v8 = sub_100573A58();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_1004D1050(id *a1, void *a2)
{
  result = [*a1 customView];
  if (result)
  {
    v4 = result;
    sub_1000D3B98(0, &qword_1006F92E8, UIView_ptr);
    v5 = a2;
    v6 = sub_100573A58();

    return (v6 & 1);
  }

  return result;
}

void *sub_1004D1110(unint64_t a1, unint64_t a2)
{
  v14 = a1;
  v17 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v4 = 0;
    v15 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_100573F58();
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 customView];
      if (v8 && (v16 = v8, __chkstk_darwin(), v13[2] = &v16, v10 = v9, v11 = sub_1004E155C(sub_1004D7598, v13, v14), v10, (v11 & 1) != 0))
      {
        sub_100573FC8();
        sub_100574008();
        sub_100574018();
        sub_100573FD8();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Collection<>.all(embedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __chkstk_darwin();
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return sub_100572C18();
}

uint64_t sub_1004D13B4(id *a1, unint64_t a2)
{
  v3 = [*a1 customView];
  if (v3)
  {
    v9 = v3;
    __chkstk_darwin();
    v8[2] = &v9;
    v5 = v4;
    v6 = sub_1004E155C(sub_1004D769C, v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *UINavigationItem.existingBarButtonItems(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 rightBarButtonItems];
  if (v4)
  {
    v5 = v4;
    sub_1000D3B98(0, &qword_1006F9240, UIBarButtonItem_ptr);
    v6 = sub_100572D28();

    v7 = sub_1004D1110(a1, v6);

    sub_1004B3C58(v7);
  }

  v8 = [v2 leftBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_1000D3B98(0, &qword_1006F9240, UIBarButtonItem_ptr);
    v10 = sub_100572D28();

    v11 = sub_1004D1110(a1, v10);

    sub_1004B3C58(v11);
  }

  return _swiftEmptyArrayStorage;
}

id UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  sub_1000D3B98(0, &qword_1006F9248, UIWindow_ptr);
  v5 = sub_100572D28();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = sub_100574178();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_100573F58();
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void UICollectionView.register<A>(_:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_100572898();
  [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];
}

void UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_100572898();
  v8 = sub_100572898();
  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v7 withReuseIdentifier:v8];
}

uint64_t UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100572898();
  isa = sub_10056CDA8().super.isa;
  v8 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100573ED8(38);

    v10._countAndFlagsBits = sub_100574758();
    sub_100572A98(v10);

    v11._countAndFlagsBits = 544497952;
    v11._object = 0xE400000000000000;
    sub_100572A98(v11);
    sub_10056CE18();
    sub_1004D70BC(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v12._countAndFlagsBits = sub_100574408();
    sub_100572A98(v12);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_100572898();
  v9 = sub_100572898();
  isa = sub_10056CDA8().super.isa;
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100573ED8(52);
    v13._object = 0x80000001005BD190;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    sub_100572A98(v13);
    v14._countAndFlagsBits = sub_100574758();
    sub_100572A98(v14);

    v15._countAndFlagsBits = 544497952;
    v15._object = 0xE400000000000000;
    sub_100572A98(v15);
    sub_10056CE18();
    sub_1004D70BC(&qword_1006F8E60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v16._countAndFlagsBits = sub_100574408();
    sub_100572A98(v16);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.globalIndex(for:)()
{
  v1 = [v0 numberOfSections];
  result = sub_10056CDF8();
  if (__OFADD__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result + 1 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = result + 1;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v0 numberOfItemsInSection:v4];
    result = sub_10056CDF8();
    if (v4 == result)
    {
      goto LABEL_13;
    }

    ++v4;
    v7 = __OFADD__(v5, v6);
    v5 += v6;
  }

  while (!v7);
  __break(1u);
LABEL_13:
  if (sub_10056CDE8() >= v6)
  {
    return 0;
  }

  v8 = sub_10056CDE8();
  v7 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v7)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_100009DCC(&qword_1006F92C0, &unk_1005A6828);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_10056CE18();
  v9 = *(*(v8 - 8) + 56);
  v9(a2, 1, 1, v8);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v11 = result;
    v17 = a2;
    v12 = 0;
    v13 = 0;
    while (v11 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v14 = v13;
      result = [v3 numberOfItemsInSection:v12];
      v13 = v14 + result;
      if (__OFADD__(v14, result))
      {
        goto LABEL_11;
      }

      ++v12;
      if (v13 > a1)
      {
        result = a1 - v14;
        if (__OFSUB__(a1, v14))
        {
          goto LABEL_13;
        }

        sub_10056CDD8();
        v15 = v17;
        sub_10001036C(v17, &qword_1006F92C0, &unk_1005A6828);
        v9(v7, 0, 1, v8);
        return sub_1004D6714(v7, v15);
      }
    }
  }

  return result;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *UICollectionView.isLast(indexPath:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10056CDF8();
  result = [v1 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v3 != result - 1)
    {
      return 0;
    }

    v5 = sub_10056CDE8();
    result = [v2 numberOfItemsInSection:v3];
    if (!__OFSUB__(result, 1))
    {
      return (v5 == result - 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_100572898();
  v6 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:v5];

  sub_10056CE18();
  v7 = sub_100572D28();

  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v2;

  return v7;
}

void sub_1004D20D4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v8 = *(sub_100009DCC(&qword_1006F9328, &qword_1005A6A70) + 48);
  v9 = sub_10056CE18();
  (*(*(v9 - 8) + 16))(a5, a1, v9);
  v10 = sub_100572898();
  isa = sub_10056CDA8().super.isa;
  v12 = [a2 supplementaryViewForElementKind:v10 atIndexPath:isa];

  *(a5 + v8) = v12;
}

double UICollectionView.clearSelection(using:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 indexPathsForSelectedItems];
  if (v11)
  {
    v13 = v11;
    v14 = sub_100572D28();

    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v3;
      *(v15 + 32) = a2 & 1;
      v33 = sub_1004D67D8;
      v34 = v15;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002ECBD0;
      v32 = &unk_1006AEB18;
      v16 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v17 = v3;

      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      v33 = sub_1004D6850;
      v34 = v18;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002ECBD0;
      v32 = &unk_1006AEB68;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      [a1 animateAlongsideTransition:v16 completion:v19];
      _Block_release(v19);
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = *(v14 + 16);
      if (v21)
      {
        v23 = *(v7 + 16);
        v22 = v7 + 16;
        v27 = v14;
        v28 = v23;
        v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v25 = *(v22 + 56);
        do
        {
          v28(v10, v24, v6);
          isa = sub_10056CDA8().super.isa;
          [v3 deselectItemAtIndexPath:isa animated:{a2 & 1, v27}];

          (*(v22 - 8))(v10, v6);
          v24 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1004D24E4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a4;
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6, v8);
      isa = sub_10056CDA8().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v19 & 1];

      (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

id sub_1004D2634(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10056CE18();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if (result)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      do
      {
        v14(v10, v16, v6);
        isa = sub_10056CDA8().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v13 - 8))(v10, v6);
        v16 += v17;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t UICollectionView.isDraggingCell(at:)()
{
  v1 = v0;
  v2 = sub_10056E148();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_10056E178();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_10056CDA8().super.isa;
  v13 = [v1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    v14 = [v13 _bridgedConfigurationState];
    sub_10056E168();

    sub_10056E158();
    (*(v9 + 8))(v11, v8);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    v15 = sub_10056E138();

    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v7, v2);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id UIColor.interpolate(to:ratio:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v12 blue:&v10 alpha:&v8];
  [a1 getRed:&v13 green:&v11 blue:&v9 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v13 green:(1.0 - v5) * v12 + v5 * v11 blue:(1.0 - v5) * v10 + v5 * v9 alpha:(1.0 - v5) * v8 + v5 * v7];
}

double UIColor.hsba.getter()
{

  return sub_1004D2C8C(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgba.getter()
{

  return sub_1004D2C8C(&selRef_getRed_green_blue_alpha_);
}

double sub_1004D2C8C(SEL *a1)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return v6;
}

UIImage_optional __swiftcall UIImage.init(systemName:font:scale:)(Swift::String systemName, UIFont font, UIImageSymbolScale scale)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_100572898();

  v7 = [objc_opt_self() configurationWithFont:font.super.isa scale:scale];
  v8 = [ObjCClassFromMetadata systemImageNamed:v6 withConfiguration:v7];

  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id UIImage.init(systemName:pointSize:weight:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_100572898();

  v8 = [objc_opt_self() configurationWithPointSize:a3 weight:a4];
  v9 = [ObjCClassFromMetadata systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

UIImage_optional __swiftcall UIImage.byCroppingToUniformCenter()()
{
  v1 = v0;
  v2 = v0;
  [(CGImage *)v2 size];
  v4 = v3;
  v6 = v5;
  if (sub_10056CEC8())
  {
    if (v6 >= v4)
    {
      v9 = round((v6 - v4) * 0.5);
      v8 = 0.0;
      v10 = v4;
      v11 = v4;
    }

    else
    {
      v8 = round((v4 - v6) * 0.5);
      v9 = 0.0;
      v10 = v6;
      v11 = v6;
    }

    v1 = UIImage.byCropping(to:)(v8, v9, v10, v11);
  }

  v12 = v1;
  result.value.super.isa = v12;
  result.is_nil = v7;
  return result;
}

CGImage *UIImage.byCropping(to:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v11 = result;
    _s3__C6CGSizeVMa_3(0);
    if ((sub_10056CEC8() & 1) == 0)
    {
      goto LABEL_7;
    }

    [v4 scale];
    v13 = v12;
    v14 = sub_10056CEC8();
    v15 = v13 * a1;
    v16 = v13 * a2;
    v17 = v13 * a3;
    v18 = v13 * a4;
    if ((v14 & 1) == 0)
    {
      v18 = a4;
      v17 = a3;
      v16 = a2;
      v15 = a1;
    }

    v19 = CGImageCreateWithImageInRect(v11, *&v15);
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:objc_msgSend(v5 orientation:{"imageOrientation", 0x3FF0000000000000), v13}];

      return v21;
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

UIViewController_optional __swiftcall UINavigationController.removeViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = [v2 viewControllers];
  sub_1000D3B98(0, &qword_1006F92C8, UIViewController_ptr);
  v7 = sub_100572D28();

  v8 = sub_1004D0EE0(_.super.super.isa, v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_1004D0D30(v8);
    isa = sub_100572D08().super.isa;

    [v3 setViewControllers:isa animated:animated];

    v11 = v12;
  }

  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

double UIScrollView.normalizedContentOffset.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  [v0 contentOffset];
  return v2 + v3;
}

uint64_t UIScrollView.isScrolling.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, "isDecelerating") & 1) != 0 || (objc_msgSend(v0, "_isVerticalBouncing"))
  {
    return 1;
  }

  else
  {
    return [v0 _isHorizontalBouncing];
  }
}

id UIView.forAutolayout.getter()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

void UIView.Shadow.hash(into:)(uint64_t a1)
{
  sub_100573A68();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  v3 = v1[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1005746B8(*&v3);
  v4 = v1[3];
  v5 = v1[4];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1005746B8(*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  sub_1005746B8(*&v6);
}

Swift::Int UIView.Shadow.hashValue.getter()
{
  sub_100574678();
  UIView.Shadow.hash(into:)(v1);
  return sub_1005746C8();
}

Swift::Int sub_1004D34CC(uint64_t a1)
{
  sub_100574678();
  UIView.Shadow.hash(into:)(v2);
  return sub_1005746C8();
}

BOOL sub_1004D3508(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
  v10 = sub_100573A58();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

id UIView.shadowPathIsBounds.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPathIsBounds];

  return v2;
}

void UIView.shadowPathIsBounds.setter(char a1)
{
  v3 = [v1 layer];
  [v3 setShadowPathIsBounds:a1 & 1];
}

void (*UIView.shadowPathIsBounds.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 layer];
  v4 = [v3 shadowPathIsBounds];

  *(a1 + 8) = v4;
  return sub_1004D36E4;
}

void sub_1004D36E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 layer];
  [v2 setShadowPathIsBounds:v1];
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  sub_1004D6AFC(a1);

  return sub_1004D6C20(a1);
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return sub_1004D3968;
}

void sub_1004D3968(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_1004D6C50(v2, v2 + 120);
    sub_1004D6AFC(v2);
    sub_1004D6C20(v2);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    sub_1004D6AFC(v2 + 40);
    sub_1004D6C20(v2 + 40);
  }

  free(v2);
}

uint64_t UIView.Border.init(view:)(void *a1)
{
  v2 = sub_1004D6C88(a1);

  return v2;
}

uint64_t UIView.border.getter()
{
  v1 = v0;
  v2 = sub_1004D6C88(v1);

  return v2;
}

void UIView.border.setter(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1004D6D98(a1, a2, a3);
}

void (*UIView.border.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1;
  v4 = sub_1004D6C88(v3);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return sub_1004D3B88;
}

void sub_1004D3B88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v4 = v6;
    sub_1004D6D98(v2, v3, v6);

    v5 = v4;
  }

  else
  {
    sub_1004D6D98(v2, v3, v6);
    v5 = v6;
  }
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

id UIView.untransformedFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

void (*UIView.untransformedFrame.modify(uint64_t *a1))(CGFloat **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = UIView.untransformedFrame.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1004D3F30;
}

void sub_1004D3F30(CGFloat **a1)
{
  v1 = *a1;
  UIView.untransformedFrame.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

float UIView.contentCompressionResistancePriority.getter()
{
  [v0 contentCompressionResistancePriorityForAxis:0];
  v2 = v1;
  [v0 contentCompressionResistancePriorityForAxis:1];
  return v2;
}

float UIView.CompressionResistancePriority.init(view:)(void *a1)
{
  [a1 contentCompressionResistancePriorityForAxis:0];
  v3 = v2;
  [a1 contentCompressionResistancePriorityForAxis:1];

  return v3;
}

id UIView.contentCompressionResistancePriority.setter(double a1, float a2)
{
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  *&v4 = a2;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

id (*UIView.contentCompressionResistancePriority.modify(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 contentCompressionResistancePriorityForAxis:0];
  v4 = v3;
  [v1 contentCompressionResistancePriorityForAxis:1];
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return sub_1004D4100;
}

id sub_1004D4100(uint64_t a1, double a2)
{
  v2 = *a1;
  LODWORD(a2) = *(a1 + 8);
  v3 = *(a1 + 12);
  [*a1 setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v4) = v3;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

UIImage *UIView.screenshot.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 isOpaque];
  v8.width = v2;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, v5, 0.0);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v6;
}

Swift::Void __swiftcall UIView.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 viewWithTag:1234];
  if (v4)
  {
    isa = v4;
    [v1 bringSubviewToFront:?];
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
    [v5 setBackgroundColor:v6];

    v7 = with.super.isa;
    sub_1004D6D98(0x3FF0000000000000, 1, with.super.isa);

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTag:1234];
    [v5 setUserInteractionEnabled:0];
    [v2 addSubview:v5];
    v8 = objc_opt_self();
    sub_100009DCC(&qword_1006F8400, &qword_1005A57D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100582550;
    v10 = [v5 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v5 bottomAnchor];
    v14 = [v2 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v5 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v5 trailingAnchor];
    v20 = [v2 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
    isa = sub_100572D08().super.isa;

    [v8 activateConstraints:isa];
  }
}

double UIView.traverseViewHierarchy(_:)(void (*a1)(void *, char *), uint64_t a2)
{
  v3 = v2;
  v14 = 0;
  a1(v3, &v14);
  if ((v14 & 1) == 0)
  {
    v7 = [v3 subviews];
    sub_1000D3B98(0, &qword_1006F92E8, UIView_ptr);
    v8 = sub_100572D28();

    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_100573F58();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v14)
        {

          goto LABEL_14;
        }

        sub_1004D6EFC(v11, a1, a2, &v14);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

void UIView.statusBarFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 window];
  v4 = 0uLL;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 windowScene];

    if (v6)
    {
      v7 = [v6 statusBarManager];
      if (v7)
      {
        v8 = v7;
        if (([v7 isStatusBarHidden] & 1) == 0)
        {
          [v8 statusBarFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v6 screen];
          v20 = [v19 coordinateSpace];

          [v1 convertRect:v20 fromCoordinateSpace:{v12, v14, v16, v18}];
          v26 = v21;
          v27 = v22;
          v25 = v23;
          v28 = v24;

          swift_unknownObjectRelease();
          *&v10 = v25;
          *&v4 = v26;
          v9 = 0;
          *(&v4 + 1) = v27;
          *(&v10 + 1) = v28;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v9 = 1;
    v10 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v9 = 1;
    v10 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id UIView.allowsAnimatedChanges.getter()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = [v0 window];
    if (result)
    {
      v2 = result;
      v3 = [result windowScene];

      if (v3)
      {
        v4 = [v3 activationState];

        return (v4 == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall UILayoutGuide.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 owningView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewWithTag:1234];
    if (v6)
    {
      isa = v6;
      [v5 bringSubviewToFront:?];
    }

    else
    {
      v7 = [objc_allocWithZone(UIView) init];
      v8 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
      [v7 setBackgroundColor:v8];

      v9 = with.super.isa;
      sub_1004D6D98(0x3FF0000000000000, 1, with.super.isa);

      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setTag:1234];
      [v7 setUserInteractionEnabled:0];
      [v5 addSubview:v7];
      v10 = objc_opt_self();
      sub_100009DCC(&qword_1006F8400, &qword_1005A57D0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100582550;
      v12 = [v7 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v7 bottomAnchor];
      v16 = [v2 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      v18 = [v7 leadingAnchor];
      v19 = [v2 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v11 + 48) = v20;
      v21 = [v7 trailingAnchor];
      v22 = [v2 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v11 + 56) = v23;
      sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
      isa = sub_100572D08().super.isa;

      [v10 activateConstraints:isa];

      v5 = v7;
    }
  }
}

BOOL UIViewController.canPresentViewControllers.getter()
{
  v1 = [v0 popoverPresentationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL UIViewController.canBeDismissed.getter()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall UIViewController.dismiss(after:)(Swift::Double after)
{
  v1 = sub_100570B88();
  v19 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100570BC8();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100570BF8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_1000D3B98(0, &qword_1006F92F0, OS_dispatch_queue_ptr);
  v13 = sub_1005735E8();
  sub_100570BE8();
  sub_100570C58();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1004D70B4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_1006AEBB8;
  v15 = _Block_copy(aBlock);

  sub_100570BA8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1004D70BC(&qword_1006F81C8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006F9300, &qword_1005A5520);
  sub_10049B5B0();
  sub_100573DA8();
  sub_1005735A8();
  _Block_release(v15);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);
  v16(v12, v7);
}

void sub_1004D51B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 presentedViewController];
      if (v5)
      {
        v6 = v5;
        sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
        if (sub_100573A58())
        {
          [v4 dismissViewControllerAnimated:1 completion:0];
        }

        v2 = v4;
      }

      else
      {
        v6 = v4;
      }

      v2 = v6;
    }
  }
}

Swift::Void __swiftcall UIViewController.add(_:)(UIViewController a1)
{
  [v1 addChildViewController:a1.super.super.isa];
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [(objc_class *)a1.super.super.isa view];
      if (v5)
      {
        v6 = v5;
        [v4 addSubview:v5];

        v7 = [v1 view];
        if (v7)
        {
          v8 = v7;
          [v7 setNeedsLayout];

          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:

  [(objc_class *)a1.super.super.isa didMoveToParentViewController:v1];
}

Swift::Void __swiftcall UIViewController.remove(_:)(UIViewController a1)
{
  v3 = [(objc_class *)a1.super.super.isa parentViewController];
  if (!v3)
  {
    return;
  }

  v4 = v3;

  if (v4 != v1)
  {
    return;
  }

  [(objc_class *)a1.super.super.isa willMoveToParentViewController:0];
  if (![v1 isViewLoaded] || !-[objc_class isViewLoaded](a1.super.super.isa, "isViewLoaded"))
  {
    goto LABEL_11;
  }

  v5 = [(objc_class *)a1.super.super.isa view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v6 isDescendantOfView:v7];

  if (v9)
  {
    v10 = [(objc_class *)a1.super.super.isa view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:

  [(objc_class *)a1.super.super.isa removeFromParentViewController];
}

Swift::Bool __swiftcall UIViewController.isDescendant(of:)(UIViewController of)
{
  v3 = [v1 parentViewController];
  if (v3 && (v4 = v3, v3, v4 == of.super.super.isa))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [v1 parentViewController];
    if (v5)
    {
      v6 = v5;
      v7 = UIViewController.isDescendant(of:)(of);

      LOBYTE(v5) = v7;
    }
  }

  return v5;
}

void UIViewController.traverseViewControllerHierarchy(_:)(void (*a1)(void *, _BYTE *), uint64_t a2)
{
  v44[0] = 0;
  a1(v2, v44);
  v38 = v2;
  v3 = [v2 childViewControllers];
  sub_1000D3B98(0, &qword_1006F92C8, UIViewController_ptr);
  v4 = sub_100572D28();

  v39 = v4;
  if (v4 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100574178())
  {
    swift_beginAccess();
    if (i)
    {
      v6 = 0;
      v40 = i;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v9 = sub_100573F58();
        }

        else
        {
          if (v6 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v9 = *(v39 + 32 + 8 * v6);
        }

        v10 = v9;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        if (v44[0])
        {

          goto LABEL_32;
        }

        v12 = swift_allocObject();
        *(v12 + 16) = 0;
        v13 = (v12 + 16);
        swift_beginAccess();
        a1(v10, v44);
        swift_endAccess();
        *(v12 + 16) = v44[0];
        v14 = [v10 childViewControllers];
        v15 = sub_100572D28();

        v41 = v10;
        if (v15 >> 62)
        {
          v16 = sub_100574178();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        swift_beginAccess();
        if (v16)
        {
          v17 = 0;
          while (1)
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = sub_100573F58();
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            v20 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (*v13 == 1)
            {

              goto LABEL_25;
            }

            sub_1004D7114(v18, v12, a1, a2, v44);

            ++v17;
            if (v20 == v16)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          break;
        }

LABEL_25:

        swift_beginAccess();
        if (*v13 == 1)
        {

          v7 = v40;
          v8 = v41;
        }

        else
        {
          v8 = v41;
          v21 = [v41 presentedViewController];
          v7 = v40;
          if (v21)
          {
            v22 = v21;
            sub_1004D7114(v21, v12, a1, a2, v44);
          }

          else
          {
          }
        }

        if (v6 == v7)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_32:

    swift_beginAccess();
    if (v44[0])
    {
      return;
    }

    v23 = [v38 presentedViewController];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    v26 = (v25 + 16);
    swift_beginAccess();
    a1(v24, v44);
    swift_endAccess();
    *(v25 + 16) = v44[0];
    v27 = [v24 childViewControllers];
    v28 = sub_100572D28();

    v29 = v24;
    v30 = v28 >> 62 ? sub_100574178() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    swift_beginAccess();
    if (!v30)
    {
      break;
    }

    v31 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v32 = sub_100573F58();
      }

      else
      {
        if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v32 = *(v28 + 8 * v31 + 32);
      }

      v33 = v32;
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (*v26 == 1)
      {

        goto LABEL_47;
      }

      sub_1004D7114(v32, v25, a1, a2, v44);

      ++v31;
      if (v34 == v30)
      {
        goto LABEL_47;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_47:

  swift_beginAccess();
  if (*v26 == 1)
  {

    v35 = v29;
  }

  else
  {
    v35 = v29;
    v36 = [v29 presentedViewController];
    if (v36)
    {
      v37 = v36;
      sub_1004D7114(v36, v25, a1, a2, v44);
    }

    else
    {
    }
  }
}

void sub_1004D5AF4(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t, _BYTE *, __n128), uint64_t a4, _BYTE *a5)
{
  swift_beginAccess();
  (a3)(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  *a2 = *a5;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.with(priority:)(__C::UILayoutPriority priority)
{
  [v1 setPriority:*&priority.rawValue];

  return v3;
}

void UIView.constrain(to:padding:)()
{
  v0 = sub_1004993F8(&off_1006ACD30);
  sub_1004D68D8(v0, sub_1004D73A4);

  v1 = objc_opt_self();
  sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
  isa = sub_100572D08().super.isa;

  [v1 activateConstraints:isa];
}

id sub_1004D5CF4(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  sub_1004D74D4(a3, v19);
  v9 = v20;
  if (v20)
  {
    sub_10000C8CC(v19, v20);
    v10 = *(v9 - 8);
    v11 = __chkstk_darwin();
    v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = a2;
    v15 = sub_100574478();
    (*(v10 + 8))(v13, v9);
    sub_100010474(v19);
  }

  else
  {
    v16 = a2;
    v15 = 0;
  }

  v17 = [objc_opt_self() constraintWithItem:a2 attribute:a1 relatedBy:0 toItem:v15 attribute:a1 multiplier:1.0 constant:a4 * a5];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t UIView.constrainToBounds(of:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = [a1 layoutMarginsGuide];
  }

  else
  {
    v2 = a1;
  }

  v3 = v2;
  v8[3] = sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
  v8[0] = v3;
  sub_1004993F8(&off_1006ACD30);
  __chkstk_darwin();
  sub_1004D68D8(v4, sub_1004D768C);

  v5 = objc_opt_self();
  sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
  isa = sub_100572D08().super.isa;

  [v5 activateConstraints:isa];

  return sub_10001036C(v8, &qword_1006F9310, &qword_1005A59A0);
}

uint64_t UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(void *a1, char a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:a1];
  if (a2)
  {
    v5 = [v2 layoutMarginsGuide];
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;
  v11[3] = sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
  v11[0] = v6;
  sub_1004993F8(&off_1006ACD30);
  __chkstk_darwin();
  sub_1004D68D8(v7, sub_1004D768C);

  v8 = objc_opt_self();
  sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
  isa = sub_100572D08().super.isa;

  [v8 activateConstraints:isa];

  return sub_10001036C(v11, &qword_1006F9310, &qword_1005A59A0);
}

void sub_1004D6188(uint64_t a1, SEL *a2)
{
  v3 = objc_opt_self();
  sub_1000D3B98(0, &qword_1006F92E0, NSLayoutConstraint_ptr);
  isa = sub_100572D08().super.isa;
  [v3 *a2];
}

uint64_t NSTextAlignment.init(languageCode:)(uint64_t a1)
{
  v1 = sub_10056CC18();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CBD8();
  v5 = sub_10056CBF8();
  (*(v2 + 8))(v4, v1);
  v6 = 4;
  if (v5 == 2)
  {
    v6 = 2;
  }

  if (v5 == 1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

Swift::Void __swiftcall NSTextAlignment.flip()()
{
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  *v0 = v1;
}

uint64_t NSTextAlignment.ctTextAlignment.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x403010200uLL >> (8 * a1));
  }
}

uint64_t UIViewPropertyAnimator.UpdateReason.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

void *sub_1004D6378@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

void UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10007885C;
  v5[3] = &unk_1006AEC08;
  v4 = _Block_copy(v5);

  [v3 addAnimations:v4];
  _Block_release(v4);
}

UIViewPropertyAnimator __swiftcall UIViewPropertyAnimator.init(springTimingParameters:)(UISpringTimingParameters springTimingParameters)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  [(objc_class *)springTimingParameters.super.isa settlingDuration];
  v3 = [v2 initWithDuration:springTimingParameters.super.isa timingParameters:?];

  return v3;
}

id UISpringTimingParameters.init(dampingRatio:response:)(double a1, double a2)
{
  v2 = 6.28318531 / a2 * (6.28318531 / a2);
  v3 = sqrt(v2);
  v4 = (v3 + v3) * a1;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initWithMass:1.0 stiffness:v2 damping:v4 initialVelocity:{0.0, 0.0}];
}

id UIView.setAnchorPoint(_:preserveFrame:)(char a1, double a2, double a3)
{
  if (a1)
  {
    v6 = UIView.untransformedFrame.getter();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 setAnchorPoint:{a2, a3}];

    return UIView.untransformedFrame.setter(v6, v8, v10, v12);
  }

  else
  {

    return [v3 setAnchorPoint:{a2, a3}];
  }
}

double sub_1004D65D8()
{
  static UIView.Shadow.identity = [objc_opt_self() blackColor];
  *algn_1006FEC60 = xmmword_1005A7600;
  result = 0.0;
  *&algn_1006FEC60[16] = xmmword_1005A7610;
  return result;
}

uint64_t *UIView.Shadow.identity.unsafeMutableAddressor()
{
  if (qword_1006F7F50 != -1)
  {
    swift_once();
  }

  return &static UIView.Shadow.identity;
}

id static UIView.Shadow.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006F7F50 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static UIView.Shadow.identity;
  *a1 = static UIView.Shadow.identity;
  *(a1 + 8) = *algn_1006FEC60;
  *(a1 + 24) = *&algn_1006FEC60[16];

  return v2;
}

uint64_t sub_1004D6714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F92C0, &unk_1005A6828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D6784()
{

  return swift_deallocObject();
}

uint64_t sub_1004D67E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004D6804(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1004D6858(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a2)
  {
    if ((a5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (*&a1 == *&a4)
  {
    sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
    return sub_100573A58() & 1;
  }

  return 0;
}

void *sub_1004D68D8(uint64_t a1, uint64_t (*a2)(void, double))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_100573FF8();
    v5 = a1 + 64;
    result = sub_100573DB8();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v18 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v7;
      a2(*(*(a1 + 48) + 8 * v6), *(*(a1 + 56) + 8 * v6));
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      result = sub_100573FD8();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v11 = *(v5 + 8 * v10);
      if ((v11 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v6 & 0x3F));
      if (v12)
      {
        v9 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (a1 + 72 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_100279DB4(v6, v8, 0);
            v9 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_100279DB4(v6, v8, 0);
      }

LABEL_4:
      v7 = v20 + 1;
      v6 = v9;
      if (v20 + 1 == v18)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1004D6AFC(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor:v4];

  v5 = [v1 layer];
  [v5 setShadowOffset:{*(a1 + 24), *(a1 + 32)}];

  v6 = [v1 layer];
  [v6 setShadowRadius:*(a1 + 16)];

  v8 = [v1 layer];
  v7 = *(a1 + 8);
  *&v7 = v7;
  [v8 setShadowOpacity:v7];
}

uint64_t sub_1004D6C88(void *a1)
{
  v2 = [a1 layer];
  [v2 borderWidth];
  v4 = v3;

  if (v4 <= 0.0)
  {
    return 0;
  }

  v5 = [a1 layer];
  v6 = [v5 borderColor];

  if (!v6)
  {
    return 0;
  }

  v7 = [a1 layer];
  [v7 borderWidth];
  v9 = v8;

  [objc_allocWithZone(UIColor) initWithCGColor:v6];
  return v9;
}

void sub_1004D6D98(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v7 = [v3 layer];
    v8 = v7;
    if (a2)
    {
      [v7 setBorderWidth:*&a1];
    }

    else
    {
      v9 = [v3 traitCollection];
      [v9 displayScale];
      v11 = v10;

      [v8 setBorderWidth:{*&a1 / fmax(v11, 1.0)}];
    }
  }

  else
  {
    v8 = [v3 layer];
    [v8 setBorderWidth:0.0];
  }

  v12 = [v3 layer];
  if (a3)
  {
    v13 = [a3 CGColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v12 setBorderColor:?];
}

double sub_1004D6EFC(void *a1, void (*a2)(void *, char *), uint64_t a3, char *a4)
{
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  a2(a1, a4);
  v15 = *a4;
  if ((v15 & 1) == 0)
  {
    v7 = [a1 subviews];
    sub_1000D3B98(0, &qword_1006F92E8, UIView_ptr);
    v8 = sub_100572D28();

    if (v8 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_100573F58();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 == 1)
        {

          goto LABEL_14;
        }

        sub_1004D6EFC(v11, sub_1004D7550, v14, &v15);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_14:
  }

  return result;
}

uint64_t sub_1004D707C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004D70BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004D7114(void *a1, uint64_t a2, void (*a3)(void, void, __n128), uint64_t a4, _BYTE *a5)
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  swift_beginAccess();
  swift_beginAccess();
  (a3)(a1, a5);
  swift_endAccess();
  swift_beginAccess();
  v11 = *a5;
  *(a2 + 16) = *a5;
  swift_endAccess();
  *(v9 + 16) = v11;
  v12 = [a1 childViewControllers];
  sub_1000D3B98(0, &qword_1006F92C8, UIViewController_ptr);
  v13 = sub_100572D28();

  v23 = a1;
  if (v13 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100574178())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_100573F58();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*v10 == 1)
      {

        goto LABEL_14;
      }

      sub_1004D7114(v16, v9, sub_1004D7544, v24, (a2 + 16));

      ++v15;
      if (v18 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:

  swift_beginAccess();
  if (*v10 == 1 || (v19 = [v23 presentedViewController]) == 0)
  {
  }

  else
  {
    v20 = (a2 + 16);
    v21 = v19;
    sub_1004D7114(v19, v9, sub_1004D7544, v24, v20);
  }

  return result;
}

unint64_t sub_1004D73B4()
{
  result = qword_1006F9318;
  if (!qword_1006F9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9318);
  }

  return result;
}

unint64_t sub_1004D740C()
{
  result = qword_1006F9320;
  if (!qword_1006F9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9320);
  }

  return result;
}

__n128 sub_1004D7460(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1004D7484(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004D74D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F9310, &qword_1005A59A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004D7550(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 32);
  result = (*(v2 + 16))(a1, v4);
  *a2 = *v4;
  return result;
}

uint64_t sub_1004D761C(uint64_t a1, uint64_t a2)
{
  v4 = _s9_ObserverC18HandlerAssociationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URL.init(string:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&qword_1006F8A48, &qword_1005A5CA8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_10056C868();

  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_10001036C(v6, &qword_1006F8A48, &qword_1005A5CA8);
LABEL_4:
    v9 = sub_10056C8A8();
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }

  (*(v8 + 32))(a3, v6, v7);
  return (*(v8 + 56))(a3, 0, 1, v7);
}

void URL.parametrize(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009DCC(&qword_1006F8A48, &qword_1005A5CA8);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v64 = sub_10056C3A8();
  v62 = *(v64 - 8);
  __chkstk_darwin();
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v46 - v8;
  __chkstk_darwin();
  v58 = &v46 - v9;
  sub_100009DCC(&qword_1006F9390, &qword_1005A6A78);
  __chkstk_darwin();
  v11 = &v46 - v10;
  v12 = sub_10056C468();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10056C8A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a2, v2, v16);
  if (*(a1 + 16))
  {
    sub_10056C3D8();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10001036C(v11, &qword_1006F9390, &qword_1005A6A78);
    }

    else
    {
      v49 = v17;
      v51 = v16;
      v52 = v6;
      v48 = v13;
      v18 = *(v13 + 32);
      v50 = v12;
      v18(v15, v11, v12);
      v47 = v15;
      v19 = sub_10056C3B8();
      v20 = _swiftEmptyArrayStorage;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = _swiftEmptyArrayStorage;
      }

      v22 = *(a1 + 16);
      if (v22)
      {
        v20 = sub_1004D8394(*(a1 + 16), 0);
        v23 = sub_1004D8440(v65, v20 + 4, v22, a1);
        v24 = v65[0];
        v61 = v65[4];

        sub_10025A994(v24);
        if (v23 != v22)
        {
          __break(1u);
        }
      }

      v65[0] = v20;
      sub_1004D9A34(v65);
      v25 = v65[0];
      v57 = *(v65[0] + 16);
      if (v57)
      {
        v46 = a2;
        v26 = 0;
        v55 = v65[0];
        v56 = v65[0] + 32;
        v61 = (v62 + 16);
        v27 = (v62 + 8);
        v53 = (v62 + 40);
        v54 = v62 + 32;
        while (1)
        {
          if (v26 >= *(v25 + 16))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v60 = v26;
          v30 = (v56 + 32 * v26);
          v31 = *v30;
          v32 = v30[1];

          sub_10056C378();

          v33 = *(v21 + 2);
          if (v33)
          {
            break;
          }

LABEL_22:

          v39 = v58;
          (*v61)(v59, v58, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1004A8704(0, *(v21 + 2) + 1, 1, v21);
          }

          v41 = *(v21 + 2);
          v40 = *(v21 + 3);
          if (v41 >= v40 >> 1)
          {
            v21 = sub_1004A8704((v40 > 1), v41 + 1, 1, v21);
          }

          v28 = v62;
          v29 = v64;
          (*(v62 + 8))(v39, v64);
          *(v21 + 2) = v41 + 1;
          (*(v28 + 32))(&v21[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v41], v59, v29);
LABEL_13:
          v26 = v60 + 1;
          v25 = v55;
          if (v60 + 1 == v57)
          {

            a2 = v46;
            goto LABEL_33;
          }
        }

        v34 = 0;
        while (1)
        {
          if (v34 >= *(v21 + 2))
          {
            __break(1u);
            goto LABEL_38;
          }

          v35 = (*(v62 + 80) + 32) & ~*(v62 + 80);
          v36 = *(v62 + 72) * v34;
          (*(v62 + 16))(v63, &v21[v35 + v36], v64);
          if (sub_10056C388() == v31 && v37 == v32)
          {
            break;
          }

          v38 = sub_100574498();

          (*v27)(v63, v64);
          if (v38)
          {
            goto LABEL_27;
          }

          if (v33 == ++v34)
          {
            goto LABEL_22;
          }
        }

        (*v27)(v63, v64);
LABEL_27:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1004D8418(v21);
        }

        if (v34 < *(v21 + 2))
        {
          (*v53)(&v21[v35 + v36], v58, v64);
          goto LABEL_13;
        }

LABEL_39:
        __break(1u);

        __break(1u);
      }

      else
      {

LABEL_33:
        v42 = v47;
        sub_10056C3C8();
        v43 = v52;
        sub_10056C3E8();
        (*(v48 + 8))(v42, v50);
        v44 = v49;
        v45 = v51;
        if ((*(v49 + 48))(v43, 1, v51) == 1)
        {
          sub_10001036C(v43, &qword_1006F8A48, &qword_1005A5CA8);
        }

        else
        {
          (*(v44 + 8))(a2, v45);
          (*(v44 + 32))(a2, v43, v45);
        }
      }
    }
  }
}

void *URLComponents.queryItemsDictionary.getter()
{
  v0 = sub_10056C3A8();
  v37 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056C3B8();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v36 = *(v3 + 16);
  if (!v36)
  {

    return 0;
  }

  v5 = sub_1004994D8(_swiftEmptyArrayStorage);
  v6 = 0;
  v35 = v4 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v33 = (v37 + 8);
  v34 = v37 + 16;
  v31 = v4;
  v32 = v2;
  while (v6 < *(v4 + 16))
  {
    (*(v37 + 16))(v2, v35 + *(v37 + 72) * v6, v0);
    v7 = sub_10056C398();
    if (v8)
    {
      v9 = v8;
      v38 = v7;
      v10 = v0;
      sub_10056C388();
      v11 = sub_100572998();
      v13 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v5;
      v16 = sub_1004B0CCC(v11, v13);
      v17 = v5[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_25;
      }

      v20 = v15;
      if (v5[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v0 = v10;
          if ((v15 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          sub_1004D95C4();
          v0 = v10;
          if ((v20 & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1004D8AC8(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_1004B0CCC(v11, v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_27;
        }

        v16 = v21;
        v0 = v10;
        if ((v20 & 1) == 0)
        {
LABEL_17:
          v5 = v39;
          v39[(v16 >> 6) + 8] |= 1 << v16;
          v24 = (v5[6] + 16 * v16);
          *v24 = v11;
          v24[1] = v13;
          v25 = (v5[7] + 16 * v16);
          *v25 = v38;
          v25[1] = v9;
          v2 = v32;
          (*v33)(v32, v0);
          v26 = v5[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_26;
          }

          v5[2] = v28;
          goto LABEL_19;
        }
      }

      v5 = v39;
      v23 = (v39[7] + 16 * v16);
      *v23 = v38;
      v23[1] = v9;

      v2 = v32;
      (*v33)(v32, v0);
LABEL_19:
      v4 = v31;
      goto LABEL_5;
    }

    (*v33)(v2, v0);
LABEL_5:
    if (v36 == ++v6)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_100574578();
  __break(1u);
  return result;
}

void *sub_1004D8320(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006F93A8, &qword_1005A6B28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1004D8394(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006F93A0, &qword_1005A6B20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1004D8440(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_1004D85C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F80C0, &qword_1005A5210);
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_100574668();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1004D8828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F80C8, &qword_1005A5218);
  v35 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      v25 = sub_1005746C8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1004D8AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F80B0, &qword_1005A5200);
  v38 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      v28 = sub_1005746C8();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1004D8D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F80A8, &qword_1005A51F8);
  v37 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v38 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {

        v26 = v24;
      }

      sub_100574678();
      if (v23)
      {
        sub_100574688(1uLL);
        sub_1005729F8();
      }

      else
      {
        sub_100574688(0);
      }

      v27 = sub_1005746C8();
      v28 = -1 << *(v7 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v38;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
}

void sub_1004D9068(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006F80E8, &qword_1005A5238);
  v35 = v4;
  v6 = sub_1005741A8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_100574678();
      sub_1005729F8();
      v25 = sub_1005746C8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1004D9310()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F80C0, &qword_1005A5210);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1004D945C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F80C8, &qword_1005A5218);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1004D95C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F80B0, &qword_1005A5200);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1004D973C()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F80A8, &qword_1005A51F8);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 24 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 24 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;

        v23 = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1004D98C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006F80E8, &qword_1005A5238);
  v2 = *v0;
  v3 = sub_100574198();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_1004D9A34(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004DA650(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1004D9AA0(v4);
  *a1 = v2;
}

void sub_1004D9AA0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_100574388(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100009DCC(&qword_1006F9398, &qword_1005A6B18);
        v5 = sub_100572D98();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1004D9C78(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1004D9BA8(0, v2, 1, a1);
  }
}

uint64_t sub_1004D9BA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *v13;
      v14 = *v13 == v10 && *(v13 + 8) == v11;
      if (v14 || (result = sub_100574498(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 32);
      v11 = *(v13 + 40);
      v15 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      *(v13 + 32) = *v13;
      *(v13 + 48) = v17;
      *v13 = v10;
      *(v13 + 8) = v11;
      *(v13 + 16) = v15;
      *(v13 + 24) = v16;
      v13 -= 32;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1004D9C78(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v7 = sub_1004DA510(v7);
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1004DA25C((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_141;
    }

LABEL_114:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      v10 = (*a3 + 32 * v8);
      if (*v10 == *v9 && v10[1] == v9[1])
      {
        v12 = 0;
      }

      else
      {
        v12 = sub_100574498();
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (*(v13 - 1) == v13[3] && *v13 == v15)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else if ((v12 ^ sub_100574498()))
          {
            goto LABEL_23;
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1004A816C(0, *(v7 + 2) + 1, 1, v7);
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v7 = sub_1004A816C((v44 > 1), v45 + 1, 1, v7);
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
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

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_1004DA25C((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1004DA510(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_1004DA484(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *v38 == v35 && *(v38 + 8) == v36;
    if (v39 || (sub_100574498() & 1) == 0)
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
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
}

uint64_t sub_1004DA25C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v17 && (sub_100574498() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = *(v6 - 4) == v20 && *(v6 - 3) == v21;
      if (!v22 && (sub_100574498() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_1004DA484(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004DA510(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1004DA524(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F89F8, &qword_1005A5C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

__n128 sub_1004DA670(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = a4;
  v40 = a5;
  v38 = a2;
  v10 = *(a6 - 8);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s20KeyValueRegistrationC10IdentifierVMa(0) - 8;
  v35 = *v13;
  v14 = *(v35 + 64);
  __chkstk_darwin();
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v35 - v15;
  v16 = __chkstk_darwin();
  v18 = &v35 - v17;
  (*(v10 + 16))(v12, a1, a6, v16);
  v19 = sub_100572B78();
  v21 = v20;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = &v18[*(v13 + 28)];
  *v22 = v38;
  v22[1] = a3;
  v23 = &v18[*(v13 + 32)];
  *v23 = v19;
  v23[1] = v21;
  v24 = qword_1006F7F58;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_1006F93B0;
  v26 = *(qword_1006F93B0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v26 + 16));
  v27 = v41;
  sub_1004DD2EC(v25, v18, v39, v40);
  os_unfair_lock_unlock(*(v26 + 16));
  if (v27)
  {
    return sub_1004E0210(v18, _s20KeyValueRegistrationC10IdentifierVMa);
  }

  v29 = v37;
  sub_1004E01A8(v18, v37, _s20KeyValueRegistrationC10IdentifierVMa);
  v30 = v36;
  sub_1004E0314(v18, v36, _s20KeyValueRegistrationC10IdentifierVMa);
  v31 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v32 = swift_allocObject();
  sub_1004E0314(v30, v32 + v31, _s20KeyValueRegistrationC10IdentifierVMa);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v33 = swift_allocObject();
  sub_1004E0314(v29, v33 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);
  result = v33;
  v34 = (v33 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v34 = sub_10049C558;
  v34[1] = v32;
  return result;
}

uint64_t sub_1004DA9E4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1004DAAD0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      v11 = (*(a3 + 48) + 24 * v10);
      v12 = v11[1];
      v13 = v11[2];
      v14 = *(*(a3 + 56) + 8 * v10);
      v20[0] = *v11;
      v20[1] = v12;
      v20[2] = v13;
      v20[3] = v14;

      v15 = v13;

      v16 = v21;
      v17 = (a1)(v20);
      if (v16)
      {
        break;
      }

      v21 = 0;
      if (v17)
      {
        goto LABEL_12;
      }

      v6 &= v6 - 1;

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
LABEL_12:

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t UserDefault.init(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a2;
  v11 = type metadata accessor for UserDefault(0, a4, a5, a6);
  (*(*(a4 - 8) + 32))(&a7[*(v11 + 44)], a3, a4);
  v12 = *(v11 + 48);
  v13 = sub_100573C28();
  v14 = *(*(v13 - 8) + 32);

  return v14(&a7[v12], a1, v13);
}

uint64_t UserDefault.init<A>(wrappedValue:defaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a9@<X8>)
{
  v24 = a2;
  v25 = a7;
  v23 = a9;
  __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100573C28();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v22 - v19;
  (*(v17 + 16))(&v22 - v19, a1, v16, v18);
  sub_100572CB8();
  (*(*(a6 - 8) + 8))(a3, a6);
  (*(v17 + 8))(a1, v16);
  return UserDefault.init(wrappedValue:defaults:key:)(v20, v24, v15, a4, a5, v25, v23);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = sub_100573C28();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - v8;
  NSUserDefaults.subscript.getter(v14);
  sub_100009DCC(&qword_1006F9310, &qword_1005A59A0);
  v10 = swift_dynamicCast();
  v11 = *(*(v5 - 8) + 56);
  if (v10)
  {
    v12 = *(v5 - 8);
    v11(v9, 0, 1, v5);
    (*(v12 + 32))(a2, v9, v5);
    return (v11)(a2, 0, 1, v5);
  }

  else
  {
    v11(v9, 1, 1, v5);
    return (*(v7 + 16))(a2, v2 + *(a1 + 48), v6);
  }
}

double NSUserDefaults.subscript.getter@<D0>(_OWORD *a4@<X8>)
{
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_100572B78();
  v9 = sub_100572898();

  v10 = [v4 objectForKey:v9];

  if (v10)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1004DEC04(a1, a2);
  v3 = sub_100573C28();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a3 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D74D4(v12, &v17);
  if (v18)
  {
    sub_1000F51DC(&v17, &v19);
    sub_10000C8CC(&v19, v20);
    v13 = sub_100574478();
    (*(v9 + 16))(v11, a2, a3);
    sub_100572B78();
    v14 = sub_100572898();

    [v5 setObject:v13 forKey:v14];
    swift_unknownObjectRelease();

    (*(v9 + 8))(a2, a3);
    sub_1004A14E0(a1);
    return sub_100010474(&v19);
  }

  else
  {
    sub_1004A14E0(&v17);
    (*(v9 + 16))(v11, a2, a3);
    sub_100572B78();
    v16 = sub_100572898();

    [v5 removeObjectForKey:v16];

    (*(v9 + 8))(a2, a3);
    return sub_1004A14E0(a1);
  }
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = sub_100573C28();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[5] = v10;
  UserDefault.wrappedValue.getter(a2, v10);
  return sub_1004DB5D0;
}

void sub_1004DB5D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1004DEC04(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1004DEC04((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.defaultValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_100573C28();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t static NSUserDefaults.Suite.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_100574498();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

void NSUserDefaults.Suite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100574688(1uLL);

    sub_1005729F8();
  }

  else
  {
    sub_100574688(0);
  }
}

Swift::Int NSUserDefaults.Suite.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_100574678();
  if (a2)
  {
    sub_100574688(1uLL);
    sub_1005729F8();
  }

  else
  {
    sub_100574688(0);
  }

  return sub_1005746C8();
}

Swift::Int sub_1004DB850()
{
  v1 = *(v0 + 8);
  sub_100574678();
  if (v1)
  {
    sub_100574688(1uLL);
    sub_1005729F8();
  }

  else
  {
    sub_100574688(0);
  }

  return sub_1005746C8();
}

void sub_1004DB8C0(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_100574688(1uLL);

    sub_1005729F8();
  }

  else
  {
    sub_100574688(0);
  }
}

Swift::Int sub_1004DB938(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_100574678();
  if (v2)
  {
    sub_100574688(1uLL);
    sub_1005729F8();
  }

  else
  {
    sub_100574688(0);
  }

  return sub_1005746C8();
}

uint64_t sub_1004DB9A4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_100574498();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_100572898();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a4;
  v8[10] = v4;
  v8[8] = a3;
  v10 = *(a3 - 8);
  v11 = v10;
  v8[11] = v10;
  v12 = *(v10 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[12] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[12] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v9[13] = v13;
  (*(v11 + 16))();
  NSUserDefaults.subscript.getter(v9);
  return sub_1004DBBE0;
}

void sub_1004DBBE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[12];
  v3 = (*a1)[13];
  if (a2)
  {
    v5 = v2[11];
    v7 = v2[8];
    v6 = v2[9];
    sub_1004D74D4(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v7);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v7, v6);
    sub_1004A14E0(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8], v2[9]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t NSUserDefaults.subscript.getter@<X0>(_OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100572CB8();
  v9 = NSUserDefaults.subscript.getter(a4);
  return (*(v6 + 8))(v8, AssociatedTypeWitness, v9);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DEE30(a1, a2, a3, a4, a5);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x70uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[10] = a5;
  v10[11] = v5;
  v10[8] = a3;
  v10[9] = a4;
  v12 = *(a3 - 8);
  v13 = v12;
  v10[12] = v12;
  if (&_swift_coroFrameAlloc)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
  }

  v11[13] = v14;
  (*(v13 + 16))();
  NSUserDefaults.subscript.getter(v11);
  return sub_1004DBF68;
}

void sub_1004DBF68(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[12];
    v3 = v2[13];
    v5 = v2[10];
    v7 = v2[8];
    v6 = v2[9];
    sub_1004D74D4(*a1, (v2 + 4));
    sub_1004DEE30((v2 + 4), v3, v7, v6, v5);
    (*(v4 + 8))(v3, v7);
    sub_1004A14E0(v2);
  }

  else
  {
    v8 = v2[12];
    v3 = v2[13];
    v9 = v2[8];
    sub_1004DEE30(*a1, v3, v9, v2[9], v2[10]);
    (*(v8 + 8))(v3, v9);
  }

  free(v3);

  free(v2);
}

uint64_t NSUserDefaults.Migrator.init(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  v9 = type metadata accessor for NSUserDefaults.Migrator(0, a3, a4, a5);
  v10 = *(*(a3 - 8) + 32);
  v11 = a6 + *(v9 + 44);

  return v10(v11, a2, a3);
}

uint64_t NSUserDefaults.Migrator.init<A>(userDefaults:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100572CB8();
  (*(*(a5 - 8) + 8))(a2, a5);
  *a7 = a1;
  v17 = type metadata accessor for NSUserDefaults.Migrator(0, a3, a4, a6);
  return (*(v14 + 32))(&a7[*(v17 + 44)], v16, a3);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v60 = a2;
  v9 = v8;
  v55 = a7;
  v53 = a4;
  v59 = a3;
  v49 = a1;
  v56 = a8;
  v54 = a6;
  v48 = *(a6 - 8);
  __chkstk_darwin();
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v58 = *(v13 - 8);
  __chkstk_darwin();
  v46 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v51 = sub_100573C28();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v46 - v17;
  v18 = *(a5 + 24);
  v67 = sub_100573C28();
  v63 = *(v67 - 8);
  __chkstk_darwin();
  v20 = &v46 - v19;
  v21 = *v9;
  v22 = *(a5 + 44);
  v23 = *(a5 + 32);
  NSUserDefaults.subscript.getter(v66);
  sub_1004D74D4(v66, &v64);
  sub_100009DCC(&qword_1006F9310, &qword_1005A59A0);
  v24 = swift_dynamicCast();
  v25 = *(v18 - 8);
  (*(v25 + 56))(v20, v24 ^ 1u, 1, v18);
  sub_1004D74D4(v66, &v64);
  v26 = *(&v65 + 1);
  sub_1004A14E0(&v64);
  if (v26 && (*(v25 + 48))(v20, 1, v18) == 1)
  {
    _s8MigratorV5ErrorOMa(0, v13, v18, v23);
    swift_getWitnessTable();
    swift_allocError();
    (*(v58 + 16))(v27, v9 + v22, v13);
    swift_willThrow();
LABEL_5:
    sub_1004A14E0(v66);
    return (*(v63 + 8))(v20, v67);
  }

  v28 = v61;
  v29 = v62;
  v60(v20);
  if (v28)
  {
    goto LABEL_5;
  }

  v30 = v46;
  (*(v58 + 16))(v46, v9 + v22, v13);
  v64 = 0u;
  v65 = 0u;
  NSUserDefaults.subscript.setter(&v64, v30, v13, v23);
  v31 = v53;
  if (v53)
  {
    v61 = v53;
  }

  else
  {
    v61 = v21;
  }

  v32 = v52;
  v33 = v51;
  v34 = v50;
  v35 = v54;
  (*(v48 + 16))(v57, v49, v54);
  v36 = v47;
  (*(v34 + 16))(v47, v29, v33);
  v37 = v34;
  v38 = *(v32 - 8);
  if ((*(v38 + 48))(v36, 1, v32) == 1)
  {
    v39 = *(v37 + 8);
    v40 = v31;
    v39(v36, v33);
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    *(&v65 + 1) = v32;
    v41 = sub_10002AB7C(&v64);
    (*(v38 + 32))(v41, v36, v32);
    v42 = v31;
  }

  v43 = v33;
  v44 = v61;
  NSUserDefaults.subscript.setter(&v64, v57, v35, v55);

  sub_1004A14E0(v66);
  (*(v37 + 32))(v56, v62, v43);
  return (*(v63 + 8))(v20, v67);
}

uint64_t NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v21 = a6;
  v19 = a3;
  v20 = a4;
  v18 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v17 - v14;
  sub_100572CB8();
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(v15, a1, a2, v19, v20, AssociatedTypeWitness, v18, a8);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

double NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  NSUserDefaults.Migrator.migrateValue<A, B>(to:valueTransformer:destination:)(a1, sub_10049A6E8, v13, a2, a3, a4, a5, a6);

  return result;
}

uint64_t NSUserDefaults.Migrator.migrateValue<A>(to:destination:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v15 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v12 = &v15 - v11;
  sub_100572CB8();
  v13 = NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(v12, a1, a2, AssociatedTypeWitness, v15, a6);
  return (*(v10 + 8))(v12, AssociatedTypeWitness, v13);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a5;
  v24 = a2;
  v9 = *(a3 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSUserDefaults.Migrator(0, v12, v13, v14);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v23 - v18;
  (*(v9 + 16))(v11, a1, a3, v17);
  *v19 = v5;
  (*(v9 + 32))(&v19[*(v15 + 44)], v11, a3);
  v20 = v5;
  v21 = NSUserDefaults.Migrator.migrateValue<A>(to:destination:)(a1, v24, v15, a3, a4, v23);
  return (*(v16 + 8))(v19, v15, v21);
}

uint64_t NSUserDefaults.migrateValue<A, B>(for:to:)@<X0>(void *a1@<X1>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v12 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100572CB8();
  NSUserDefaults.migrateValue<A, B>(for:to:)(v10, a1, AssociatedTypeWitness, v12, a5);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t NSUserDefaults.KeyValueRegistration.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_1004E0210(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return v0;
}

uint64_t NSUserDefaults.KeyValueRegistration.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);

  v1(v2);

  sub_1004E0210(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier, _s20KeyValueRegistrationC10IdentifierVMa);

  return swift_deallocClassInstance();
}

void sub_1004DD01C(uint64_t a1)
{
  if (qword_1006F7F58 != -1)
  {
    swift_once();
  }

  v2 = qword_1006F93B0;
  v3 = *(qword_1006F93B0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1004DD924(v2, a1);
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t static NSUserDefaults.observe<A>(_:in:valueChanged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a5;
  v18 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v17 - v13;
  sub_100572CB8();
  v15 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v14, a2, a3, a4, v17, AssociatedTypeWitness, v18);
  (*(v12 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

id sub_1004DD21C()
{
  result = [objc_allocWithZone(_s9_ObserverCMa()) init];
  qword_1006F93B0 = result;
  return result;
}

double sub_1004DD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = _s9_ObserverC18HandlerAssociationVMa(0);
  v55 = *(v52 - 8);
  __chkstk_darwin();
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v58 = a2;

  sub_1004DAAD0(sub_1004E02A0, v57, v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v15)
  {
    v51 = v4;
  }

  else
  {
    sub_1000D3B98(0, qword_1006F9460, NSUserDefaults_ptr);
    v16 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
    v11 = *v16;
    v13 = v16[1];

    v17 = NSUserDefaults.init(suite:)(v11, v13);
    if (!v17)
    {
      sub_1004E02C0();
      swift_allocError();
      *v48 = v11;
      v48[1] = v13;
      swift_willThrow();

      return result;
    }

    v15 = v17;
    v51 = v4;
  }

  v18 = *(a1 + v8);
  v19 = *(v18 + 16);

  v20 = v15;
  if (v19)
  {

    v21 = sub_1004B0E68(v11, v13, v20);
    if (v22)
    {
      v49 = *(*(v18 + 56) + 8 * v21);

      goto LABEL_10;
    }
  }

  v49 = sub_100498D4C(_swiftEmptyArrayStorage);
LABEL_10:
  v23 = *(a1 + v8);
  v24 = *(v23 + 16);
  v50 = v11;
  if (!v24)
  {
LABEL_17:
    v34 = _swiftEmptyArrayStorage;
LABEL_18:
    v35 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v30 = *v35;
    v31 = v35[1];
    v36 = sub_100572898();
    [v20 addObserver:a1 forKeyPath:v36 options:0 context:0];

    goto LABEL_19;
  }

  v25 = sub_1004B0E68(v11, v13, v20);
  if ((v26 & 1) == 0 || (v27 = *(*(v23 + 56) + 8 * v25), , , v28 = _s20KeyValueRegistrationC10IdentifierVMa(0), !*(v27 + 16)) || (v29 = (a2 + *(v28 + 24)), v30 = *v29, v31 = v29[1], v32 = sub_1004B0CCC(*v29, v31), (v33 & 1) == 0))
  {

    goto LABEL_17;
  }

  v34 = *(*(v27 + 56) + 8 * v32);

  if (!v34[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v37 = sub_10056CAE8();
  v38 = v56;
  (*(*(v37 - 8) + 16))(v56, a2, v37);
  v39 = (v38 + *(v52 + 20));
  v40 = v54;
  *v39 = v53;
  v39[1] = v40;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1004A872C(0, v34[2] + 1, 1, v34);
  }

  v42 = v34[2];
  v41 = v34[3];
  if (v42 >= v41 >> 1)
  {
    v34 = sub_1004A872C((v41 > 1), v42 + 1, 1, v34);
  }

  v34[2] = v42 + 1;
  sub_1004E0314(v56, v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, _s9_ObserverC18HandlerAssociationVMa);

  v43 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v43;
  sub_1004C4D84(v34, v30, v31, isUniquelyReferenced_nonNull_native);

  v45 = v59;
  swift_beginAccess();
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_1004C4BDC(v45, v50, v13, v20, v46);

  *(a1 + v8) = v60;
  swift_endAccess();

  return result;
}

uint64_t sub_1004DD7F0()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_10056CAE8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

void sub_1004DD924(uint64_t a1, uint64_t a2)
{
  _s9_ObserverC18HandlerAssociationVMa(0);
  __chkstk_darwin();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v7 = *(a1 + v6);
  v41 = a2;

  sub_1004DAAD0(sub_1004E038C, v40, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (v13)
  {
    v39 = v9;
    v16 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v15 + 16);

    if (v19 && (v38 = v17, v20 = sub_1004B0CCC(v17, v18), (v21 & 1) != 0))
    {
      v37 = v18;
      v22 = *(*(v15 + 56) + 8 * v20);

      v45 = v22;
      __chkstk_darwin();
      *(&v34 - 2) = a2;

      v36 = sub_1004DA9E4(sub_1004E0270, (&v34 - 4), v22);
      v24 = v23;

      if (v24)
      {
      }

      else
      {

        v25 = v13;
        sub_1004D0DC0(v36, v5);
        sub_1004E0210(v5, _s9_ObserverC18HandlerAssociationVMa);
        v36 = v45;
        v26 = v37;
        if (!*(v45 + 16))
        {
          v27 = v25;
          v28 = sub_100572898();
          [v27 removeObserver:a1 forKeyPath:v28];
        }

        v29 = v25;
        v35 = sub_1004DE438(v44);
        v31 = sub_1004BEDE0(v43, v39, v11, v29);
        if (*v30)
        {
          v32 = v30;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *v32;
          *v32 = 0x8000000000000000;
          sub_1004C4D84(v36, v38, v26, isUniquelyReferenced_nonNull_native);

          *v32 = v42;
        }

        else
        {
        }

        (v31)(v43, 0);

        (v35)(v44, 0);

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }
}

BOOL sub_1004DDCB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
  v5 = v4[1];
  if (v3)
  {
    if (v5)
    {
      if (v2 != *v4 || v3 != v5)
      {
        return sub_100574498() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v5;
}

double sub_1004DDD3C(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v10 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
  __chkstk_darwin();
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  if (!a2)
  {
LABEL_12:
    sub_1004D74D4(a3, &v40);
    v26 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      sub_10000C8CC(&v40, *(&v41 + 1));
      v27 = *(v26 - 8);
      v28 = __chkstk_darwin();
      v30 = v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v30, v28);
      v31 = sub_100574478();
      (*(v27 + 8))(v30, v26);
      sub_100010474(&v40);
      if (a4)
      {
LABEL_14:
        type metadata accessor for NSKeyValueChangeKey(0);
        sub_1004E0150();
        v32.super.isa = sub_100572688().super.isa;
LABEL_17:
        v33 = _s9_ObserverCMa();
        v39.receiver = v5;
        v39.super_class = v33;
        objc_msgSendSuper2(&v39, "observeValueForKeyPath:ofObject:change:context:", a2, v31, v32.super.isa, a5);

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v31 = 0;
      if (a4)
      {
        goto LABEL_14;
      }
    }

    v32.super.isa = 0;
    goto LABEL_17;
  }

  v14 = v11;
  sub_1004D74D4(a3, &v40);
  if (!*(&v41 + 1))
  {
    sub_1004A14E0(&v40);
    goto LABEL_11;
  }

  sub_1000D3B98(0, qword_1006F9460, NSUserDefaults_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    a2 = sub_100572898();
    goto LABEL_12;
  }

  v15 = v38;
  v16 = *&v5[OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock];
  os_unfair_lock_lock(*(v16 + 16));
  v17 = v15;
  sub_1004DE134(v5, v15, v37, v36, &v40);
  os_unfair_lock_unlock(*(v16 + 16));
  v18 = *(v40 + 16);
  if (v18)
  {
    v19 = &v13[*(v14 + 20)];
    v20 = *(v10 + 80);
    v35[1] = v40;
    v21 = v40 + ((v20 + 32) & ~v20);
    v22 = *(v10 + 72);
    do
    {
      sub_1004E01A8(v21, v13, _s9_ObserverC18HandlerAssociationVMa);
      v23 = *v19;
      v24 = sub_100572898();
      v25 = [v17 valueForKey:v24];

      if (v25)
      {
        sub_100573D58();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v23(&v40);
      sub_1004A14E0(&v40);
      sub_1004E0210(v13, _s9_ObserverC18HandlerAssociationVMa);
      v21 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
  }

  return result;
}

void sub_1004DE134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v11 = 0;
  v12 = *(a1 + v10);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 64);
  v16 = _swiftEmptyArrayStorage;
  while (v15)
  {
    v17 = v11;
LABEL_10:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v18 | (v17 << 6);
    if (*(*(v12 + 48) + 24 * v19 + 16) == a2)
    {
      v20 = *(*(v12 + 56) + 8 * v19);
      v21 = 1 << *(v20 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(v20 + 64);
      v24 = (v21 + 63) >> 6;

      v25 = 0;
      while (v23)
      {
LABEL_19:
        v27 = __clz(__rbit64(v23)) | (v25 << 6);
        v28 = (*(v20 + 48) + 16 * v27);
        v16 = *(*(v20 + 56) + 8 * v27);
        if (*v28 != a3 || v28[1] != a4)
        {
          v23 &= v23 - 1;
          if ((sub_100574498() & 1) == 0)
          {
            continue;
          }
        }

LABEL_26:

        goto LABEL_27;
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_29;
        }

        if (v26 >= v24)
        {
          v16 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v23 = *(v20 + 64 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_19;
        }
      }
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= ((v13 + 63) >> 6))
    {
LABEL_27:
      *a5 = v16;
      return;
    }

    v15 = *(v12 + 64 + 8 * v17);
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1004DE498(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_100574498() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v4)
  {
LABEL_8:
    sub_1000D3B98(0, &unk_1006F92D0, NSObject_ptr);
    return sub_100573A58() & 1;
  }

  return 0;
}

id sub_1004DE524()
{
  v2.receiver = v0;
  v2.super_class = _s9_ObserverCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NSUserDefaults.encodeValue(_:forKey:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10000C8CC(a1, a1[3]);
  sub_10056C2C8();
  swift_allocObject();
  sub_10056C2B8();
  v5 = sub_10056C2A8();
  v7 = v6;

  isa = sub_10056C908().super.isa;
  v9 = sub_100572898();
  [v4 setValue:isa forKey:v9];

  return sub_10008246C(v5, v7);
}

uint64_t NSUserDefaults.decodeValue<A>(_:forKey:)@<X0>(uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_100572898();
  v9 = [v5 valueForKey:v8];

  if (v9)
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_1004A14E0(v16);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = 1;
    return (*(*(a3 - 8) + 56))(a5, v10, 1, a3);
  }

  sub_10056C298();
  swift_allocObject();
  sub_10056C288();
  sub_10056C278();
  sub_10008246C(v12, v13);

  v10 = 0;
  return (*(*(a3 - 8) + 56))(a5, v10, 1, a3);
}

uint64_t sub_1004DEB84()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006F93B8);
  sub_10000C49C(v0, qword_1006F93B8);
  return sub_10056DF78();
}

uint64_t sub_1004DEC04(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_100573C28();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = *(a2 + 16);
  v11 = __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2 + *(a2 + 44), v10, v11);
  (*(v7 + 16))(v9, a1, v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v5;
    v16 = sub_10002AB7C(&v18);
    (*(v15 + 32))(v16, v9, v5);
  }

  return NSUserDefaults.subscript.setter(&v18, v13, v10, *(a2 + 32));
}

uint64_t sub_1004DEE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v9 = &v11[-v8];
  sub_100572CB8();
  sub_1004D74D4(a1, v11);
  NSUserDefaults.subscript.setter(v11, v9, AssociatedTypeWitness, a5);
  return sub_1004A14E0(a1);
}

unint64_t sub_1004DEF60()
{
  result = qword_1006F93D8[0];
  if (!qword_1006F93D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006F93D8);
  }

  return result;
}

uint64_t sub_1004DEFB4(uint64_t a1)
{
  result = sub_1000D3B98(319, qword_1006F9460, NSUserDefaults_ptr);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_100573C28();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1004DF068(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(*(v7 - 8) + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_35;
  }

  v19 = v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_35:
      if ((v12 & 0x80000000) != 0)
      {
        v28 = (a1 + v14 + 8) & ~v14;
        if (v6 == v13)
        {
          v29 = *(v5 + 48);

          return v29(v28);
        }

        else
        {
          v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16, v10, v7);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v27 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_35;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v13 + (v26 | v24) + 1;
}

void sub_1004DF2CC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  v19 = ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + v18;
  v20 = a3 >= v17;
  v21 = a3 - v17;
  if (v21 == 0 || !v20)
  {
LABEL_24:
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  if (v19 > 3)
  {
    v6 = 1;
    if (v17 < a2)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v22 = ((v21 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
  if (!HIWORD(v22))
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
      v6 = v23;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_24;
  }

  v6 = 4;
  if (v17 < a2)
  {
LABEL_25:
    v24 = ~v17 + a2;
    if (v19 < 4)
    {
      v25 = (v24 >> (8 * v19)) + 1;
      if (v19)
      {
        v26 = v24 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v26;
            if (v6 > 1)
            {
LABEL_60:
              if (v6 == 2)
              {
                *&a1[v19] = v25;
              }

              else
              {
                *&a1[v19] = v25;
              }

              return;
            }
          }

          else
          {
            *a1 = v24;
            if (v6 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v24;
      v25 = 1;
      if (v6 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v6)
    {
      a1[v19] = v25;
    }

    return;
  }

LABEL_34:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *&a1[v19] = 0;
  }

  else if (v6)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    v28 = &a1[v12 + 8] & ~v12;
    if (v8 == v17)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = *(v10 + 56);
      v31 = (v28 + v13 + v14) & ~v14;
      v32 = a2 + 1;

      v30(v31, v32, v11, v9);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
  }
}

uint64_t sub_1004DF600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004DF654(uint64_t a1)
{
  result = sub_1000D3B98(319, qword_1006F9460, NSUserDefaults_ptr);
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

uint64_t sub_1004DF6EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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