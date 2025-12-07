double HKUIOnePixel()
{
  result = *&HKUIOnePixel___onePixel;
  if (*&HKUIOnePixel___onePixel == 2.22507386e-308)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 scale];
    *&HKUIOnePixel___onePixel = 1.0 / v2;

    return *&HKUIOnePixel___onePixel;
  }

  return result;
}

id HKHealthKitUIFrameworkBundle(uint64_t a1, uint64_t a2)
{
  v2 = HKHealthKitUIFrameworkBundle___HKUIClassBundle;
  if (!HKHealthKitUIFrameworkBundle___HKUIClassBundle)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = HKHealthKitUIFrameworkBundle___HKUIClassBundle;
    HKHealthKitUIFrameworkBundle___HKUIClassBundle = v3;

    v2 = HKHealthKitUIFrameworkBundle___HKUIClassBundle;
  }

  return v2;
}

uint64_t sub_20CE39420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for HealthStoreAuthorizationOverlayModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[13], v5);

  v10 = v6[15];
  sub_20CE3C7A0(0, &unk_27C817BB0, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CE3CCE8();
    (*(*(v11 - 8) + 8))(v4 + v8 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

uint64_t sub_20CE395C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20CE39600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for HealthStorePerObjectAuthorizationOverlayModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*v6 + 64);

  (*(*(v5 - 8) + 8))(v4 + v8 + v6[13], v5);

  v10 = v6[15];
  sub_20CE3C7A0(0, &unk_27C817BB0, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20CE3CCE8();
    (*(*(v11 - 8) + 8))(v4 + v8 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v4, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v7 | 7);
}

double HKUIFloorToScreenScale(double a1)
{
  v2 = *&HKUIFloorToScreenScale___mainscreenScale;
  if (*&HKUIFloorToScreenScale___mainscreenScale == 2.22507386e-308)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    HKUIFloorToScreenScale___mainscreenScale = v4;

    v2 = *&HKUIFloorToScreenScale___mainscreenScale;
  }

  return floor(v2 * a1) / v2;
}

uint64_t View.healthDataAccessRequest<A>(store:shareTypes:readTypes:trigger:completion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a7;
  v31 = a2;
  v32 = a5;
  v29 = a4;
  v30 = a1;
  v33 = a9;
  v34 = a10;
  sub_20CE3C7A0(0, qword_27C817A48, MEMORY[0x277CDF468]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v29 - v16);
  v18 = *(a8 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HealthStoreAuthorizationOverlayModifier(0, a8, a11, v21);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v29 - v24;
  (*(v18 + 16))(v20, v29, a8);
  sub_20CE3AED4(v17);
  v26 = v30;
  sub_20CE3AF44(v30, v31, a3, v20, v32, a6, v17, a8, v25, a11, type metadata accessor for HealthStoreAuthorizationOverlayModifier);

  v27 = v26;
  MEMORY[0x20F314340](v25, v35, v22, v34);
  return (*(v23 + 8))(v25, v22);
}

uint64_t View.healthDataAccessRequest<A>(store:readTypes:trigger:completion:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v33 = a8;
  v31 = a9;
  v32 = a6;
  v29 = a2;
  v30 = a4;
  v28 = a3;
  sub_20CE3C7A0(0, qword_27C817A48, MEMORY[0x277CDF468]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v27 - v15);
  v17 = *(a7 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HealthStoreAuthorizationOverlayModifier(0, a7, a10, v20);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v27 - v23;
  (*(v17 + 16))(v19, v28, a7);
  sub_20CE3AED4(v16);
  sub_20CE3AF44(a1, 0, v29, v19, v30, a5, v16, a7, v24, a10, type metadata accessor for HealthStoreAuthorizationOverlayModifier);
  v25 = a1;

  MEMORY[0x20F314340](v24, v32, v21, v33);
  return (*(v22 + 8))(v24, v21);
}

uint64_t View.healthDataAccessRequest<A>(store:objectType:predicate:trigger:completion:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v33 = a5;
  v34 = a6;
  v31 = a4;
  v32 = a2;
  v35 = a9;
  v36 = a10;
  sub_20CE3C7A0(0, qword_27C817A48, MEMORY[0x277CDF468]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v31 - v16);
  v18 = *(a8 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for HealthStorePerObjectAuthorizationOverlayModifier(0, a8, a11, v21);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v31 - v24;
  (*(v18 + 16))(v20, v31, a8);
  sub_20CE3AED4(v17);
  v26 = v32;
  sub_20CE3AF44(a1, v32, a3, v20, v33, v34, v17, a8, v25, a11, type metadata accessor for HealthStorePerObjectAuthorizationOverlayModifier);
  v27 = a3;

  v28 = a1;
  v29 = v26;
  MEMORY[0x20F314340](v25, v37, v22, v36);
  return (*(v23 + 8))(v25, v22);
}

uint64_t sub_20CE3AED4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_20CE3C7A0(0, &unk_27C817BB0, MEMORY[0x277CDF458]);

  return MEMORY[0x2821FEBC8](a1, v2, 0);
}

uint64_t sub_20CE3AF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t (*a11)(void, uint64_t, uint64_t))
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v17 = a11(0, a8, a10);
  (*(*(a8 - 8) + 32))(&a9[v17[11]], a4, a8);
  v18 = &a9[v17[12]];
  *v18 = a5;
  *(v18 + 1) = a6;
  v19 = &a9[v17[13]];

  return sub_20CE3CA74(a7, v19);
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyx09HealthKitB00F33StoreAuthorizationOverlayModifier33_214B0F285CDA8168FBED6EA091EA168CLLVyqd__GGAaBHPxAaBHD1__AiA0cK0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  a2(255, a1[1], a1[3]);
  sub_20CE3CC88();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_20CE3B0A4(uint64_t a1)
{
  sub_20CE3B994(319, &qword_27C817AD0, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_20CE3B994(319, &qword_27C817AD8, 0x277CCD720);
    if (v2 <= 0x3F)
    {
      sub_20CE3B1C8(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_20CE3B230();
          if (v5 <= 0x3F)
          {
            sub_20CE3C7A0(319, qword_27C817A48, MEMORY[0x277CDF468]);
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

void sub_20CE3B1C8(uint64_t a1)
{
  if (!qword_27C817AE0)
  {
    sub_20CE3B994(255, &qword_27C817AE8, 0x277CCAC30);
    v1 = sub_20CE3CD88();
    if (!v2)
    {
      atomic_store(v1, &qword_27C817AE0);
    }
  }
}

unint64_t sub_20CE3B230()
{
  result = qword_27C817AF0[0];
  if (!qword_27C817AF0[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27C817AF0);
  }

  return result;
}

void sub_20CE3B280(uint64_t a1)
{
  sub_20CE3B994(319, &qword_27C817AD0, 0x277CCD4D8);
  if (v1 <= 0x3F)
  {
    sub_20CE3B91C(319);
    if (v2 <= 0x3F)
    {
      sub_20CE3B9DC(319);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_20CE3B230();
          if (v5 <= 0x3F)
          {
            sub_20CE3C7A0(319, qword_27C817A48, MEMORY[0x277CDF468]);
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

uint64_t sub_20CE3B394(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_20CE3CCE8() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((*(v6 + 64) + ((v11 + 24) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_20CE3B614(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_20CE3CCE8() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((*(v8 + 64) + ((v13 + 24) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *a1 = v22;
  }
}

void sub_20CE3B91C(uint64_t a1)
{
  if (!qword_27C817B78)
  {
    sub_20CE3BA54(255, &qword_27C817B80, &qword_27C817B88, 0x277CCD8D8, &qword_27C817B90);
    v1 = sub_20CE3CD88();
    if (!v2)
    {
      atomic_store(v1, &qword_27C817B78);
    }
  }
}

uint64_t sub_20CE3B994(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_20CE3B9DC(uint64_t a1)
{
  if (!qword_27C817B98)
  {
    sub_20CE3BA54(255, &qword_27C817BA0, &qword_27C817AD8, 0x277CCD720, &qword_27C817BA8);
    v1 = sub_20CE3CD88();
    if (!v2)
    {
      atomic_store(v1, &qword_27C817B98);
    }
  }
}

void sub_20CE3BA54(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_20CE3B994(255, a3, a4);
    sub_20CE3BAE0(a5, a3, a4);
    v9 = sub_20CE3CD68();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_20CE3BAE0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20CE3B994(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CE3BB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20CE3CD48();
  sub_20CE3CD38();
  sub_20CE3CD28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a2;
  [*a2 setAuthorizationViewControllerPresenter_];
  v9 = *(a2 + 8);
  if (v9)
  {
    sub_20CE3B994(0, &qword_27C817B88, 0x277CCD8D8);
    sub_20CE3BAE0(&qword_27C817B90, &qword_27C817B88, 0x277CCD8D8);
    v9 = sub_20CE3CD58();
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    sub_20CE3B994(0, &qword_27C817AD8, 0x277CCD720);
    sub_20CE3BAE0(&qword_27C817BA8, &qword_27C817AD8, 0x277CCD720);
    v10 = sub_20CE3CD58();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v13[4] = sub_20CE3C84C;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20CE3BDA4;
  v13[3] = &block_descriptor;
  v12 = _Block_copy(v13);

  [v8 requestAuthorizationToShareTypes:v9 readTypes:v10 completion:v12];
  _Block_release(v12);
}

void sub_20CE3BDA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_20CE3BE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20CE3CCB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE3C7A0(0, &unk_27C817BB0, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_20CE3C880(v2 + *(a1 + 52), &v15 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20CE3CCE8();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_20CE3CD78();
    v14 = sub_20CE3CCF8();
    sub_20CE3CC48();

    sub_20CE3CCA8();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20CE3C060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v40 = a1;
  v41 = a5;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v9 = sub_20CE3CCC8();
  v35 = v9;
  v10 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v11 = *(a2 + 24);
  v42 = v9;
  v43 = v10;
  v44 = WitnessTable;
  v45 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = &v30 - v16;
  v18 = *(a2 + 44);
  v17 = *(a2 + 48);
  v32 = v5;
  v33 = v18;
  v19 = (v5 + v17);
  v20 = v19[1];
  v31 = *v19;
  (*(v7 + 16))(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a2);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v10;
  *(v23 + 24) = v11;
  (*(v7 + 32))(v23 + v21, v30, a2);
  v24 = (v23 + v22);
  *v24 = v31;
  v24[1] = v20;

  swift_checkMetadataState();
  sub_20CE3CD18();

  v25 = *(v12 + 16);
  v26 = v34;
  v27 = OpaqueTypeMetadata2;
  v25(v34, v15, OpaqueTypeMetadata2);
  v28 = *(v12 + 8);
  v28(v15, v27);
  v25(v41, v26, v27);
  return (v28)(v26, v27);
}

uint64_t sub_20CE3C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, uint64_t, uint64_t), uint64_t a10)
{
  v21 = a8;
  v22 = a4;
  v23 = a10;
  v24 = a5;
  v13 = sub_20CE3CCE8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE3CD48();
  sub_20CE3CD38();
  sub_20CE3CD28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = a9(0, a6, a7);
  v18 = sub_20CE3BE64(v17, v16);
  MEMORY[0x28223BE20](v18);
  *(&v21 - 6) = a6;
  *(&v21 - 5) = a7;
  v19 = v22;
  *(&v21 - 4) = a3;
  *(&v21 - 3) = v19;
  *(&v21 - 2) = v24;
  sub_20CE3CCD8();
  (*(v14 + 8))(v16, v13);
}

uint64_t sub_20CE3C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20CE3CD48();
  sub_20CE3CD38();
  sub_20CE3CD28();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a2;
  [*a2 setAuthorizationViewControllerPresenter_];
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v14[4] = sub_20CE3CBDC;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_20CE3BDA4;
  v14[3] = &block_descriptor_21;
  v12 = _Block_copy(v14);

  [v8 requestPerObjectReadAuthorizationForType:v10 predicate:v9 completion:v12];
  _Block_release(v12);
}

void sub_20CE3C698(char a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a2)
  {
    MEMORY[0x20F314790](a2);
    a3(a2, 1);
  }

  else
  {
    (a3)(a1 & 1);
  }
}

void sub_20CE3C7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_20CE3CCE8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CE3C880(uint64_t a1, uint64_t a2)
{
  sub_20CE3C7A0(0, &unk_27C817BB0, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CE3C934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t a6)
{
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);
  v14 = *(a3(0, v12, v13) - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = (v6 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20CE3C368(a1, a2, v6 + v15, *v16, v16[1], v12, v13, a4, a5, a6);
}

uint64_t sub_20CE3CA74(uint64_t a1, uint64_t a2)
{
  sub_20CE3C7A0(0, qword_27C817A48, MEMORY[0x277CDF468]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_witness_table_SQRzlqd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy09HealthKitB00j25StoreAuthorizationOverlayH033_214B0F285CDA8168FBED6EA091EA168CLLVyxGG_xQo_HOTm(void *a1, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3)
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  sub_20CE3CCC8();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}