void sub_65EB0(void *a1, void *a2)
{
  v32 = a2;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940BD8, &qword_7805E8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_BD88(&qword_940BE0, qword_7805F0);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    sub_7645B0();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_67890(v17, v9);
  sub_67890(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10A2C(v14, &qword_940BE0, qword_7805F0);
    sub_10A2C(v17, &qword_940BE0, qword_7805F0);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10A2C(v9, &qword_940BE0, qword_7805F0);
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v31;
    sub_67890(v9, v31);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v9[v20], v4);
      sub_67900();
      v27 = v22;
      v28 = sub_7691C0();
      v29 = *(v5 + 8);
      v29(v26, v4);
      sub_10A2C(v14, &qword_940BE0, qword_7805F0);
      sub_10A2C(v17, &qword_940BE0, qword_7805F0);
      v29(v27, v4);
      sub_10A2C(v9, &qword_940BE0, qword_7805F0);
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10A2C(v14, &qword_940BE0, qword_7805F0);
    sub_10A2C(v17, &qword_940BE0, qword_7805F0);
    (*(v5 + 8))(v22, v4);
  }

  sub_10A2C(v9, &qword_940BD8, &qword_7805E8);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_65CD0();
    (*&stru_1A8.sectname[swift_isaMask & *v24])(v25, 0);
  }

LABEL_13:
  sub_66394(v32);
}

void sub_66394(void *a1)
{
  v3 = sub_764590();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_940BD8, &qword_7805E8);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_BD88(&qword_940BE0, qword_7805F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_67844();
  v21 = a1;
  v77 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = sub_76A1C0();

  v76 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v77;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v76 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_622DF8(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {
    v47 = *(v33 + 48);

    v46(v48, v45, 0.0);
    sub_F704(v46, v47);
  }

  v49 = *(v33 + 72);
  v50 = v79;
  if (!v49)
  {
    goto LABEL_26;
  }

  v51 = *(v33 + 80);
  v52 = *(v33 + 32);
  v75 = *(v33 + 72);
  v73 = v31;
  v74 = v51;
  if (v52)
  {
    sub_F714(v49, v51);

    sub_7645B0();

    v53 = v78;
    v54 = *(v78 + 56);
    v54(v34, 0, 1, v50);
  }

  else
  {
    v53 = v78;
    v55 = *(v78 + 56);
    v72 = v32;
    v54 = v55;
    v55(v34, 1, 1, v79);
    v32 = v72;
  }

  (*(v53 + 104))(v35, enum case for Uber.Style.inline(_:), v50);
  v54(v35, 0, 1, v50);
  v56 = v50;
  v57 = *(v36 + 48);
  sub_67890(v34, v30);
  sub_67890(v35, v30 + v57);
  v58 = *(v53 + 48);
  if (v58(v30, 1, v56) == 1)
  {
    sub_10A2C(v35, &qword_940BE0, qword_7805F0);
    sub_10A2C(v34, &qword_940BE0, qword_7805F0);
    if (v58(v30 + v57, 1, v56) == 1)
    {
      sub_10A2C(v30, &qword_940BE0, qword_7805F0);
      v60 = v75;
LABEL_28:
      if (v45 >= 0.5)
      {
        v65 = 0.35;
      }

      else
      {
        v65 = 0.2;
      }

      v59.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v59.n128_f64[0] = 0.0;
      }

      v66 = v74;
      v67 = v60;
      v60(v59, v65);
      sub_66F80(v76, *&v65, 0, v45);
      sub_F704(v67, v66);
      goto LABEL_34;
    }
  }

  else
  {
    sub_67890(v30, v32);
    if (v58(v30 + v57, 1, v56) != 1)
    {
      v61 = v78;
      v62 = v30 + v57;
      v63 = v73;
      (*(v78 + 32))(v73, v62, v56);
      sub_67900();
      LODWORD(v77) = sub_7691C0();
      v64 = *(v61 + 8);
      v64(v63, v56);
      sub_10A2C(v35, &qword_940BE0, qword_7805F0);
      sub_10A2C(v34, &qword_940BE0, qword_7805F0);
      v64(v32, v56);
      sub_10A2C(v30, &qword_940BE0, qword_7805F0);
      v60 = v75;
      if (v77)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

    sub_10A2C(v35, &qword_940BE0, qword_7805F0);
    sub_10A2C(v34, &qword_940BE0, qword_7805F0);
    (*(v78 + 8))(v32, v56);
  }

  sub_10A2C(v30, &qword_940BD8, &qword_7805E8);
  v60 = v75;
LABEL_25:
  sub_F704(v60, v74);
LABEL_26:
  sub_66F80(v76, 0, 1, v45);
LABEL_34:
  v68 = swift_unknownObjectWeakLoadStrong();
  if (v68)
  {
    v69 = v68;
    v70 = [v68 navigationController];

    if (v70)
    {
      v71 = [v70 navigationBar];

      [v71 _setTitleOpacity:v45];
    }
  }
}

uint64_t sub_66AA0(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_764590();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_940BD8, &qword_7805E8);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_BD88(&qword_940BE0, qword_7805F0);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      sub_7645B0();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_67890(v25, v16);
    sub_67890(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10A2C(v22, &qword_940BE0, qword_7805F0);
      sub_10A2C(v25, &qword_940BE0, qword_7805F0);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10A2C(v16, &qword_940BE0, qword_7805F0);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_67890(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10A2C(v22, &qword_940BE0, qword_7805F0);
      sub_10A2C(v25, &qword_940BE0, qword_7805F0);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10A2C(v16, &qword_940BD8, &qword_7805E8);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_67900();
    v34 = sub_7691C0();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10A2C(v22, &qword_940BE0, qword_7805F0);
    sub_10A2C(v25, &qword_940BE0, qword_7805F0);
    v35(v19, v10);
    sub_10A2C(v16, &qword_940BE0, qword_7805F0);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = sub_769A00();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_66F80(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_764590();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_940BD8, &qword_7805E8);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_BD88(&qword_940BE0, qword_7805F0);
  __chkstk_darwin(v15 - 8);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v43 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v46 = v4;
  if (v26)
  {

    sub_7645B0();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_67890(v23, v14);
  sub_67890(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) != 1)
  {
    v33 = v45;
    sub_67890(v14, v45);
    if (v29(&v14[v28], 1, v9) != 1)
    {
      v36 = &v14[v28];
      v37 = v44;
      (*(v10 + 32))(v44, v36, v9);
      sub_67900();
      v38 = v33;
      v39 = sub_7691C0();
      v40 = *(v10 + 8);
      v40(v37, v9);
      sub_10A2C(v19, &qword_940BE0, qword_7805F0);
      sub_10A2C(v23, &qword_940BE0, qword_7805F0);
      v40(v38, v9);
      result = sub_10A2C(v14, &qword_940BE0, qword_7805F0);
      v31 = v46;
      if (v39)
      {
        goto LABEL_16;
      }

LABEL_13:
      v34 = *(v31 + 40);
      if (!v34)
      {
        return result;
      }

      v35 = 48;
      goto LABEL_18;
    }

    sub_10A2C(v19, &qword_940BE0, qword_7805F0);
    sub_10A2C(v23, &qword_940BE0, qword_7805F0);
    (*(v10 + 8))(v33, v9);
    v31 = v46;
LABEL_12:
    result = sub_10A2C(v14, &qword_940BD8, &qword_7805E8);
    goto LABEL_13;
  }

  sub_10A2C(v19, &qword_940BE0, qword_7805F0);
  sub_10A2C(v23, &qword_940BE0, qword_7805F0);
  v30 = v29(&v14[v28], 1, v9);
  v31 = v46;
  if (v30 != 1)
  {
    goto LABEL_12;
  }

  result = sub_10A2C(v14, &qword_940BE0, qword_7805F0);
LABEL_16:
  v34 = *(v31 + 56);
  if (!v34)
  {
    return result;
  }

  v35 = 64;
LABEL_18:
  v41 = *(v31 + v35);

  v34(v42, a4, v25);
  return sub_F704(v34, v41);
}

void sub_67464(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_67844();
        v13 = a1;
        v14 = sub_76A1C0();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_66AA0(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_622DF8(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_676E4()
{
  sub_13238(v0 + 16);

  sub_F704(*(v0 + 40), *(v0 + 48));
  sub_F704(*(v0 + 56), *(v0 + 64));
  sub_F704(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_67844()
{
  result = qword_940BD0;
  if (!qword_940BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_940BD0);
  }

  return result;
}

uint64_t sub_67890(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_940BE0, qword_7805F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_67900()
{
  result = qword_940BE8;
  if (!qword_940BE8)
  {
    sub_764590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940BE8);
  }

  return result;
}

uint64_t sub_67958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

Swift::Int sub_679EC()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

Swift::Int sub_67A60(uint64_t a1)
{
  v2 = *v1;
  sub_76AA30();
  sub_76AA40(v2);
  return sub_76AA80();
}

void sub_67AA4(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_68DDC;
  v6[5] = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_23F0CC;
  v6[3] = &unk_8818B8;
  v5 = _Block_copy(v6);

  [a1 presentViewController:a2 animated:1 completion:v5];
  _Block_release(v5);
}

uint64_t sub_67B80()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_67C74(uint64_t a1, uint64_t a2, __n128 a3)
{
  v37 = a2;
  v4 = sub_760280();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v35 - v7;
  v8 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for FlowDestination(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;

  sub_764BF0();
  sub_146CF0(a1, v41, v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v24(v16, 1, v17) != 1)
    {
      sub_10A2C(v16, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v16, v23, v25);
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_68DF8(v23, type metadata accessor for FlowDestination);
    return 0;
  }

  v26 = sub_BD88(&qword_955C90, &unk_780680);
  sub_10A2C(&v23[*(v26 + 48)], &unk_93FD30, qword_77F240);
  sub_758AA0();
  sub_758A90();

  sub_764BF0();
  sub_146CF0(a1, v41, v13);
  if (v24(v13, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v28 = v24(v13, 1, v17);
    v29 = v40;
    if (v28 != 1)
    {
      sub_10A2C(v13, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v13, v20, v27);
    v29 = v40;
  }

  v30 = v36;
  sub_D2028(v36);
  sub_68DF8(v20, type metadata accessor for FlowDestination);
  sub_68DF8(v10, type metadata accessor for FlowPresentationHints);
  v32 = v38;
  v31 = v39;
  (*(v39 + 32))(v38, v30, v29);
  v33 = (*(v31 + 88))(v32, v29);
  result = 1;
  if (v33 != enum case for FlowPresentationContext.presentModal(_:) && v33 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v33 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v33 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v31 + 8))(v32, v29);
    return 0;
  }

  return result;
}

uint64_t sub_6816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B4C(a2, v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 39)
  {
    if (EnumCaseMultiPayload != 40 && EnumCaseMultiPayload != 41 && EnumCaseMultiPayload != 42)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 10)
  {

    v16 = *(sub_BD88(&qword_955C60, &qword_780678) + 64);
    v17 = sub_75C190();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 19)
  {
LABEL_9:
    sub_68DF8(v10, type metadata accessor for FlowDestination);
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  if (EnumCaseMultiPayload != 28)
  {
LABEL_13:
    sub_68DF8(v10, type metadata accessor for FlowDestination);
    v14 = 1;
    return v14 & 1;
  }

  sub_50774(v10, v6);
  type metadata accessor for ArticleContainerViewController();
  v12 = swift_dynamicCastClass() == 0;
  v13 = sub_7624A0();
  sub_10A2C(v6, &unk_93FD30, qword_77F240);
  v14 = v12 | v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_68398(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v9 - 8);
  v72 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for FlowDestination(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v71 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v68 - v18);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v20 = sub_768F90();
  v74 = a2;
  v21 = sub_32CB94(a2);
  if (v21)
  {
    v73 = v20;
    v22 = v21;
    v23 = [v21 traitCollection];
    v80[4] = v22;
    sub_BE70(0, &unk_94DCA0, UINavigationController_ptr);
    v75 = v22;
    sub_BD88(&qword_940BF8, &qword_780670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v78 = 0;
      aBlock = 0u;
      v77 = 0u;
    }

    sub_764BF0();
    sub_146CF0(a1, v80, v13);
    v24 = *(v15 + 48);
    v25 = v24(v13, 1, v14);
    v68 = v24;
    if (v25 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v14) != 1)
      {
        sub_10A2C(v13, &unk_9442D0, &unk_780660);
      }
    }

    else
    {
      sub_61AE8(v13, v19, v26);
    }

    v28 = sub_758A60();
    v30 = v29;
    sub_758A80();
    v31 = sub_471418(v19, v23, v28, v30, v8, &aBlock, a3, 1);

    sub_10A2C(v8, &unk_944FF0, &unk_783C00);
    sub_68DF8(v19, type metadata accessor for FlowDestination);
    sub_10A2C(&aBlock, &unk_9442E0, &unk_783C10);
    if (!v31)
    {
      sub_68D1C();
      swift_allocError();
      *v46 = 0;
      v20 = v73;
      sub_768F50();

      return v20;
    }

    v69 = v31;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    v70 = aBlock;
    v32 = [v75 viewControllers];
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v33 = sub_769460();

    if (v33 >> 62)
    {
      goto LABEL_48;
    }

    v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
    while (v34)
    {
      while (__OFSUB__(v34--, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v34 = sub_76A860();
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = sub_76A770();
        goto LABEL_19;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

      if (v34 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_47;
      }

      v36 = *(v33 + 32 + 8 * v34);
LABEL_19:
      v37 = v36;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v37)
      {

        goto LABEL_23;
      }
    }

LABEL_49:

    v37 = 0;
LABEL_23:
    v38 = [v75 topViewController];
    v20 = v73;
    if (v38)
    {
      v39 = v38;
      v40 = v37;
      if (v37)
      {
        v41 = v40;
        v42 = sub_76A1C0();

        if (v42)
        {
          v78 = sub_6902C;
          v79 = v20;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v77 = sub_23F0CC;
          *(&v77 + 1) = &unk_881890;
          v43 = _Block_copy(&aBlock);
          v44 = v41;

          v45 = v69;
          [v44 presentViewController:v69 animated:1 completion:v43];

          _Block_release(v43);

          return v20;
        }
      }

      else
      {
      }
    }

    else if (!v37)
    {
      v47 = 0;
    }

    v48 = v74;
    v49 = [v74 presentedViewController];
    if (v49)
    {
      v50 = v49;
      if (([v49 isBeingDismissed] & 1) == 0)
      {

        sub_764BF0();
        v51 = v72;
        sub_146CF0(a1, &aBlock, v72);
        v52 = v68;
        if (v68(v51, 1, v14) == 1)
        {
          v54 = v52;
          v55 = v71;
          swift_storeEnumTagMultiPayload();
          if (v54(v51, 1, v14) != 1)
          {
            sub_10A2C(v51, &unk_9442D0, &unk_780660);
          }
        }

        else
        {
          v55 = v71;
          sub_61AE8(v51, v71, v53);
        }

        v56 = sub_6816C(v50, v55, v70);
        sub_68DF8(v55, type metadata accessor for FlowDestination);
        if (v56)
        {
          type metadata accessor for ArticleContainerViewController();
          v57 = swift_dynamicCastClass();
          if (v57)
          {
            v58 = *(v57 + OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController);
            v59 = v50;
            v60 = [v58 popToRootViewControllerAnimated:0];
          }

          v61 = swift_allocObject();
          v62 = v69;
          v61[2] = v48;
          v61[3] = v62;
          v61[4] = v20;
          v78 = sub_68DD0;
          v79 = v61;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v77 = sub_23F0CC;
          *(&v77 + 1) = &unk_881868;
          v63 = _Block_copy(&aBlock);

          v64 = v48;
          v65 = v62;

          [v50 dismissViewControllerAnimated:1 completion:v63];

          goto LABEL_43;
        }
      }
    }

    v78 = sub_6902C;
    v79 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v77 = sub_23F0CC;
    *(&v77 + 1) = &unk_881818;
    v63 = _Block_copy(&aBlock);

    v66 = v69;
    [v48 presentViewController:v69 animated:1 completion:v63];

LABEL_43:
    _Block_release(v63);

    return v20;
  }

  sub_68D1C();
  swift_allocError();
  *v27 = 1;
  sub_768F50();

  return v20;
}

unint64_t sub_68D1C()
{
  result = qword_940BF0;
  if (!qword_940BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940BF0);
  }

  return result;
}

double sub_68D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_68D88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_68DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RatingView.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingView.UseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_68FCC()
{
  result = qword_940C00;
  if (!qword_940C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940C00);
  }

  return result;
}

uint64_t type metadata accessor for TodayCardVideoView(uint64_t a1)
{
  result = qword_940C08;
  if (!qword_940C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_690DC(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v95 = a7;
  v93 = a6;
  v96 = a5;
  v97 = a4;
  v98 = a3;
  v99 = a2;
  v88 = sub_768C60();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v11 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v17 = sub_75DC30();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7570A0();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v78 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v79 = &v78 - v25;
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_99A2B8] = 7;
  v29[qword_99A2C0] = 0;
  v90 = a1;
  sub_59C2C(a1, v104);
  v91 = v22;
  v30 = *(v22 + 16);
  v92 = v21;
  v80 = v30;
  v30(v28, v99, v21);
  v89 = v18;
  v31 = *(v18 + 16);
  v85 = v20;
  v94 = v17;
  v84 = v18 + 16;
  v83 = v31;
  v31(v20, v98, v17);
  v32 = v16;
  sub_1ED18(v97, v16, &unk_948710, &qword_77FF90);
  sub_1ED18(v96, v13, &unk_948710, &qword_77FF90);
  sub_1ED18(v93, v103, &unk_940700, qword_7807C0);
  swift_weakInit();
  *&v29[qword_940578 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_940580 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_940588 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_940590;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_940598] = 0;
  v29[qword_9405A0] = 0;
  v29[qword_9405A8] = 0;
  *&v29[qword_9405B0] = 0;
  *&v29[qword_9405B8] = 0;
  v34 = qword_9405C0;
  sub_7625F0();
  *&v29[v34] = sub_7625E0();
  v35 = qword_9405C8;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_99A1B0];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_99A1B8];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_99A1C0] = 1;
  v29[qword_9405D0] = 0;
  v40 = &v29[qword_99A1D0];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_99A1E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_99A1E8] = 0;
  v29[qword_99A1F0] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_9405D8] = 0;
  v29[qword_99A208] = 0;
  *&v29[qword_9405E0] = 0;
  v29[qword_9405E8] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_59C2C(v104, &v29[qword_99A1D8]);
  v41 = sub_757080();
  v43 = v42;
  v44 = sub_7650F0();
  v82 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v92;
    }

    else
    {
      v47 = sub_76A950();

      v46 = v92;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    sub_757030();
    v49 = sub_769210();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v78;
      sub_757060();

      v52 = *(v91 + 32);
      v53 = v79;
      v52(v79, v51, v46);
      v52(&v29[qword_99A1C8], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v92;
  }

LABEL_9:
  v80(&v29[qword_99A1C8], v36, v46);
LABEL_10:
  v81 = v32;
  sub_1ED18(v32, &v29[qword_99A198], &unk_948710, &qword_77FF90);
  v54 = v13;
  sub_1ED18(v13, &v29[qword_99A1A0], &unk_948710, &qword_77FF90);
  v55 = v85;
  v56 = v94;
  v83(&v29[qword_99A200], v85, v94);
  sub_1ED18(v103, &v29[qword_99A1A8], &unk_940700, qword_7807C0);
  v57 = type metadata accessor for VideoView(0);
  v102.receiver = v29;
  v102.super_class = v57;
  v58 = objc_msgSendSuper2(&v102, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_940590;
  [*&v58[qword_940590] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = sub_769AA0();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_9405C8;
  [*&v58[qword_9405C8] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  v69 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock + 8];
  *v67 = sub_5AA60;
  v67[1] = v66;
  v70 = v65;

  sub_F704(v68, v69);

  memset(v101, 0, sizeof(v101));
  memset(v100, 0, sizeof(v100));
  v71 = v86;
  sub_768C10();
  sub_10A2C(v100, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v101, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  (*(v87 + 8))(v71, v88);
  [v58 addSubview:*&v58[v64]];
  sub_58B90();

  sub_10A2C(v103, &unk_940700, qword_7807C0);
  sub_10A2C(v54, &unk_948710, &qword_77FF90);
  sub_10A2C(v81, &unk_948710, &qword_77FF90);
  v72 = *(v89 + 8);
  v72(v55, v56);
  v73 = *(v91 + 8);
  v74 = v92;
  v73(v82, v92);
  sub_1EB60(v104);
  v75 = v58[qword_9405A8];
  v58[qword_9405A8] = 1;
  if (v75)
  {
  }

  else
  {
    v76 = v58;
    sub_53B1C();
  }

  sub_10A2C(v93, &unk_940700, qword_7807C0);
  sub_10A2C(v96, &unk_948710, &qword_77FF90);
  sub_10A2C(v97, &unk_948710, &qword_77FF90);
  v72(v98, v94);
  v73(v99, v74);
  sub_1EB60(v90);
  return v58;
}

void sub_69D6C()
{
  v1 = v0;
  v2 = qword_99A2B8;
  v3 = *(v0 + qword_99A2B8);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_99A2C0);
    v6 = *(v0 + qword_9405A8);
    *(v0 + qword_9405A8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_9405A8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_9405A8);
  *(v0 + qword_9405A8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_53B1C();
  }

LABEL_9:
  v7 = qword_9405B0;
  v8 = *(v0 + qword_9405B0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_759A70();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = sub_7599E0(), v12, (v13))
    {
      if ((*(v1 + qword_99A2C0) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (sub_7599E0())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_69EEC()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_99A200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_75DB90();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (sub_7625C0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_99A2B8);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_99A2C0);
  }

  else
  {
    return 1;
  }
}

void sub_6A048()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_99A2B8;
  v7 = *(v0 + qword_99A2B8);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_99A2C0);
    v10 = *(v0 + qword_9405A8);
    *(v0 + qword_9405A8) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_9405A8) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_9405A8);
  *(v0 + qword_9405A8) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_53B1C();
  }

LABEL_9:
  v11 = qword_99A2C0;
  if (*(v0 + qword_99A2C0) == 1 && (v12 = qword_99A200, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = sub_75DB90(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (sub_7625C0() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_525F4();
  }

  else
  {
    v14 = qword_9405B0;
    v15 = *(v1 + qword_9405B0);
    if (v15)
    {
      v16 = v15;
      v17 = sub_759A70();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = sub_7599E0(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (sub_7599E0())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_6A2CC()
{
  v1 = *(v0 + qword_99A2B8);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_99A2C0) == 1)
  {
    sub_525F4();
  }
}

uint64_t sub_6A308()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6A340()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_B170(&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  sub_75A160();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

void sub_6A518(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7572A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v14.receiver = v3;
  v14.super_class = v13;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  sub_B170(&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_7587C0();
  (*(v10 + 8))(v12, v9);
  if (sub_75A130())
  {
    sub_757290();
    sub_757270();
    (*(v6 + 8))(v8, v5);
    sub_75CAA0();
  }
}

void sub_6A794(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7572A0();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768D60();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_940CB0, "ޥ\a");
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_7587B0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArcadeDownloadPackViewController();
  v20.receiver = v3;
  v20.super_class = v16;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  sub_B170(&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  sub_768D50();
  (*(v13 + 104))(v15, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_7587C0();
  (*(v13 + 8))(v15, v12);
  if (sub_75A130())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v18 + 8))(v7, v19);
    sub_75CAC0();
    v17 = sub_75CAD0();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_75CAB0();
  }
}

uint64_t sub_6AB14(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = sub_7587B0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_B170(&v15[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  sub_7587C0();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_6AC80(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_7587C0();

  return (*(v6 + 8))(v8, v5);
}

void sub_6ADAC(__n128 a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
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

void sub_6AEDC(__n128 a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v39, "viewDidLayoutSubviews");
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView];
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v6 bounds];
  [v4 convertRect:v6 fromCoordinateSpace:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v2 view];
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v2 buttonTray];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [v2 buttonTray];
  [v17 convertRect:v27 fromCoordinateSpace:{v20, v22, v24, v26}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v40.origin.x = v29;
  v40.origin.y = v31;
  v40.size.width = v33;
  v40.size.height = v35;
  CGRectGetMinY(v40);
  v41.origin.x = v9;
  v41.origin.y = v11;
  v41.size.width = v13;
  v41.size.height = v15;
  CGRectGetMinY(v41);
  v42.origin.x = v9;
  v42.origin.y = v11;
  v42.size.width = v13;
  v42.size.height = v15;
  CGRectGetWidth(v42);
  sub_75A150();
  sub_75F4C0();

  v36 = sub_75A150();
  v37 = [v2 view];
  if (v37)
  {
    v38 = v37;
    (*(v5 + 8))(v36, v37, ObjectType, v5);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_6B1A0()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_6BB7C;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_23F0CC;
  v12 = &unk_8819C0;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_6BB9C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_3D6D80;
  v12 = &unk_881A10;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_6B370(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

void sub_6B558()
{
  v1 = sub_767140();
  __chkstk_darwin(v1 - 8);
  sub_767130();
  v2 = objc_allocWithZone(sub_767160());
  v3 = sub_767150();
  sub_6BA44(v3);

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

id sub_6B6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6B784(uint64_t a1)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_268C8(v5);
  }

  sub_32A6C0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_6B8C4()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_6B940(uint64_t a1)
{
  sub_767230();
  sub_6B9EC();
  swift_errorRetain();

  v1 = sub_7671F0();
  sub_6BA44(v1);
}

unint64_t sub_6B9EC()
{
  result = qword_940CA8;
  if (!qword_940CA8)
  {
    sub_75A190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940CA8);
  }

  return result;
}

id sub_6BA44(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackViewController_overlayViewController];
  sub_761930();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_761920();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6BB44()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6BB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6BBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_766690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6BCA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_766690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration(uint64_t a1)
{
  result = qword_940D40;
  if (!qword_940D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6BD94(uint64_t a1)
{
  sub_6BE60();
  if (v1 <= 0x3F)
  {
    sub_396E8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        sub_766690();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_6BE60()
{
  if (!qword_940D50)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_940D50);
    }
  }
}

double sub_6BEB0()
{
  v0 = sub_766690();
  sub_161DC(v0, qword_99A2D8);
  sub_BE38(v0, qword_99A2D8);
  sub_7666A0();
  return result;
}

uint64_t sub_6BF04()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  sub_161DC(v4, qword_99A2F0);
  v5 = sub_BE38(v4, qword_99A2F0);
  if (qword_93C268 != -1)
  {
    swift_once();
  }

  v6 = qword_93C270;
  v7 = qword_940CC0;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_940CD8;
  v11 = xmmword_940CC8;
  sub_7666A0();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_6C0C0()
{
  result = [objc_opt_self() blackColor];
  qword_940CB8 = result;
  return result;
}

uint64_t sub_6C0FC()
{
  sub_396E8();
  result = sub_769FC0();
  qword_940CC0 = result;
  return result;
}

__n128 sub_6C130()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_940CC8 = *&UIEdgeInsetsZero.top;
  unk_940CD8 = v1;
  return result;
}

__n128 sub_6C14C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_758720();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    sub_75A300();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = sub_75A350();
    v47 = v21;
    v48 = sub_75A340();
    v52.n128_u32[0] = v22;

    sub_75A300();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    sub_75A300();
    if (v16(v8, v4) == v18)
    {
      if (qword_93C260 != -1)
      {
        swift_once();
      }

      v23 = qword_940CB8;
    }

    else
    {
      if (qword_93C268 != -1)
      {
        swift_once();
      }

      v23 = qword_940CC0;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    sub_75A300();
    if (v16(v31, v4) == v18)
    {
      v32 = sub_75A340();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_93C250 != -1)
        {
          swift_once();
        }

        v34 = sub_766690();
        sub_BE38(v34, qword_99A2D8);
        sub_766630();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_93C268 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_940CC0;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration(0);
  sub_7666A0();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

unint64_t sub_6C638()
{
  result = qword_940D98;
  if (!qword_940D98)
  {
    sub_762C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940D98);
  }

  return result;
}

uint64_t sub_6C690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_75FF70();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_32CF48(Strong);

  v24 = v10;
  sub_3C80C();
  v11 = v10;
  sub_BD88(&qword_940AE0, &unk_780440);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_6C9A8(&v21);
LABEL_6:
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_6CA10();
    swift_allocError();
    v14 = sub_768F20();

    return v14;
  }

  sub_10914(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_B170(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_BEB8(v25);
    goto LABEL_6;
  }

  sub_BD88(&qword_94DDC0, qword_77DE00);
  v14 = sub_768F90();
  v15 = sub_75F3B0();
  sub_768900();
  sub_768ED0();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  sub_75FF60();
  v16 = sub_75FF40();
  sub_75B430();
  v17 = sub_75B410();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  sub_75B3E0();

  (*(v6 + 8))(v8, v5);
  sub_BEB8(v25);
  return v14;
}

uint64_t sub_6C9A8(uint64_t a1)
{
  v2 = sub_BD88(&qword_940AE8, &unk_781D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6CA10()
{
  result = qword_940DA0;
  if (!qword_940DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940DA0);
  }

  return result;
}

double sub_6CA64()
{
  sub_72D58C(*(v0 + 24), 1, *(v0 + 32));
  sub_768F00();

  return result;
}

unint64_t sub_6CAC4()
{
  result = qword_940DA8;
  if (!qword_940DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940DA8);
  }

  return result;
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_10914(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = sub_766690();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_10914(a3, a7 + v13[6]);
  sub_10914(a4, a7 + v13[7]);
  sub_10914(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_10914(a6, v16);
}

uint64_t sub_6D040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D0FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_6D310(v3, a1);
}

uint64_t sub_6D310(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_943B10, &qword_77E080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_6D310(v3, a1);
}

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_6D718(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10914(a2, a9 + v22[5]);
  sub_10914(a3, a9 + v22[6]);
  sub_10914(a4, a9 + v22[7]);
  sub_10914(a5, a9 + v22[8]);
  sub_10914(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_10914(a11, a9 + v22[13]);
  sub_10914(a12, a9 + v22[14]);
  sub_10914(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_10914(a7, v33);
}

uint64_t sub_6D718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();
  v10.n128_f64[0] = a2;

  return sub_6FE2C(v10, a3, a1, a6);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_6ECA8(a1, v3, a2, a3);
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_769B50();

  return v2 & 1;
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v163 = a2;
  v157 = COERCE_DOUBLE(sub_75CF00());
  v155 = *(*&v157 - 8);
  __chkstk_darwin(*&v157);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_76A920());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_B170((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_766530();
  sub_B170((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_766530();
  sub_B170((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_766530();
  v19 = v6[3];
  sub_B170(v7, v7[3]);
  sub_33964(v19);
  sub_766700();
  v21 = v20;
  v22 = *(v15 + 8);
  v159 = *&v17;
  v161 = *&v14;
  *&v160 = v15 + 8;
  MaxY = *&v22;
  v22(v17, v14);
  v162 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  CGRectGetWidth(v174);
  sub_766660();
  Height = round(v23);
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = a5;
  v175.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v175)) < 1.0)
  {
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = a5;
    v176.size.height = a6;
    Height = CGRectGetHeight(v176);
  }

  v177.origin.x = 0.0;
  v177.origin.y = 0.0;
  v177.size.width = a5;
  v177.size.height = a6;
  Width = CGRectGetWidth(v177);
  sub_B170((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_769D20();
  sub_766530();
  v178.origin.x = 0.0;
  v178.origin.y = 0.0;
  v178.size.width = Width;
  v178.size.height = Height;
  v26 = CGRectGetWidth(v178);
  v27 = (v6 + v18[9]);
  sub_B170(v27, v27[3]);
  sub_769D20();
  sub_766530();
  sub_B170((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_B170(v27, v27[3]);
  sub_766520();
  sub_766530();
  sub_6D310(v6 + v18[11], &v172);
  if (v173)
  {
    sub_B170(&v172, v173);
    sub_766530();
    sub_BEB8(&v172);
  }

  else
  {
    sub_70550(&v172);
  }

  sub_6D310(v6 + v18[12], &v172);
  if (v173)
  {
    sub_B170(&v172, v173);
    sub_766530();
    sub_BEB8(&v172);
  }

  else
  {
    sub_70550(&v172);
  }

  sub_6D310(v6 + v18[17], &v170);
  v164 = a5;
  v166 = a4;
  v165 = a3;
  if (!v171)
  {
    sub_70550(&v170);
LABEL_17:
    v28 = 1;
    v29 = 0.0;
    v153 = 0.0;
    v152 = 0.0;
    v156 = 0.0;
    goto LABEL_18;
  }

  sub_10914(&v170, &v172);
  sub_B170(&v172, v173);
  if (sub_766540())
  {
LABEL_16:
    sub_BEB8(&v172);
    goto LABEL_17;
  }

  sub_6D310(v6 + v18[18], &v168);
  if (!v169)
  {
    sub_70550(&v168);
    goto LABEL_16;
  }

  sub_10914(&v168, &v170);
  sub_B170(&v170, v171);
  if (sub_766540())
  {
    sub_BEB8(&v170);
    goto LABEL_16;
  }

  v149 = sub_705B8(0.0, 0.0, a5, a6, 0.0, v21);
  v148 = v121;
  v123 = v122;
  v146 = v124;
  v156 = COERCE_DOUBLE(swift_getObjectType());
  v125 = [a1 traitCollection];
  v126 = [v125 preferredContentSizeCategory];
  v127 = sub_769B50();

  v150 = v21;
  v147 = Width;
  v145 = v26;
  if (v127)
  {
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v128 = qword_99B988;
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v128 = qword_99B970;
  }

  v129 = v157;
  v130 = sub_BE38(*&v157, v128);
  v131 = v155;
  v132 = v154;
  (*(v155 + 16))(v154, v130, COERCE_CGFLOAT(*&v129));
  v133 = [a1 traitCollection];
  v134 = [v133 preferredContentSizeCategory];
  sub_769B50();

  type metadata accessor for SmallLockupView(0);
  v135 = v146;
  sub_1FE304(v132, a1, v123, v146);
  v137 = ceil(v136);
  v195.origin.x = 0.0;
  v195.origin.y = 0.0;
  v195.size.width = a5;
  v195.size.height = a6;
  MinX = CGRectGetMinX(v195);
  v196.size.width = v123;
  v144 = v123;
  v138 = v149;
  v196.origin.x = v149;
  v139 = v148;
  v196.origin.y = v148;
  v196.size.height = v135;
  v140 = CGRectGetHeight(v196);
  v156 = v137;
  v141 = v140 - v137;
  v197.origin.x = 0.0;
  v197.origin.y = 0.0;
  v197.size.width = a5;
  v197.size.height = a6;
  v142 = CGRectGetWidth(v197);
  sub_B170(&v172, v173);
  v153 = v141;
  v152 = v142;
  sub_766530();
  v198.origin.x = v138;
  v198.origin.y = v139;
  v143 = v144;
  v198.size.width = v144;
  v198.size.height = v135;
  CGRectGetMinX(v198);
  v199.origin.x = v138;
  v199.origin.y = v139;
  v199.size.width = v143;
  v199.size.height = v135;
  CGRectGetMinY(v199);
  v200.origin.x = v138;
  v200.origin.y = v139;
  v200.size.width = v143;
  v200.size.height = v135;
  CGRectGetWidth(v200);
  sub_B170(&v170, v171);
  v29 = MinX;
  a5 = v164;
  sub_766530();
  (*(v131 + 8))(v132, COERCE_CGFLOAT(*&v157));
  sub_BEB8(&v170);
  sub_BEB8(&v172);
  v28 = 0;
  v21 = v150;
  Width = v147;
  v26 = v145;
LABEL_18:
  v30 = [a1 traitCollection];
  v31 = [v30 preferredContentSizeCategory];
  v32 = sub_769B50();

  v167 = a6;
  if (v32)
  {
    MinX = v29;
    v33 = sub_705B8(0.0, 0.0, a5, a6, 0.0, v21);
    v159 = v33;
    v161 = v34;
    v36 = v35;
    v38 = v37;
    v179.origin.x = 0.0;
    v179.origin.y = 0.0;
    v179.size.width = v26;
    v179.size.height = Height;
    MaxY = CGRectGetMaxY(v179);
    v39 = (v7 + v18[13]);
    sub_B170(v39, v39[3]);
    v160 = v36;
    v40 = v38;
    sub_7665A0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = v162;
    sub_B170((v7 + *(v162 + 24)), *(v7 + *(v162 + 24) + 24));
    sub_766720();
    v49 = v48;
    v180.origin.x = v33;
    v180.origin.y = v161;
    v180.size.width = v36;
    v180.size.height = v40;
    v50 = CGRectGetMinX(v180);
    v51 = MaxY + v49;
    sub_B170(v39, v39[3]);
    sub_769D20();
    sub_766530();
    v181.origin.x = v50;
    v181.origin.y = v51;
    v181.size.width = v42;
    v181.size.height = v44;
    v52 = CGRectGetMaxY(v181) - v46;
    v53 = (v7 + v18[14]);
    sub_B170(v53, v53[3]);
    v54 = v160;
    v55 = v40;
    sub_7665A0();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    sub_B170((v7 + *(v47 + 28)), *(v7 + *(v47 + 28) + 24));
    sub_766720();
    v63 = v62;
    v182.origin.x = v159;
    v182.origin.y = v161;
    v182.size.width = v54;
    MaxY = v55;
    v182.size.height = v55;
    v64 = CGRectGetMinX(v182);
    sub_B170(v53, v53[3]);
    sub_769D20();
    sub_766530();
    v183.origin.x = v64;
    v183.origin.y = v52 + v63;
    v183.size.width = v57;
    v183.size.height = v59;
    v65 = CGRectGetMaxY(v183);
    if (*(v7 + v18[19]) == 1)
    {
      v66 = v65 - v61;
      sub_B170((v7 + *(v47 + 32)), *(v7 + *(v47 + 32) + 24));
      v67 = [a1 traitCollection];
      sub_766710();
      v69 = v68;

      v70 = v66 + v69;
      v71 = (v7 + v18[15]);
      sub_B170(v71, v71[3]);
      v72 = [a1 traitCollection];
      v73 = v160;
      v74 = MaxY;
      sub_7673F0();
      v76 = v75;
      v78 = v77;

      v184.origin.x = v159;
      v184.origin.y = v161;
      v184.size.width = v73;
      v184.size.height = v74;
      v79 = CGRectGetMinX(v184);
      sub_B170(v71, v71[3]);
      sub_769D20();
      v80 = [a1 traitCollection];
      sub_7673E0();

      v185.origin.x = v79;
      v185.origin.y = v70;
      v185.size.width = v76;
      v185.size.height = v78;
      CGRectGetMaxY(v185);
    }

    sub_6D310(v7 + v18[16], &v170);
    if (v171)
    {
      sub_10914(&v170, &v172);
      sub_B170(&v172, v173);
      if ((sub_766540() & 1) == 0 && (v28 & 1) == 0)
      {
        sub_B170(&v172, v173);
        v81 = v160;
        v82 = MaxY;
        sub_7665A0();
        v186.origin.x = MinX;
        v186.origin.y = v153;
        v186.size.width = v152;
        v186.size.height = v156;
        CGRectGetMinY(v186);
        v83 = v159;
        v187.origin.x = v159;
        v84 = v161;
        v187.origin.y = v161;
        v187.size.width = v81;
        v187.size.height = v82;
        CGRectGetMinX(v187);
        v188.origin.x = v83;
        v188.origin.y = v84;
        v188.size.width = v81;
        v188.size.height = v82;
        CGRectGetWidth(v188);
        sub_B170(&v172, v173);
        sub_766530();
      }

      sub_BEB8(&v172);
    }

    else
    {
      sub_70550(&v170);
    }
  }

  else
  {
    v85 = sub_705B8(0.0, 0.0, Width, Height, 0.0, v21);
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v162;
    v93 = (v7 + *(v162 + 36));
    v94 = v93[3];
    sub_B170(v93, v94);
    v95 = v159;
    sub_33964(v94);
    sub_766700();
    v97 = v96;
    (*&MaxY)(COERCE_DOUBLE(*&v95), COERCE_CGFLOAT(*&v161));
    v189.origin.x = v85;
    v189.origin.y = v87;
    v189.size.width = v89;
    v189.size.height = v91;
    v98 = CGRectGetHeight(v189) - v97;
    if (*(v7 + v18[19]) == 1)
    {
      v99 = (v7 + v18[15]);
      sub_B170(v99, v99[3]);
      v100 = [a1 traitCollection];
      sub_7673F0();
      v161 = v101;
      v103 = v102;

      v159 = v98 - v103;
      v160 = v103;
      v190.origin.x = v85;
      v190.origin.y = v87;
      v190.size.width = v89;
      v190.size.height = v91;
      MaxY = CGRectGetMinX(v190);
      sub_B170(v99, v99[3]);
      sub_769D20();
      v104 = v85;
      v105 = [a1 traitCollection];
      sub_7673E0();

      sub_B170((v7 + *(v92 + 32)), *(v7 + *(v92 + 32) + 24));
      v106 = [a1 traitCollection];
      sub_766710();
      v108 = v107;

      v191.origin.x = MaxY;
      v191.origin.y = v159;
      v191.size.width = v161;
      v191.size.height = v160;
      v98 = CGRectGetMinY(v191) - v108;
    }

    else
    {
      v104 = v85;
    }

    v109 = (v7 + v18[14]);
    sub_B170(v109, v109[3]);
    sub_7665A0();
    v111 = v110;
    v113 = v112;
    v161 = v114;
    v160 = v115;
    v116 = v115 + v98 - v112;
    v192.origin.x = v104;
    v192.origin.y = v87;
    v156 = v87;
    v192.size.width = v89;
    v192.size.height = v91;
    v117 = CGRectGetMinX(v192);
    v157 = v104;
    v118 = v117;
    sub_B170(v109, v109[3]);
    sub_769D20();
    sub_766530();
    sub_B170((v7 + *(v92 + 28)), *(v7 + *(v92 + 28) + 24));
    sub_766720();
    v193.origin.x = v118;
    v193.origin.y = v116;
    v193.size.width = v111;
    v193.size.height = v113;
    CGRectGetMinY(v193);
    v119 = (v7 + v18[13]);
    sub_B170(v119, v119[3]);
    sub_7665A0();
    v194.origin.x = v157;
    v194.origin.y = v156;
    v194.size.width = v89;
    v194.size.height = v91;
    CGRectGetMinX(v194);
    sub_B170(v119, v119[3]);
    sub_769D20();
    sub_766530();
  }

  return sub_7664B0();
}

double sub_6ECA8(void *a1, void *a2, double a3, double a4)
{
  v112 = sub_76A920();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_766C30();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_766C50();
  v119 = *(v120 - 1);
  __chkstk_darwin(v120);
  v118 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_767170();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v108 = &v99 - v11;
  v106 = sub_75D850();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = (&v99 - v14);
  __chkstk_darwin(v15);
  v102 = &v99 - v16;
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  v20 = sub_75CF00();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v99 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_6D310(a2 + v27[18], &v124);
  v113 = v125;
  sub_70550(&v124);
  v121 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = sub_769B50();

  if (v30)
  {
    v31 = v27[13];
    v32 = v27[14];
    v33 = v27[16];
    v99 = v27[15];
    v107 = v33;
    LODWORD(v103) = *(a2 + v27[19]);
    if (qword_93C6C0 != -1)
    {
      swift_once();
    }

    v100 = (a2 + v31);
    v34 = (a2 + v32);
    v35 = sub_BE38(v20, qword_99B988);
    v104 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v37 = v36;
    v38 = [v121 traitCollection];
    (*(v21 + 16))(v26, v35, v20);
    v39 = sub_75CE70();
    v41 = v109;
    v101 = v34;
    if ((v42 & 1) == 0 && ((v39 | v40) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v43 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v43 = qword_946938;
      }

      v53 = v106;
      v54 = sub_BE38(v106, v43);
      v55 = v105;
      v56 = v102;
      (*(v105 + 16))(v102, v54, v53);
      (*(v55 + 32))(v19, v56, v53);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v55 + 8))(v19, v53);
    }

    sub_75CDB0();
    v58 = v57;

    (*(v21 + 8))(v26, v20);
    *&v122 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30, &unk_781150);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v125 = &type metadata for CGFloat;
    v126 = &protocol witness table for CGFloat;
    *&v124 = v37;
    v60 = v114;
    *(inited + 56) = v114;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v61 = v121;
    v62 = v112;
    if (v113)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = ceil(v58 + 16.0 + 16.0);
      v63 = v108;
      sub_767180();
      v64 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_7AADC(0, *(v64 + 16) + 1, 1, v64);
      }

      v66 = *(v64 + 16);
      v65 = *(v64 + 24);
      if (v66 >= v65 >> 1)
      {
        v64 = sub_7AADC((v65 > 1), v66 + 1, 1, v64);
      }

      v125 = v60;
      v126 = &protocol witness table for VerticalSpaceMeasurable;
      v67 = sub_B1B4(&v124);
      v68 = v111;
      (*(v111 + 16))(v67, v63, v60);
      *(v64 + 16) = v66 + 1;
      sub_10914(&v124, v64 + 40 * v66 + 32);
      (*(v68 + 8))(v63, v60);
      *&v122 = v64;
    }

    (*(v116 + 104))(v115, enum case for StackMeasurable.Axis.vertical(_:), v117);
    v69 = v118;
    sub_766C40();
    sub_766C20();
    v71 = v70;
    (*(v119 + 8))(v69, v120);
    v72 = a2[3];
    sub_B170(a2, v72);
    sub_33964(v72);
    sub_766700();
    v120 = *(v110 + 8);
    v120(v41, v62);
    sub_769DA0();
    sub_B170(v100, v100[3]);
    sub_7665A0();
    v74 = v73;
    v75 = v104;
    sub_B170((a2 + v104[6]), *(a2 + v104[6] + 24));
    sub_766720();
    *&v124 = v74;
    sub_7666F0();
    sub_B170(v101, v101[3]);
    sub_7665A0();
    v77 = v76;
    sub_B170((a2 + v75[7]), *(a2 + v75[7] + 24));
    sub_766720();
    *&v124 = v77;
    sub_7666F0();
    if (v103)
    {
      sub_B170((a2 + v99), *(a2 + v99 + 24));
      v78 = [v61 traitCollection];
      sub_7673F0();

      sub_B170((a2 + v75[8]), *(a2 + v75[8] + 24));
      v79 = [v61 traitCollection];
      sub_766710();

      v80 = (a2 + v75[9]);
      v81 = v80[3];
      sub_B170(v80, v81);
      sub_33964(v81);
      sub_766700();
      v120(v41, v112);
    }

    sub_6D310(&v107[a2], &v122);
    if (v123)
    {
      sub_10914(&v122, &v124);
      sub_B170(&v124, v125);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v124, v125);
        sub_7665A0();
      }

      sub_BEB8(&v124);
    }

    else
    {
      sub_70550(&v122);
    }
  }

  else
  {
    if (qword_93C6B8 != -1)
    {
      swift_once();
    }

    v44 = sub_BE38(v20, qword_99B970);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_766660();
    v46 = v45;
    v47 = [v121 traitCollection];
    (*(v21 + 16))(v23, v44, v20);
    v48 = sub_75CE70();
    v50 = v114;
    if ((v51 & 1) == 0 && ((v48 | v49) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v52 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v52 = qword_946938;
      }

      v82 = v106;
      v83 = sub_BE38(v106, v52);
      v84 = v105;
      v85 = v103;
      (*(v105 + 16))(v103, v83, v82);
      v86 = v104;
      (*(v84 + 32))(v104, v85, v82);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v84 + 8))(v86, v82);
    }

    sub_75CDB0();
    v88 = v87;

    (*(v21 + 8))(v23, v20);
    *&v122 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30, &unk_781150);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_77B6D0;
    v125 = &type metadata for CGFloat;
    v126 = &protocol witness table for CGFloat;
    *&v124 = v46;
    *(v89 + 56) = v50;
    *(v89 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((v89 + 32));
    sub_767180();
    sub_109F98(v89);
    if (v113)
    {
      v125 = &type metadata for CGFloat;
      v126 = &protocol witness table for CGFloat;
      *&v124 = ceil(v88 + 4.0 + 4.0);
      v90 = v107;
      sub_767180();
      v91 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_7AADC(0, *(v91 + 16) + 1, 1, v91);
      }

      v93 = *(v91 + 16);
      v92 = *(v91 + 24);
      if (v93 >= v92 >> 1)
      {
        v91 = sub_7AADC((v92 > 1), v93 + 1, 1, v91);
      }

      v125 = v50;
      v126 = &protocol witness table for VerticalSpaceMeasurable;
      v94 = sub_B1B4(&v124);
      v95 = v111;
      (*(v111 + 16))(v94, v90, v50);
      *(v91 + 16) = v93 + 1;
      sub_10914(&v124, v91 + 40 * v93 + 32);
      (*(v95 + 8))(v90, v50);
      *&v122 = v91;
    }

    (*(v116 + 104))(v115, enum case for StackMeasurable.Axis.vertical(_:), v117);
    v96 = v118;
    sub_766C40();
    sub_766C20();
    v71 = v97;
    (*(v119 + 8))(v96, v120);
  }

  return v71;
}

double sub_6FE2C(__n128 a1, double a2, uint64_t a3, void *a4)
{
  v50 = sub_766C30();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_766C50();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_767170();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_75D850();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_75CF00();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C6B8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v15, qword_99B970);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  sub_766660();
  v21 = v20;
  v52 = a4;
  v22 = [a4 traitCollection];
  (*(v16 + 16))(v18, v19, v15);
  v23 = sub_75CE70();
  v25 = v9;
  if ((v26 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v27 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v27 = qword_946938;
    }

    v28 = v44;
    v29 = sub_BE38(v44, v27);
    v30 = v43;
    (*(v10 + 16))(v43, v29, v28);
    (*(v10 + 32))(v14, v30, v28);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v10 + 8))(v14, v28);
  }

  sub_75CDB0();
  v32 = v31;

  (*(v16 + 8))(v18, v15);
  v56 = _swiftEmptyArrayStorage;
  sub_BD88(&qword_941B30, &unk_781150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v21;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((inited + 32));
  sub_767180();
  sub_109F98(inited);
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = ceil(v32 + 4.0 + 4.0);
  sub_767180();
  v34 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_7AADC(0, *(v34 + 2) + 1, 1, v34);
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_7AADC((v35 > 1), v36 + 1, 1, v34);
  }

  v54 = v7;
  v55 = &protocol witness table for VerticalSpaceMeasurable;
  v37 = sub_B1B4(&v53);
  v38 = v45;
  (*(v45 + 16))(v37, v25, v7);
  *(v34 + 2) = v36 + 1;
  sub_10914(&v53, &v34[5 * v36 + 4]);
  (*(v38 + 8))(v25, v7);
  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  v39 = v46;
  sub_766C40();
  sub_766C20();
  v41 = v40;
  (*(v49 + 8))(v39, v51);
  return v41;
}

uint64_t sub_70550(uint64_t a1)
{
  v2 = sub_BD88(&unk_943B10, &qword_77E080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_705E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_706BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_70778(uint64_t a1)
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_70898(319);
      if (v3 <= 0x3F)
      {
        sub_70B18(319, &qword_941880, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_70B18(319, &qword_940E18, &protocol descriptor for Placeable);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_70898(uint64_t a1)
{
  if (!qword_94E850)
  {
    sub_133D8(&unk_9418A0, &qword_780FF0);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_94E850);
    }
  }
}

uint64_t sub_70910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_766690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_709D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_766690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_70A74(uint64_t a1)
{
  result = sub_70B18(319, &qword_943C60, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = sub_766690();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_70B18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_70BC0(uint64_t a1)
{
  v2 = sub_76A920();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_766690();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = sub_7656A0();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  sub_7648E0();
  sub_720D0(&unk_940F30, &type metadata accessor for Quote, &protocol conformance descriptor for Quote);
  sub_75C750();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  sub_75C7B0();

  sub_7655A0();
  v21(v15, v12);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  sub_765620();
  sub_769DA0();
  v151._object = 0x80000000007CC420;
  v151._countAndFlagsBits = 0xD000000000000010;
  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  v24 = sub_75B750(v151, v152);
  v26 = sub_3A5CC8(v24, v25);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_93CE50 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_99D5A0;
      }

      else
      {
        if (qword_93CE58 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_99D5F8;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_99D6A8;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_99D548;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_93CE60 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_99D650;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_72018(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  sub_75C7B0();

  sub_765620();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_3A5D14(&v147);

  sub_7648B0();
  v43 = v42;
  v44 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = sub_7666D0();
  v45 = sub_BE38(v134, qword_99D700);
  swift_getKeyPath();
  sub_75C7B0();

  v46 = v141[0];
  v124 = v45;
  v47 = sub_769E10();

  sub_BD88(&qword_940F40, &qword_785F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_93C2E0;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_99A440 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_BE70(0, &qword_940F48, NSParagraphStyle_ptr);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50, &qword_785170);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = sub_769210();
  type metadata accessor for Key(0);
  sub_720D0(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  isa = sub_7690E0().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_10D028(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = sub_769210();
    v62 = sub_7690E0().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_72078(v144);
  }

  else
  {

    sub_72078(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  sub_75C7B0();

  v71 = sub_7653B0();
  v142 = v71;
  v122 = sub_720D0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v143 = v122;
  v72 = sub_B1B4(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  sub_765C30();
  sub_BEB8(v141);
  sub_762CA0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_11A38(v70);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = sub_766CA0();
  sub_BE38(v81, qword_99D730);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v81, qword_99D748);
  swift_getKeyPath();
  sub_75C7B0();

  v85 = v141[0];
  v86 = sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v87 = swift_allocObject();
  v130 = xmmword_77D9F0;
  *(v87 + 16) = xmmword_77D9F0;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = sub_7671E0();
  sub_7666E0();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  sub_7648C0();
  if (v92)
  {
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    sub_BE38(v134, qword_99D718);
    swift_getKeyPath();
    sub_75C7B0();

    v142 = v71;
    v143 = v122;
    v93 = sub_B1B4(v141);
    v120(v93, v121, v71);
    sub_765C30();
    sub_BEB8(v141);
    sub_762CB0();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D760);
    swift_getKeyPath();
    sub_75C7B0();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = sub_7671E0();
    sub_7666E0();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D778);
    swift_getKeyPath();
    sub_75C7B0();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = sub_7671E0();
    sub_7666E0();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (sub_7648D0())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    v113 = v112;
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v81, qword_99D790);
    swift_getKeyPath();
    sub_75C7B0();

    v114 = v141[0];
    v115 = v128;
    sub_766470();
    sub_766C70();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_720D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_7211C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_721B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *v4;
  v12 = swift_isaMask;
  v13 = qword_99A308;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = qword_99A310;
  *&v5[v15] = (*(*(&stru_20.maxprot + (v12 & v11)) + 72))(0.0, 0.0, 0.0, 0.0);
  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v21 = [v20 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v22 = [v20 contentView];
  [v22 addSubview:*&v20[qword_99A310]];

  return v20;
}

uint64_t sub_723F0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_99A308;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_72448(uint64_t a1)
{
  v3 = qword_99A308;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_72508()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[qword_99A310];
  [v0 bounds];
  return [v1 setFrame:?];
}

void sub_72574(void *a1)
{
  v1 = a1;
  sub_72508();
}

uint64_t sub_725BC(double a1, double a2)
{
  type metadata accessor for ScrollablePillView(0);
  swift_dynamicCastClass();
  return sub_766CC0();
}

double sub_72620(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_725BC(a2, a3);
  v7 = v6;

  return v7;
}

uint64_t sub_72674()
{
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = swift_isaMask;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "prepareForReuse");
  return (*(*(&stru_20.maxprot + (v3 & v2)) + 88))(*(&stru_20.filesize + (v3 & v2)));
}

void sub_72718(void *a1)
{
  v1 = a1;
  sub_72674();
}

id sub_72760(void *a1)
{
  v1 = a1;
  v2 = sub_727A4();

  return v2;
}

uint64_t sub_72998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.bottom(_:), v3);
  sub_75D3D0();
  v6 = sub_75D400();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_72B04(uint64_t a1)
{
  sub_3A63C(a1 + qword_99A308);
  v2 = *(a1 + qword_99A310);
}

void sub_72B90()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = qword_99A308;
  v5 = sub_75C840();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = qword_99A310;
  *(v1 + v6) = (*(*(&stru_20.maxprot + (v3 & v2)) + 72))(0.0, 0.0, 0.0, 0.0);
  sub_76A840();
  __break(1u);
}

uint64_t sub_72CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  v6 = v11[1];
  v7 = sub_7699D0();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_75D3D0();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_75D400();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_72E90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_72F3C()
{
  v0 = sub_764A60();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v27 - v3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.smallLockup(_:))
  {
    if (v13 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      v14 = type metadata accessor for MediumLockupCollectionViewCell(0);
      v15 = type metadata accessor for MediumLockupCollectionViewCell;
      sub_76CBC(&qword_9414C8, type metadata accessor for MediumLockupCollectionViewCell, &unk_796EAC);
      sub_76CBC(&qword_9414D0, type metadata accessor for MediumLockupCollectionViewCell, &unk_7B0D7C);
      v16 = &qword_9414D8;
      v17 = &unk_7B0A30;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      v14 = type metadata accessor for LargeLockupCollectionViewCell(0);
      v15 = type metadata accessor for LargeLockupCollectionViewCell;
      sub_76CBC(&qword_9414F8, type metadata accessor for LargeLockupCollectionViewCell, &unk_796FB4);
      sub_76CBC(&qword_941500, type metadata accessor for LargeLockupCollectionViewCell, &unk_7A7978);
      v16 = &qword_941508;
      v17 = &unk_796FE4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productTopLockup(_:))
    {
      v14 = type metadata accessor for ProductLockupCollectionViewCell(0);
      v15 = type metadata accessor for ProductLockupCollectionViewCell;
      sub_76CBC(&qword_941318, type metadata accessor for ProductLockupCollectionViewCell, &unk_7964C4);
      sub_76CBC(&unk_953F90, type metadata accessor for ProductLockupCollectionViewCell, &unk_79C588);
      v16 = &qword_941320;
      v17 = &unk_7AA988;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell;
      sub_76CBC(&qword_941580, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_797374);
      sub_76CBC(&qword_941588, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell, &unk_78C45C);
      v16 = &qword_941590;
      v17 = &unk_7973A4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:))
    {
      v14 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell(0);
      v15 = type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell;
      sub_76CBC(&qword_941550, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_797224);
      sub_76CBC(&qword_941558, type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell, &unk_78E978);
      v16 = &qword_941560;
      v17 = &unk_797254;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:))
    {
      v14 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell;
      sub_76CBC(&qword_941100, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_79D074);
      sub_76CBC(&qword_941108, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_79D058);
      v16 = &qword_941110;
      v17 = &unk_79D010;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
    {
      v14 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(0);
      v15 = type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell;
      sub_76CBC(&qword_9410F0, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_77E974);
      sub_76CBC(&qword_9410F8, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_77E958);
      v16 = &qword_93F798;
      v17 = &unk_77E910;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.action(_:))
    {
      v14 = type metadata accessor for ActionCollectionViewCell(0);
      v15 = type metadata accessor for ActionCollectionViewCell;
      sub_76CBC(&qword_941780, type metadata accessor for ActionCollectionViewCell, &unk_797F50);
      sub_76CBC(&qword_941788, type metadata accessor for ActionCollectionViewCell, &unk_789A00);
      v16 = &qword_941790;
      v17 = &unk_7A7D58;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.artwork(_:))
    {
      v14 = type metadata accessor for ArtworkCollectionViewCell(0);
      v15 = type metadata accessor for ArtworkCollectionViewCell;
      sub_76CBC(&qword_9416D0, type metadata accessor for ArtworkCollectionViewCell, &unk_797BBC);
      sub_76CBC(&qword_9416D8, type metadata accessor for ArtworkCollectionViewCell, &unk_7951D0);
      v16 = &unk_9416E0;
      v17 = &unk_797BEC;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.ribbonBar(_:) || v13 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v14 = type metadata accessor for RibbonBarItemCollectionViewCell(0);
      v15 = type metadata accessor for RibbonBarItemCollectionViewCell;
      sub_76CBC(&qword_941690, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_77DFE8);
      sub_76CBC(&qword_941698, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_78F2F0);
      v16 = &qword_93F380;
      v17 = &unk_77E018;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.paragraph(_:))
    {
      v14 = type metadata accessor for ParagraphCollectionViewCell(0);
      v15 = type metadata accessor for ParagraphCollectionViewCell;
      sub_76CBC(&qword_9414A0, type metadata accessor for ParagraphCollectionViewCell, &unk_796DA4);
      sub_76CBC(&qword_93F728, type metadata accessor for ParagraphCollectionViewCell, &unk_77E680);
      v16 = &qword_9414A8;
      v17 = &unk_7A9C40;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.annotation(_:))
    {
      v19 = sub_7653B0();
      v31 = v19;
      v32 = sub_76CBC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v20 = sub_B1B4(v30);
      (*(*(v19 - 8) + 104))(v20, enum case for Feature.annotations_update_2025A(_:), v19);
      LOBYTE(v19) = sub_765C30();
      sub_BEB8(v30);
      if ((v19 & 1) == 0)
      {
        v14 = type metadata accessor for AnnotationCollectionViewCell(0);
        v15 = type metadata accessor for AnnotationCollectionViewCell;
        sub_76CBC(&qword_941750, type metadata accessor for AnnotationCollectionViewCell, &unk_797EF0);
        sub_76CBC(&qword_941758, type metadata accessor for AnnotationCollectionViewCell, &unk_7AA8E0);
        v16 = &qword_941760;
        v17 = &unk_786C58;
        goto LABEL_26;
      }

      v14 = type metadata accessor for AnnotationCollectionViewHostingCell(0);
      v15 = type metadata accessor for AnnotationCollectionViewHostingCell;
      sub_76CBC(&qword_941768, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_795A48);
      sub_76CBC(&qword_941770, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_79AFB8);
      v16 = &unk_941778;
      goto LABEL_31;
    }

    if (v13 == enum case for Shelf.ContentType.footnote(_:))
    {
      v14 = type metadata accessor for FootnoteCollectionViewCell(0);
      v15 = type metadata accessor for FootnoteCollectionViewCell;
      sub_76CBC(&qword_941620, type metadata accessor for FootnoteCollectionViewCell, &unk_797724);
      sub_76CBC(&qword_941628, type metadata accessor for FootnoteCollectionViewCell, &unk_78CD80);
      v16 = &qword_941630;
      v17 = &unk_797754;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.titledParagraph(_:))
    {
      v14 = type metadata accessor for TitledParagraphCollectionViewCell(0);
      v15 = type metadata accessor for TitledParagraphCollectionViewCell;
      sub_76CBC(&qword_9411A0, type metadata accessor for TitledParagraphCollectionViewCell, &unk_795EFC);
      sub_76CBC(&qword_94B6B0, type metadata accessor for TitledParagraphCollectionViewCell, &unk_78E5D0);
      v16 = &unk_9411A8;
      v17 = &unk_795F2C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.editorialCard(_:))
    {
      v14 = type metadata accessor for EditorialCardCollectionViewCell(0);
      v15 = type metadata accessor for EditorialCardCollectionViewCell;
      sub_76CBC(&qword_941678, type metadata accessor for EditorialCardCollectionViewCell, &unk_79791C);
      sub_76CBC(&qword_941680, type metadata accessor for EditorialCardCollectionViewCell, &unk_793D20);
      v16 = &qword_941688;
      v17 = &unk_79794C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.videoCard(_:))
    {
      v14 = type metadata accessor for VideoCardCollectionViewCell(0);
      v15 = type metadata accessor for VideoCardCollectionViewCell;
      sub_76CBC(&qword_941130, type metadata accessor for VideoCardCollectionViewCell, &unk_795D08);
      sub_76CBC(&qword_941138, type metadata accessor for VideoCardCollectionViewCell, &unk_7A8660);
      v16 = &qword_941140;
      v17 = &unk_795D38;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.brick(_:))
    {
      v14 = type metadata accessor for BrickCollectionViewCell(0);
      v15 = type metadata accessor for BrickCollectionViewCell;
      sub_76CBC(&qword_9416A0, type metadata accessor for BrickCollectionViewCell, &unk_797A6C);
      sub_76CBC(&qword_9416A8, type metadata accessor for BrickCollectionViewCell, &unk_78CEE0);
      v16 = &qword_9416B0;
      v17 = &unk_797A9C;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_44:
      v14 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell(0);
      v15 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell;
      sub_76CBC(&qword_941260, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_7979C4);
      sub_76CBC(&qword_941268, type metadata accessor for ChartOrCategoryBrickCollectionViewCell, &unk_7A46A8);
      v16 = &qword_941270;
      v17 = &unk_7979F4;
      goto LABEL_26;
    }

    if (v13 == enum case for Shelf.ContentType.productCapability(_:))
    {
      v21 = sub_7653B0();
      v31 = v21;
      v32 = sub_76CBC(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v22 = sub_B1B4(v30);
      (*(*(v21 - 8) + 104))(v22, enum case for Feature.product_capability_update_2024E(_:), v21);
      LOBYTE(v21) = sub_765C30();
      sub_BEB8(v30);
      if ((v21 & 1) == 0)
      {
        v14 = type metadata accessor for ProductCapabilityCell(0);
        v15 = type metadata accessor for ProductCapabilityCell;
        sub_76CBC(&qword_9413B8, type metadata accessor for ProductCapabilityCell, &unk_796820);
        sub_76CBC(&qword_9413C0, type metadata accessor for ProductCapabilityCell, &unk_78A790);
        v16 = &qword_9413C8;
        v17 = &unk_796850;
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 == enum case for Shelf.ContentType.reviews(_:))
      {
        v14 = type metadata accessor for ProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for ProductReviewCollectionViewCell;
        sub_76CBC(&qword_9412F0, type metadata accessor for ProductReviewCollectionViewCell, &unk_796554);
        sub_76CBC(&qword_9412F8, type metadata accessor for ProductReviewCollectionViewCell, &unk_7898B8);
        v16 = &unk_941300;
        v17 = &unk_796584;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v14 = type metadata accessor for ReviewSummaryCollectionViewCell(0);
        v15 = type metadata accessor for ReviewSummaryCollectionViewCell;
        sub_76CBC(&qword_9412D8, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_7964F4);
        sub_76CBC(&qword_9412E0, type metadata accessor for ReviewSummaryCollectionViewCell, &unk_782FA8);
        v16 = &unk_9412E8;
        v17 = &unk_79223C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorsChoice(_:))
      {
        v14 = type metadata accessor for ProductEditorsChoiceCollectionViewCell(0);
        v15 = type metadata accessor for ProductEditorsChoiceCollectionViewCell;
        sub_76CBC(&qword_941638, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_79C02C);
        sub_76CBC(&qword_941640, type metadata accessor for ProductEditorsChoiceCollectionViewCell, &unk_79C010);
        v16 = &qword_941648;
        v17 = &unk_79C0D0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.todayCard(_:) || v13 == enum case for Shelf.ContentType.miniTodayCard(_:))
      {
        v14 = type metadata accessor for BaseTodayCardCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayCardCollectionViewCell;
        sub_76CBC(&qword_941188, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_78FDF4);
        sub_76CBC(&qword_941190, type metadata accessor for BaseTodayCardCollectionViewCell, &unk_78FC98);
        v16 = &qword_941198;
        v17 = &unk_78FE24;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialLink(_:))
      {
        v14 = type metadata accessor for LinkCollectionViewCell(0);
        v15 = type metadata accessor for LinkCollectionViewCell;
        sub_76CBC(&qword_9414E0, type metadata accessor for LinkCollectionViewCell, &unk_796F0C);
        sub_76CBC(&qword_9414E8, type metadata accessor for LinkCollectionViewCell, &unk_79BC50);
        v16 = &qword_9414F0;
        v17 = &unk_796F3C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.quote(_:))
      {
        v14 = type metadata accessor for QuoteCollectionViewCell(0);
        v15 = type metadata accessor for QuoteCollectionViewCell;
        sub_76CBC(&qword_941308, type metadata accessor for QuoteCollectionViewCell, &unk_796424);
        sub_76CBC(&unk_940F20, type metadata accessor for QuoteCollectionViewCell, &unk_780B28);
        v16 = &qword_941310;
        v17 = &unk_796454;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.horizontalRule(_:))
      {
        v14 = type metadata accessor for HorizontalRuleCollectionViewCell(0);
        v15 = type metadata accessor for HorizontalRuleCollectionViewCell;
        sub_76CBC(&qword_941598, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_79741C);
        sub_76CBC(&qword_9415A0, type metadata accessor for HorizontalRuleCollectionViewCell, &unk_7950A0);
        v16 = &qword_9415A8;
        v17 = &unk_79744C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedArtwork(_:))
      {
        v14 = type metadata accessor for FramedArtworkCollectionViewCell(0);
        v15 = type metadata accessor for FramedArtworkCollectionViewCell;
        sub_76CBC(&qword_941610, type metadata accessor for FramedArtworkCollectionViewCell, &unk_7976C4);
        sub_76CBC(&unk_953950, type metadata accessor for FramedArtworkCollectionViewCell, &unk_79B978);
        v16 = &qword_941618;
        v17 = &unk_7AAB28;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshots(_:))
      {
        v14 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotShelfCollectionViewCell;
        sub_76CBC(&qword_941290, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_7962D4);
        sub_76CBC(&qword_941298, type metadata accessor for ScreenshotShelfCollectionViewCell, &unk_78DF20);
        v16 = &unk_9412A0;
        v17 = &unk_796304;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMedia(_:))
      {
        v14 = type metadata accessor for ProductMediaCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaCollectionViewCell;
        sub_76CBC(&qword_941390, type metadata accessor for ProductMediaCollectionViewCell, &unk_7967C0);
        sub_76CBC(&qword_941398, type metadata accessor for ProductMediaCollectionViewCell, "13\r");
        v16 = &qword_9413A0;
        v17 = &unk_785648;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v14 = type metadata accessor for ProductMediaItemCollectionViewCell(0);
        v15 = type metadata accessor for ProductMediaItemCollectionViewCell;
        sub_76CBC(&qword_941378, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_77F4A8);
        sub_76CBC(&qword_941380, type metadata accessor for ProductMediaItemCollectionViewCell, &unk_782358);
        v16 = &unk_941388;
        v17 = &unk_77F4D8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appShowcase(_:))
      {
        v14 = type metadata accessor for AppShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for AppShowcaseCollectionViewCell;
        sub_76CBC(&qword_941728, type metadata accessor for AppShowcaseCollectionViewCell, &unk_797E04);
        sub_76CBC(&qword_941730, type metadata accessor for AppShowcaseCollectionViewCell, &unk_784E48);
        v16 = &qword_941738;
        v17 = &unk_797E34;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:))
      {
        v14 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for InAppPurchaseShowcaseCollectionViewCell;
        sub_76CBC(&qword_941568, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_7972CC);
        sub_76CBC(&qword_941570, type metadata accessor for InAppPurchaseShowcaseCollectionViewCell, &unk_788DE0);
        v16 = &unk_941578;
        v17 = &unk_7972FC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appTrailerLockup(_:))
      {
        v14 = type metadata accessor for AppTrailerLockupCollectionViewCell(0);
        v15 = type metadata accessor for AppTrailerLockupCollectionViewCell;
        sub_76CBC(&qword_941710, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_796E04);
        sub_76CBC(&qword_941718, type metadata accessor for AppTrailerLockupCollectionViewCell, &unk_7B0B48);
        v16 = &unk_941720;
        v17 = &unk_796E34;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productPageLink(_:))
      {
        v14 = type metadata accessor for ProductPageLinkCollectionViewCell(0);
        v15 = type metadata accessor for ProductPageLinkCollectionViewCell;
        sub_76CBC(&qword_941368, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_7965FC);
        sub_76CBC(&unk_95D8E0, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_7A8C58);
        v16 = &qword_941370;
        v17 = &unk_79662C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productRatings(_:))
      {
        v14 = type metadata accessor for ProductRatingsCollectionViewCell(0);
        v15 = type metadata accessor for ProductRatingsCollectionViewCell;
        sub_76CBC(&qword_941358, type metadata accessor for ProductRatingsCollectionViewCell, &unk_7A0218);
        sub_76CBC(&qword_959340, type metadata accessor for ProductRatingsCollectionViewCell, &unk_7A2390);
        v16 = &qword_941360;
        v17 = &unk_7A0248;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReview(_:))
      {
        v14 = type metadata accessor for GenericProductReviewCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewCollectionViewCell;
        sub_76CBC(&qword_941340, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_78F0F4);
        sub_76CBC(&qword_941348, type metadata accessor for GenericProductReviewCollectionViewCell, &unk_784560);
        v16 = &unk_941350;
        v17 = &unk_78F124;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productReviewAction(_:))
      {
        v14 = type metadata accessor for GenericProductReviewActionCollectionViewCell(0);
        v15 = type metadata accessor for GenericProductReviewActionCollectionViewCell;
        sub_76CBC(&qword_941328, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_794798);
        sub_76CBC(&qword_941330, type metadata accessor for GenericProductReviewActionCollectionViewCell, &unk_799528);
        v16 = &unk_941338;
        v17 = &unk_7947C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.linkableText(_:))
      {
        v14 = type metadata accessor for LinkableTextCollectionViewCell(0);
        v15 = type metadata accessor for LinkableTextCollectionViewCell;
        sub_76CBC(&qword_9412C0, type metadata accessor for LinkableTextCollectionViewCell, &unk_796674);
        sub_76CBC(&qword_9412C8, type metadata accessor for LinkableTextCollectionViewCell, &unk_78DE68);
        v16 = &qword_9412D0;
        v17 = &unk_7935F8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.framedVideo(_:))
      {
        v14 = type metadata accessor for FramedVideoCollectionViewCell(0);
        v15 = type metadata accessor for FramedVideoCollectionViewCell;
        sub_76CBC(&qword_941600, type metadata accessor for FramedVideoCollectionViewCell, &unk_79763C);
        sub_76CBC(&unk_93EBF0, type metadata accessor for FramedVideoCollectionViewCell, &unk_77DB38);
        v16 = &qword_941608;
        v17 = &unk_782728;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productDescription(_:))
      {
        v14 = type metadata accessor for ProductDescriptionCollectionViewCell(0);
        v15 = type metadata accessor for ProductDescriptionCollectionViewCell;
        sub_76CBC(&qword_9413A8, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_796718);
        sub_76CBC(&unk_960E60, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_7AC8E0);
        v16 = &unk_9413B0;
        v17 = &unk_796748;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.banner(_:))
      {
        v14 = type metadata accessor for BannerCollectionViewCell(0);
        v15 = type metadata accessor for BannerCollectionViewCell;
        sub_76CBC(&qword_9416B8, type metadata accessor for BannerCollectionViewCell, &unk_797B14);
        sub_76CBC(&qword_9416C0, type metadata accessor for BannerCollectionViewCell, &unk_7AB5D0);
        v16 = &unk_9416C8;
        v17 = &unk_797B44;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        v14 = type metadata accessor for ScreenshotsLockupCollectionViewCell(0);
        v15 = type metadata accessor for ScreenshotsLockupCollectionViewCell;
        sub_76CBC(&qword_941278, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_796E04);
        sub_76CBC(&qword_941280, type metadata accessor for ScreenshotsLockupCollectionViewCell, &unk_7B0B48);
        v16 = &unk_941288;
        v17 = &unk_796E34;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.roundedButton(_:))
      {
        v14 = type metadata accessor for RoundedButtonCollectionViewCell(0);
        v15 = type metadata accessor for RoundedButtonCollectionViewCell;
        sub_76CBC(&qword_9412A8, type metadata accessor for RoundedButtonCollectionViewCell, &unk_79637C);
        sub_76CBC(&qword_9412B0, type metadata accessor for RoundedButtonCollectionViewCell, &unk_7A0690);
        v16 = &unk_9412B8;
        v17 = &unk_7963AC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.titledButtonStack(_:))
      {
        v14 = type metadata accessor for TitledButtonStackCollectionViewCell(0);
        v15 = type metadata accessor for TitledButtonStackCollectionViewCell;
        sub_76CBC(&qword_9411B0, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_795FA4);
        sub_76CBC(&qword_9411B8, type metadata accessor for TitledButtonStackCollectionViewCell, &unk_7838A8);
        v16 = &unk_9411C0;
        v17 = &unk_795FD4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        v14 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
        v15 = type metadata accessor for BaseTodayBrickCollectionViewCell;
        sub_76CBC(&qword_9411C8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A67EC);
        sub_76CBC(&qword_9411D0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_7A66C8);
        v16 = &qword_9411D8;
        v17 = &unk_7A67A4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:))
      {
        v14 = type metadata accessor for LargeHeroBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for LargeHeroBreakoutCollectionViewCell;
        sub_76CBC(&qword_941510, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_79705C);
        sub_76CBC(&qword_941518, type metadata accessor for LargeHeroBreakoutCollectionViewCell, &unk_7A9518);
        v16 = &qword_941520;
        v17 = &unk_79708C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.upsellBreakout(_:))
      {
        v14 = type metadata accessor for UpsellBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for UpsellBreakoutCollectionViewCell;
        sub_76CBC(&qword_941148, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_795DB0);
        sub_76CBC(&qword_941150, type metadata accessor for UpsellBreakoutCollectionViewCell, &unk_7ACA88);
        v16 = &unk_941158;
        v17 = &unk_795DE0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        v14 = type metadata accessor for SmallBreakoutCollectionViewCell(0);
        v15 = type metadata accessor for SmallBreakoutCollectionViewCell;
        sub_76CBC(&qword_941220, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_7961FC);
        sub_76CBC(&qword_95F360, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_7AA508);
        v16 = &qword_941228;
        v17 = &unk_79622C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        v14 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
        v15 = type metadata accessor for EditorialStoryCardCollectionViewCell;
        sub_76CBC(&qword_941650, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_7977CC);
        sub_76CBC(&qword_941658, type metadata accessor for EditorialStoryCardCollectionViewCell, &unk_793E34);
        v16 = &unk_941660;
        v17 = &unk_7977FC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
      {
        v14 = type metadata accessor for MixedMediaLockupCollectionViewCell(0);
        v15 = type metadata accessor for MixedMediaLockupCollectionViewCell;
        sub_76CBC(&qword_9414B0, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_796E04);
        sub_76CBC(&qword_9414B8, type metadata accessor for MixedMediaLockupCollectionViewCell, &unk_7B0B48);
        v16 = &unk_9414C0;
        v17 = &unk_796E34;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeFooter(_:))
      {
        v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeFooterCollectionViewCell;
        sub_76CBC(&qword_9416F8, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_797D5C);
        sub_76CBC(&qword_941700, type metadata accessor for ArcadeFooterCollectionViewCell, &unk_7844D8);
        v16 = &unk_941708;
        v17 = &unk_797D8C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.editorialQuote(_:))
      {
        v14 = type metadata accessor for EditorialQuoteCollectionViewCell(0);
        v15 = type metadata accessor for EditorialQuoteCollectionViewCell;
        sub_76CBC(&qword_941668, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_797874);
        sub_76CBC(&unk_95B140, type metadata accessor for EditorialQuoteCollectionViewCell, &unk_7A54B0);
        v16 = &qword_941670;
        v17 = &unk_7978A4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeShowcase(_:))
      {
        v14 = type metadata accessor for ArcadeShowcaseCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeShowcaseCollectionViewCell;
        sub_76CBC(&qword_9416E8, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_797C8C);
        sub_76CBC(&qword_93F740, type metadata accessor for ArcadeShowcaseCollectionViewCell, &unk_77E730);
        v16 = &qword_9416F0;
        v17 = &unk_797CBC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
      {
        v14 = type metadata accessor for GameCenterActivityFeedCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterActivityFeedCollectionViewCell;
        sub_76CBC(&qword_9415E8, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_795A48);
        sub_76CBC(&qword_9415F0, type metadata accessor for GameCenterActivityFeedCollectionViewCell, &unk_79AFB8);
        v16 = &unk_9415F8;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.arcadeDownloadPackCard(_:))
      {
        v14 = type metadata accessor for ArcadeDownloadPackCollectionViewCell(0);
        v15 = type metadata accessor for ArcadeDownloadPackCollectionViewCell;
        sub_76CBC(&qword_9410D8, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_795AC0);
        sub_76CBC(&qword_9410E0, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_7AE230);
        v16 = &qword_9410E8;
        v17 = &unk_795AF0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:))
      {
        v14 = type metadata accessor for GameCenterReengagementCollectionViewCell(0);
        v15 = type metadata accessor for GameCenterReengagementCollectionViewCell;
        sub_76CBC(&qword_9415C8, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_79756C);
        sub_76CBC(&unk_94F070, type metadata accessor for GameCenterReengagementCollectionViewCell, &unk_793800);
        v16 = &qword_9415D0;
        v17 = &unk_79759C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell;
        sub_76CBC(&qword_9411F8, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_7960AC);
        sub_76CBC(&qword_954B60, type metadata accessor for SmallGameCenterPlayerCollectionViewCell, &unk_79CDF0);
        v16 = &unk_941200;
        v17 = &unk_7960DC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
      {
        v14 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell(0);
        v15 = type metadata accessor for LargeGameCenterPlayerCollectionViewCell;
        sub_76CBC(&qword_941528, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_797104);
        sub_76CBC(&qword_941530, type metadata accessor for LargeGameCenterPlayerCollectionViewCell, &unk_78EB50);
        v16 = &unk_941538;
        v17 = &unk_797134;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:))
      {
        v14 = type metadata accessor for AchievementSummaryCollectionViewCell(0);
        v15 = type metadata accessor for AchievementSummaryCollectionViewCell;
        sub_76CBC(&qword_9415D8, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_797FB0);
        sub_76CBC(&qword_963E30, type metadata accessor for AchievementSummaryCollectionViewCell, &unk_7B0290);
        v16 = &qword_9415E0;
        v17 = &unk_798008;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.posterLockup(_:))
      {
        v14 = type metadata accessor for PosterLockupCollectionViewCell(0);
        v15 = type metadata accessor for PosterLockupCollectionViewCell;
        sub_76CBC(&qword_941470, type metadata accessor for PosterLockupCollectionViewCell, &unk_796CB8);
        sub_76CBC(&qword_941478, type metadata accessor for PosterLockupCollectionViewCell, &unk_78DADC);
        v16 = &qword_941480;
        v17 = &unk_796CE8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v14 = type metadata accessor for SmallContactCardCollectionViewCell(0);
        v15 = type metadata accessor for SmallContactCardCollectionViewCell;
        sub_76CBC(&qword_941208, type metadata accessor for SmallContactCardCollectionViewCell, &unk_796154);
        sub_76CBC(&qword_941210, type metadata accessor for SmallContactCardCollectionViewCell, &unk_7A28C8);
        v16 = &qword_941218;
        v17 = &unk_796184;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        v14 = type metadata accessor for InformationRibbonCollectionViewCell(0);
        v15 = type metadata accessor for InformationRibbonCollectionViewCell;
        sub_76CBC(&qword_941540, type metadata accessor for InformationRibbonCollectionViewCell, &unk_79717C);
        sub_76CBC(&qword_941548, type metadata accessor for InformationRibbonCollectionViewCell, &unk_788168);
        v16 = &qword_9400A8;
        v17 = &unk_7971AC;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.preorderDisclaimer(_:))
      {
        v14 = type metadata accessor for PreorderDisclaimerCollectionViewCell(0);
        v15 = type metadata accessor for PreorderDisclaimerCollectionViewCell;
        sub_76CBC(&qword_941448, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_796C10);
        sub_76CBC(&qword_95D970, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_7A8E18);
        v16 = &qword_941450;
        v17 = &unk_796C40;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyHeader(_:))
      {
        v14 = type metadata accessor for PrivacyHeaderCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyHeaderCollectionViewCell;
        sub_76CBC(&qword_9413F8, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_796970);
        sub_76CBC(&qword_958090, type metadata accessor for PrivacyHeaderCollectionViewCell, "i]\r");
        v16 = &qword_941400;
        v17 = &unk_7969A0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyFooter(_:))
      {
        v14 = type metadata accessor for PrivacyFooterCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyFooterCollectionViewCell;
        sub_76CBC(&qword_941408, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_796A18);
        sub_76CBC(&qword_94E4F0, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_792838);
        v16 = &qword_941410;
        v17 = &unk_796A48;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v14 = type metadata accessor for PrivacyTypeCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyTypeCollectionViewCell;
        sub_76CBC(&qword_9413E8, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_7968C8);
        sub_76CBC(&qword_95B480, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_7A59D8);
        v16 = &qword_9413F0;
        v17 = &unk_7968F8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyCategory(_:))
      {
        v14 = type metadata accessor for PrivacyCategoryCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyCategoryCollectionViewCell;
        sub_76CBC(&qword_941430, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_796B68);
        sub_76CBC(&qword_941438, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_793228);
        v16 = &qword_941440;
        v17 = &unk_796B98;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.privacyDefinition(_:))
      {
        v14 = type metadata accessor for PrivacyDefinitionCollectionViewCell(0);
        v15 = type metadata accessor for PrivacyDefinitionCollectionViewCell;
        sub_76CBC(&qword_941418, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_796AC0);
        sub_76CBC(&qword_941420, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_78C3B0);
        v16 = &qword_941428;
        v17 = &unk_796AF0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.appPromotion(_:))
      {
        v14 = type metadata accessor for AppEventCollectionViewCell(0);
        v15 = type metadata accessor for AppEventCollectionViewCell;
        sub_76CBC(&qword_941740, type metadata accessor for AppEventCollectionViewCell, &unk_784718);
        sub_76CBC(&qword_944D80, type metadata accessor for AppEventCollectionViewCell, &unk_7846CC);
        v16 = &qword_941748;
        v17 = &unk_784748;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResult(_:))
      {
        v14 = type metadata accessor for SearchResultCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultCollectionViewCell;
        sub_76CBC(&qword_941248, type metadata accessor for SearchResultCollectionViewCell, &unk_796274);
        sub_76CBC(&qword_941250, type metadata accessor for SearchResultCollectionViewCell, &unk_791600);
        v16 = &unk_941258;
        v17 = &unk_79183C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
      {
        v14 = type metadata accessor for SearchResultsContextCardCollectionViewCell(0);
        v15 = type metadata accessor for SearchResultsContextCardCollectionViewCell;
        sub_76CBC(&qword_941230, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_7A3C40);
        sub_76CBC(&qword_941238, type metadata accessor for SearchResultsContextCardCollectionViewCell, &unk_7A3BAC);
        v16 = &qword_941240;
        v17 = &unk_7A3BF8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.pageTabs(_:))
      {
        v14 = type metadata accessor for SegmentedControlCollectionViewCell(0);
        v15 = type metadata accessor for SegmentedControlCollectionViewCell;
        sub_76CBC(&qword_941118, type metadata accessor for SegmentedControlCollectionViewCell, &unk_7912B4);
        sub_76CBC(&qword_941120, type metadata accessor for SegmentedControlCollectionViewCell, &unk_791220);
        v16 = &qword_941128;
        v17 = &unk_79126C;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.heroCarousel(_:))
      {
        v14 = type metadata accessor for HeroCarouselCollectionViewCell(0);
        v15 = type metadata accessor for HeroCarouselCollectionViewCell;
        sub_76CBC(&qword_9415B0, type metadata accessor for HeroCarouselCollectionViewCell, &unk_7974C4);
        sub_76CBC(&qword_9415B8, type metadata accessor for HeroCarouselCollectionViewCell, &unk_79F0B8);
        v16 = &unk_9415C0;
        v17 = &unk_7974F4;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.uber(_:))
      {
        v14 = type metadata accessor for UberCollectionViewCell(0);
        v15 = type metadata accessor for UberCollectionViewCell;
        sub_76CBC(&qword_941178, type metadata accessor for UberCollectionViewCell, &unk_795E58);
        sub_76CBC(&unk_95EFA0, type metadata accessor for UberCollectionViewCell, &unk_7A9EE8);
        v16 = &qword_941180;
        v17 = &unk_782008;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.productBadge(_:))
      {
        v14 = type metadata accessor for BadgeCollectionViewCell(0);
        v15 = type metadata accessor for BadgeCollectionViewCell;
        sub_76CBC(&qword_9413D0, type metadata accessor for BadgeCollectionViewCell, &unk_7905D0);
        sub_76CBC(&qword_9413D8, type metadata accessor for BadgeCollectionViewCell, &unk_7ABE48);
        v16 = &qword_9413E0;
        v17 = &unk_790600;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.mediaPageHeader(_:))
      {
        v14 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell(0);
        v15 = type metadata accessor for MediaPageHeaderCollectionViewHostingCell;
        sub_76CBC(&qword_941090, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_795A48);
        sub_76CBC(&qword_941098, type metadata accessor for MediaPageHeaderCollectionViewHostingCell, &unk_79AFB8);
        v16 = &unk_9410A0;
        goto LABEL_31;
      }

      if (v13 == enum case for Shelf.ContentType.tagBrick(_:))
      {
        goto LABEL_44;
      }

      if (v13 == enum case for Shelf.ContentType.placeholder(_:))
      {
        v14 = type metadata accessor for PlaceholderCollectionViewCell(0);
        v15 = type metadata accessor for PlaceholderCollectionViewCell;
        sub_76CBC(&qword_941488, type metadata accessor for PlaceholderCollectionViewCell, &unk_7AF698);
        sub_76CBC(&qword_941490, type metadata accessor for PlaceholderCollectionViewCell, &unk_79B588);
        v16 = &unk_941498;
        v17 = &unk_7AF6C8;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.prefetchMarker(_:))
      {
        v14 = type metadata accessor for PrefetchMarkerCollectionViewCell(0);
        v15 = type metadata accessor for PrefetchMarkerCollectionViewCell;
        sub_76CBC(&qword_941458, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_7A87F8);
        sub_76CBC(&qword_941460, type metadata accessor for PrefetchMarkerCollectionViewCell, &unk_7A8764);
        v16 = &unk_941468;
        v17 = &unk_7A87B0;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.unifiedMessage(_:))
      {
        v14 = type metadata accessor for UnifiedMessageCollectionViewCell(0);
        v15 = type metadata accessor for UnifiedMessageCollectionViewCell;
        sub_76CBC(&qword_941160, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_795E28);
        sub_76CBC(&qword_941168, type metadata accessor for UnifiedMessageCollectionViewCell, &unk_78C698);
        v16 = &unk_941170;
        v17 = &unk_78C650;
        goto LABEL_26;
      }

      if (v13 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
      {
        sub_75DA70();
        v23 = v27;
        sub_764A00();
        sub_76CBC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
        v24 = v29;
        v25 = sub_76A520();
        v26 = *(v28 + 8);
        v26(v23, v24);
        v26(v4, v24);
        if ((v25 & 1) == 0)
        {
          v14 = type metadata accessor for SwiftUIProductPageCardViewHostingCell(0);
          v15 = type metadata accessor for SwiftUIProductPageCardViewHostingCell;
          sub_76CBC(&qword_9410C0, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_795A48);
          sub_76CBC(&qword_9410C8, type metadata accessor for SwiftUIProductPageCardViewHostingCell, &unk_79AFB8);
          v16 = &unk_9410D0;
          goto LABEL_31;
        }
      }

      else if (v13 != enum case for Shelf.ContentType.accessibilityParagraph(_:))
      {
        (*(v6 + 8))(v8, v5);
        return 0;
      }
    }

    v14 = type metadata accessor for SwiftUIViewHostingCell(0);
    v15 = type metadata accessor for SwiftUIViewHostingCell;
    sub_76CBC(&qword_9410A8, type metadata accessor for SwiftUIViewHostingCell, &unk_795A48);
    sub_76CBC(&qword_9410B0, type metadata accessor for SwiftUIViewHostingCell, &unk_79AFB8);
    v16 = &unk_9410B8;
LABEL_31:
    v17 = &unk_795A78;
    goto LABEL_26;
  }

  v14 = type metadata accessor for SmallLockupCollectionViewCell(0);
  v15 = type metadata accessor for SmallLockupCollectionViewCell;
  sub_76CBC(&qword_9411E0, type metadata accessor for SmallLockupCollectionViewCell, &unk_79604C);
  sub_76CBC(&qword_9411E8, type metadata accessor for SmallLockupCollectionViewCell, &unk_7AB188);
  v16 = &qword_9411F0;
  v17 = &unk_786C08;
LABEL_26:
  sub_76CBC(v16, v15, v17);
  return v14;
}

uint64_t sub_76798(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v2 = sub_75DAB0();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 != enum case for Shelf.ContentType.todayCard(_:))
  {
    if (v13 != enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      if (v13 == enum case for Shelf.ContentType.smallStoryCard(_:))
      {
        sub_765B70();
        sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
        if ((sub_75C770() & 1) == 0)
        {
          goto LABEL_14;
        }

        v17 = sub_A2C28();
      }

      else
      {
        if (v13 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          goto LABEL_14;
        }

        v17 = sub_3A670C();
      }

      v16 = v17;
      goto LABEL_17;
    }

    sub_765B70();
    sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
    if (sub_75C770())
    {
      sub_75C750();
      v16 = sub_283ECC(v22, 4);

      goto LABEL_17;
    }

LABEL_14:
    sub_75C720();
    v16 = sub_72F3C();
    (*(v20 + 8))(v4, v21);
    goto LABEL_17;
  }

  sub_765B70();
  sub_76CBC(&qword_94CAB0, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  if ((sub_75C770() & 1) == 0)
  {
    goto LABEL_14;
  }

  type metadata accessor for TodayCardGridTracker();
  sub_768860();
  if (v22)
  {

    sub_352874();
    v15 = v14;
  }

  else
  {
    v15 = 7;
  }

  sub_75C750();
  v16 = sub_283ECC(v22, v15);

LABEL_17:
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_76CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_76D04(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell(uint64_t a1)
{
  result = qword_9417C0;
  if (!qword_9417C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_770E4(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_772DC(a1, a9 + *(v20 + 64));
  sub_10914(a2, a9);
  sub_10914(a3, a9 + 40);
  sub_10914(a4, a9 + 80);
  sub_10914(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_10914(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_10914(a10, a9 + 280);
  v23 = *(a11 + 16);
  *(a9 + 320) = *a11;
  *(a9 + 336) = v23;
  *(a9 + 352) = *(a11 + 32);
  v24 = *(a12 + 16);
  *(a9 + 360) = *a12;
  *(a9 + 376) = v24;
  *(a9 + 392) = *(a12 + 32);
  *(a9 + 432) = *(a13 + 32);
  v25 = *(a13 + 16);
  *(a9 + 400) = *a13;
  *(a9 + 416) = v25;
  *(a9 + 472) = *(a14 + 32);
  result = *(a14 + 16);
  *(a9 + 440) = *a14;
  *(a9 + 456) = result;
  return result;
}

uint64_t sub_772DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_10914(a1, (a9 + 4));
  sub_10914(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_BD88(&qword_940AD0, &unk_78F910);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_10914(a7, a9 + v27[12]);
  sub_10914(a8, a9 + v27[13]);
  sub_10914(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_10914(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_10914(a19, v31);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_BEB8((v1 + 32));

  return sub_10914(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_BEB8((v1 + 72));

  return sub_10914(a1, v1 + 72);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0, &unk_78F910);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_BEB8((v1 + v3));

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_7830C(v3, a1);
}

uint64_t sub_7830C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_7DC74(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v294 = a2;
  v11 = sub_7664F0();
  v292 = *(v11 - 8);
  v293 = v11;
  __chkstk_darwin(v11);
  v291 = &v277 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75E870();
  v289 = *(v13 - 8);
  v290 = v13;
  __chkstk_darwin(v13);
  v306 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_75E850();
  v338 = *(v314 - 8);
  __chkstk_darwin(v314);
  v280 = &v277 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v296 = &v277 - v17;
  __chkstk_darwin(v18);
  v278 = &v277 - v19;
  __chkstk_darwin(v20);
  v304 = &v277 - v21;
  __chkstk_darwin(v22);
  v279 = &v277 - v23;
  __chkstk_darwin(v24);
  v295 = &v277 - v25;
  v337 = sub_75E800();
  v344 = *(v337 - 8);
  __chkstk_darwin(v337);
  v317 = &v277 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = sub_75E820();
  v343 = *(v341 - 8);
  __chkstk_darwin(v341);
  v340 = &v277 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_75E840();
  v346 = *(v319 - 8);
  __chkstk_darwin(v319);
  *&v345 = &v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_76A920();
  v30 = *(v29 - 8);
  *&v31 = __chkstk_darwin(v29).n128_u64[0];
  v33 = &v277 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a1 traitCollection];
  v307 = sub_7699E0();

  v35 = v347 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v36 = *(v35 + 7);
  sub_B170(v35 + 4, v36);
  sub_33964(v36);
  sub_766700();
  v38 = v37;
  v39 = *(v30 + 8);
  v39(v33, v29);
  v40 = *(v35 + 12);
  sub_B170(v35 + 9, v40);
  sub_33964(v40);
  sub_766700();
  v42 = v41;
  v309 = v33;
  v310 = v30 + 8;
  v311 = v29;
  v308 = v39;
  v39(v33, v29);
  v43 = v35;
  v44 = *(v35 + 1);
  v45 = v38 + *v35;
  v288 = v42;
  v300 = a3;
  v46 = a3;
  v47 = a4;
  v48 = a4;
  v49 = a5;
  v50 = a5;
  v51 = a6;
  v52 = sub_705B8(v46, v48, v50, a6, v45, v44);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1ED18((v347 + 30), v361, &unk_943B10, &qword_77E080);
  v339 = a1;
  v305 = v58;
  if (v362)
  {
    sub_B170(v361, v362);
    sub_7665B0();
    v297 = v59;
    v61 = v60;
    sub_BEB8(v361);
  }

  else
  {
    sub_10A2C(v361, &unk_943B10, &qword_77E080);
    v297 = 0.0;
    v61 = 0;
  }

  v281 = v61;
  sub_1ED18((v347 + 30), v361, &unk_943B10, &qword_77E080);
  v62 = v362;
  sub_10A2C(v361, &unk_943B10, &qword_77E080);
  v298 = v51;
  v299 = v38;
  v301 = v47;
  v302 = v49;
  if (v62)
  {
    v63 = &v35[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48)];
    v64 = *(v63 + 3);
    sub_B170(v63, v64);
    v65 = v309;
    sub_33964(v64);
    v66 = v339;
    sub_766700();
    v68 = v67;
    v308(v65, v311);
  }

  else
  {
    v68 = 0.0;
    v66 = v339;
  }

  v69 = [v66 traitCollection];
  v70 = sub_7699F0();

  v369.origin.x = v52;
  v369.origin.y = v54;
  v369.size.width = v56;
  v71 = v305;
  v369.size.height = v305;
  MinX = CGRectGetMinX(v369);
  v73 = v297;
  v74 = v68 + v297 + MinX;
  v370.origin.x = v52;
  v370.origin.y = v54;
  v370.size.width = v56;
  v370.size.height = v71;
  Width = CGRectGetWidth(v370);
  if (v307)
  {
    v76 = Width - v73 - v68;
  }

  else
  {
    v76 = Width;
  }

  if ((v307 & 1 & v70) != 0)
  {
    v77 = v74;
  }

  else
  {
    v77 = MinX;
  }

  v284 = v77;
  v371.origin.x = v52;
  v371.origin.y = v54;
  v371.size.width = v56;
  v371.size.height = v71;
  MinY = CGRectGetMinY(v371);
  v286 = v54;
  v287 = v52;
  v372.origin.x = v52;
  v372.origin.y = v54;
  v285 = v56;
  v372.size.width = v56;
  v372.size.height = v71;
  Height = CGRectGetHeight(v372);
  v79 = v347;
  sub_B170(v347, v347[3]);
  v80 = *(v35 + 15);
  sub_766580();
  v81 = v79[13];
  v342 = (v79 + 10);
  sub_B170(v79 + 10, v81);
  sub_7665A0();
  v83 = v82;
  v85 = v84;
  v86 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v87 = v43;
  v88 = &v43[*(v86 + 36)];
  *&v358 = v66;
  v89 = sub_BD88(&qword_940AD0, &unk_78F910);
  v336 = v88;
  sub_7592B0();
  *&v358 = v361[0];
  sub_766720();
  v91 = v83 - v85 + v90;
  v92 = (v79 + 15);
  sub_B170(v79 + 15, v79[18]);
  sub_7665A0();
  v94 = v93;
  v96 = v95;
  v320 = v86;
  v321 = v87;
  *&v358 = v66;
  v312 = v89;
  sub_7592B0();
  *&v358 = v361[0];
  sub_766720();
  v98 = v94 - v96 + v97;
  if (v98 >= v91)
  {
    sub_134D8((v79 + 15), &v358);
    v92 = v342;
  }

  else
  {
    sub_134D8(v342, &v358);
  }

  v99 = v338;
  v100 = v346;
  sub_134D8(v92, &v355);
  v101 = v339;
  *&v352 = v339;
  sub_7592B0();
  v102 = v361[0];
  *&v352 = v101;
  sub_7592B0();
  v103 = v361[0];
  if (v98 >= v91)
  {
    v104 = v361[0];
  }

  else
  {
    v104 = v102;
  }

  *(&v353 + 1) = &type metadata for CGFloat;
  v354 = &protocol witness table for CGFloat;
  *&v352 = v104;
  if (v98 >= v91)
  {
    v103 = v102;
  }

  *(&v350 + 1) = &type metadata for CGFloat;
  v351 = &protocol witness table for CGFloat;
  *&v349 = v103;
  sub_10914(&v358, v361);
  sub_134D8(&v352, &v364);
  sub_10914(&v355, v365);
  sub_10914(&v349, v367);
  sub_BEB8(&v352);
  v105 = v347;
  sub_B170(v347 + 25, v347[28]);
  sub_7665B0();
  v107 = v106;
  sub_BD88(&qword_9417D8, &unk_780EB0);
  v316 = *(v99 + 72);
  v108 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v282 = 2 * v316;
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_77DC20;
  v313 = v108;
  v342 = v109;
  v303 = v109 + v108;
  *(&v359 + 1) = &type metadata for CGFloat;
  v360 = &protocol witness table for CGFloat;
  *&v358 = v80;
  v357 = 0;
  v355 = 0u;
  v356 = 0u;
  v322 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v335 = *(*&v100 + 104);
  v336 = *&v100 + 104;
  v335(*&v345);
  v334 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v110 = v343;
  v332 = *(v343 + 104);
  v333 = v343 + 104;
  v111 = v340;
  v332(v340);
  v112 = sub_BD88(&qword_9417E0, &unk_786F20);
  v113 = v344;
  v114 = *(v344 + 72);
  v329 = *(v344 + 80);
  v330 = v112;
  v331 = (v329 + 32) & ~v329;
  v328 = v331 + v114;
  v115 = swift_allocObject();
  v327 = xmmword_77B6D0;
  *(v115 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  *&v352 = v115;
  v326 = sub_7DDB0(&qword_9417E8, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v325 = sub_BD88(&qword_9417F0, &unk_780EC0);
  v324 = sub_7DCC8();
  v116 = v317;
  v117 = v337;
  sub_76A5A0();
  v118 = v345;
  sub_75E830();
  v315 = *(v113 + 8);
  v315(v116, v117);
  v119 = *(v110 + 8);
  v343 = v110 + 8;
  v318 = v119;
  v119(v111, v341);
  v120 = *(*&v346 + 8);
  *&v346 += 8;
  v323 = v120;
  v121 = v319;
  v120(*&v118, v319);
  sub_10A2C(&v355, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(&v358);
  v122 = v105[8];
  v123 = v105[9];
  v124 = sub_B170(v105 + 5, v122);
  *(&v359 + 1) = v122;
  v360 = *(v123 + 8);
  v125 = sub_B1B4(&v358);
  (*(*(v122 - 8) + 16))(v125, v124, v122);
  v126 = v116;
  v344 = v113 + 8;
  *&v352 = v339;
  sub_7592B0();
  v127 = *&v355;
  sub_B170(v105 + 5, v105[8]);
  sub_7669E0();
  *(&v356 + 1) = &type metadata for CGFloat;
  v357 = &protocol witness table for CGFloat;
  *&v355 = v127 + v128;
  v354 = 0;
  v352 = 0u;
  v353 = 0u;
  v129 = v345;
  v130 = v121;
  (v335)(*&v345, v322, v121);
  v131 = v340;
  v132 = v341;
  (v332)(v340, v334, v341);
  v133 = swift_allocObject();
  *(v133 + 16) = v327;
  sub_75E7D0();
  *&v349 = v133;
  sub_76A5A0();
  v134 = v131;
  sub_75E830();
  v135 = v315;
  v315(v126, v117);
  v136 = v132;
  v318(v134, v132);
  v323(*&v129, v130);
  sub_10A2C(&v352, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(&v355);
  sub_BEB8(&v358);
  v137 = v362;
  v138 = v363;
  v139 = sub_B170(v361, v362);
  *(&v359 + 1) = v137;
  v360 = *(v138 + 8);
  v140 = sub_B1B4(&v358);
  (*(*(v137 - 8) + 16))(v140, v139, v137);
  v357 = 0;
  v355 = 0u;
  v356 = 0u;
  v141 = v130;
  (v335)(*&v129, v322, v130);
  v142 = v340;
  (v332)(v340, v334, v136);
  v143 = swift_allocObject();
  *(v143 + 16) = v327;
  sub_75E7D0();
  *&v352 = v143;
  v144 = v337;
  sub_76A5A0();
  sub_75E830();
  v145 = v144;
  v146 = v136;
  v135(v126, v145);
  v147 = v318;
  v318(v142, v136);
  v148 = v147;
  v149 = v141;
  v323(*&v129, v141);
  sub_10A2C(&v355, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(&v358);
  sub_1ED18((v347 + 20), &v355, &qword_9417D0, &unk_780EA0);
  if (*(&v356 + 1))
  {
    sub_10914(&v355, &v358);
    v150 = *(&v359 + 1);
    v151 = v360;
    v152 = sub_B170(&v358, *(&v359 + 1));
    *(&v356 + 1) = v150;
    v357 = v151[1];
    v153 = sub_B1B4(&v355);
    (*(*(v150 - 8) + 16))(v153, v152, v150);
    *&v349 = v339;
    *(&v353 + 1) = &type metadata for CGFloat;
    v354 = &protocol witness table for CGFloat;
    sub_7592B0();
    v351 = 0;
    v349 = 0u;
    v350 = 0u;
    v154 = v129;
    (v335)(*&v129, v322, v149);
    v155 = v340;
    (v332)(v340, v334, v146);
    v156 = swift_allocObject();
    *(v156 + 16) = v327;
    sub_75E7D0();
    v348 = v156;
    v157 = v317;
    v158 = v337;
    sub_76A5A0();
    sub_75E830();
    v315(v157, v158);
    v148(v155, v146);
    v323(*&v154, v149);
    sub_10A2C(&v349, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v352);
    sub_BEB8(&v355);
    v159 = v342;
    v161 = *(v342 + 2);
    v160 = *(v342 + 3);
    v162 = v155;
    if (v161 >= v160 >> 1)
    {
      v159 = sub_7C8A8((v160 > 1), v161 + 1, 1, v342, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v164 = v313;
    v163 = v314;
    *(v159 + 2) = v161 + 1;
    v342 = v159;
    (*(v338 + 32))(v159 + v164 + v161 * v316, v295, v163);
    sub_BEB8(&v358);
  }

  else
  {
    sub_10A2C(&v355, &qword_9417D0, &unk_780EA0);
    v162 = v340;
  }

  sub_B170(v347 + 25, v347[28]);
  if (sub_766540())
  {
    v165 = v345;
    v166 = v342;
  }

  else
  {
    v167 = &v321[*(v320 + 52)];
    v168 = *(v167 + 3);
    sub_B170(v167, v168);
    v169 = v309;
    sub_33964(v168);
    sub_766700();
    v171 = v170;
    v172 = v317;
    v308(v169, v311);
    *(&v359 + 1) = &type metadata for CGFloat;
    v360 = &protocol witness table for CGFloat;
    *&v358 = v107 + v171;
    v357 = 0;
    v355 = 0u;
    v356 = 0u;
    v173 = v345;
    v174 = v319;
    (v335)(*&v345, v322, v319);
    v175 = v341;
    (v332)(v162, v334, v341);
    v176 = swift_allocObject();
    *(v176 + 16) = v327;
    sub_75E7D0();
    *&v352 = v176;
    v177 = v337;
    sub_76A5A0();
    v178 = v279;
    sub_75E830();
    v315(v172, v177);
    v165 = v173;
    v318(v162, v175);
    v323(*&v173, v174);
    sub_10A2C(&v355, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v358);
    v166 = v342;
    v180 = *(v342 + 2);
    v179 = *(v342 + 3);
    if (v180 >= v179 >> 1)
    {
      v166 = sub_7C8A8((v179 > 1), v180 + 1, 1, v342, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v181 = v338;
    *(v166 + 2) = v180 + 1;
    (*(v181 + 32))(v166 + v313 + v180 * v316, v178, v314);
  }

  v360 = 0;
  v358 = 0u;
  v359 = 0u;
  v182 = v165;
  v183 = v319;
  (v335)(*&v182, v322, v319);
  v184 = v340;
  v185 = v341;
  (v332)(v340, v334, v341);
  v186 = swift_allocObject();
  *(v186 + 16) = v327;
  sub_75E7D0();
  *&v355 = v186;
  v187 = v317;
  v188 = v337;
  sub_76A5A0();
  sub_75E830();
  v189 = v187;
  v190 = v345;
  v315(v189, v188);
  v318(v184, v185);
  v323(*&v190, v183);
  sub_10A2C(&v358, &unk_93F9C0, &qword_77EDB0);
  v192 = *(v166 + 2);
  v191 = *(v166 + 3);
  v193 = v166;
  if (v192 >= v191 >> 1)
  {
    v193 = sub_7C8A8((v191 > 1), v192 + 1, 1, v166, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
  }

  *(v193 + 2) = v192 + 1;
  v342 = v193;
  v194 = *(v338 + 32);
  v338 += 32;
  v194(v193 + v313 + v192 * v316, v304, v314);
  sub_1ED18((v347 + 30), &v355, &unk_943B10, &qword_77E080);
  v195 = v340;
  if (*(&v356 + 1))
  {
    sub_10914(&v355, &v358);
    sub_B170(v347 + 25, v347[28]);
    if (v307 & 1 | ((sub_766540() & 1) == 0))
    {
      sub_BEB8(&v358);
    }

    else
    {
      *(&v356 + 1) = &type metadata for CGFloat;
      v357 = &protocol witness table for CGFloat;
      *&v355 = v281;
      v354 = 0;
      v352 = 0u;
      v353 = 0u;
      v196 = v319;
      (v335)(*&v190, v322, v319);
      v197 = v341;
      (v332)(v195, v334, v341);
      v198 = swift_allocObject();
      *(v198 + 16) = v327;
      sub_75E7D0();
      *&v349 = v198;
      v199 = v317;
      v200 = v337;
      sub_76A5A0();
      v201 = v278;
      sub_75E830();
      v315(v199, v200);
      v318(v195, v197);
      v323(*&v190, v196);
      sub_10A2C(&v352, &unk_93F9C0, &qword_77EDB0);
      sub_BEB8(&v355);
      v203 = *(v342 + 2);
      v202 = *(v342 + 3);
      if (v203 >= v202 >> 1)
      {
        v342 = sub_7C8A8((v202 > 1), v203 + 1, 1, v342, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
      }

      sub_BEB8(&v358);
      v204 = v342;
      *(v342 + 2) = v203 + 1;
      v194(v204 + v313 + v203 * v316, v201, v314);
    }
  }

  else
  {
    sub_10A2C(&v355, &unk_943B10, &qword_77E080);
  }

  sub_1ED18((v347 + 40), &v355, &qword_9417D0, &unk_780EA0);
  if (*(&v356 + 1))
  {
    sub_10914(&v355, &v358);
    v205 = *(&v359 + 1);
    v206 = v360;
    v207 = sub_B170(&v358, *(&v359 + 1));
    *(&v356 + 1) = v205;
    v357 = v206[1];
    v208 = sub_B1B4(&v355);
    (*(*(v205 - 8) + 16))(v208, v207, v205);
    *&v349 = v339;
    *(&v353 + 1) = &type metadata for CGFloat;
    v354 = &protocol witness table for CGFloat;
    sub_7592B0();
    v351 = 0;
    v349 = 0u;
    v350 = 0u;
    v209 = v322;
    v210 = v319;
    (v335)(*&v190, v322, v319);
    v211 = v341;
    (v332)(v195, v334, v341);
    v212 = swift_allocObject();
    *(v212 + 16) = v327;
    sub_75E7D0();
    v348 = v212;
    v213 = v317;
    v214 = v337;
    sub_76A5A0();
    sub_75E830();
    v215 = v213;
    v190 = v345;
    v315(v215, v214);
    v318(v195, v211);
    v323(*&v190, v210);
    sub_10A2C(&v349, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v352);
    sub_BEB8(&v355);
    v216 = v342;
    v218 = *(v342 + 2);
    v217 = *(v342 + 3);
    if (v218 >= v217 >> 1)
    {
      v216 = sub_7C8A8((v217 > 1), v218 + 1, 1, v342, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    *(v216 + 2) = v218 + 1;
    v342 = v216;
    v194(v216 + v313 + v218 * v316, v296, v314);
    sub_BEB8(&v358);
  }

  else
  {
    sub_10A2C(&v355, &qword_9417D0, &unk_780EA0);
    v209 = v322;
  }

  sub_1ED18((v347 + 45), &v355, &qword_9417D0, &unk_780EA0);
  if (*(&v356 + 1))
  {
    v312 = v194;
    v219 = v319;
    v220 = v195;
    v221 = v317;
    v222 = v341;
    sub_10914(&v355, &v358);
    v223 = *(&v359 + 1);
    v224 = v360;
    v225 = sub_B170(&v358, *(&v359 + 1));
    *(&v356 + 1) = v223;
    v357 = v224[1];
    v226 = sub_B1B4(&v355);
    (*(*(v223 - 8) + 16))(v226, v225, v223);
    v354 = 0;
    v352 = 0u;
    v353 = 0u;
    (v335)(*&v190, v209, v219);
    (v332)(v220, v334, v222);
    v227 = swift_allocObject();
    *(v227 + 16) = v327;
    sub_75E7D0();
    *&v349 = v227;
    v228 = v337;
    sub_76A5A0();
    v229 = v280;
    sub_75E830();
    v315(v221, v228);
    v318(v220, v222);
    v323(*&v190, v219);
    sub_10A2C(&v352, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v355);
    v230 = v342;
    v232 = *(v342 + 2);
    v231 = *(v342 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_7C8A8((v231 > 1), v232 + 1, 1, v342, &qword_9417D8, &unk_780EB0, &type metadata accessor for _VerticalFlowLayout.Child);
    }

    v234 = v312;
    v233 = v313;
    *(v230 + 2) = v232 + 1;
    v234(v230 + v233 + v232 * v316, v229, v314);
    sub_BEB8(&v358);
  }

  else
  {
    sub_10A2C(&v355, &qword_9417D0, &unk_780EA0);
  }

  sub_75E810();
  v235 = v291;
  v237 = MinY;
  v236 = v284;
  sub_75E7C0();
  v238 = v347;
  sub_B170(v347 + 5, v347[8]);
  sub_7665A0();
  v344 = v239;
  v241 = v240;
  sub_B170(v238 + 5, v238[8]);
  sub_766520();
  v242 = CGRectGetMaxY(v373) - v241;
  v374.origin.x = v236;
  v374.origin.y = v237;
  v374.size.width = v76;
  v374.size.height = Height;
  v243 = CGRectGetMinX(v374);
  v375.origin.x = v236;
  v375.origin.y = v237;
  v375.size.width = v76;
  v375.size.height = Height;
  v244 = CGRectGetWidth(v375);
  sub_7664E0();
  v246 = v245;
  v376.origin.x = v236;
  v376.origin.y = v237;
  v376.size.width = v76;
  v376.size.height = Height;
  v247 = v246 + CGRectGetHeight(v376) - v242;
  sub_B170(v365, v366);
  sub_7665A0();
  v345 = v243;
  v377.origin.x = v243;
  v377.origin.y = v242;
  v377.size.width = v244;
  v377.size.height = v247;
  v346 = CGRectGetMinX(v377);
  v378.origin.x = v243;
  v378.origin.y = v242;
  v378.size.width = v244;
  v378.size.height = v247;
  CGRectGetMinY(v378);
  sub_B170(v367, v367[3]);
  sub_766720();
  sub_B170(v365, v366);
  sub_769D20();
  sub_766530();
  sub_1ED18((v238 + 30), &v355, &unk_943B10, &qword_77E080);
  if (!*(&v356 + 1))
  {
    sub_10A2C(&v355, &unk_943B10, &qword_77E080);
    v248 = v298;
    v250 = v286;
    v249 = v287;
    goto LABEL_56;
  }

  sub_10914(&v355, &v358);
  v248 = v298;
  v250 = v286;
  v249 = v287;
  if ((v307 & 1) == 0)
  {
    sub_B170(v347 + 25, v347[28]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v347 + 25, v347[28]);
      sub_766520();
      CGRectGetMidY(v380);
      goto LABEL_58;
    }

    sub_BEB8(&v358);
LABEL_56:
    v251 = v285;
    v252 = v305;
    goto LABEL_59;
  }

  sub_B170(v347 + 5, v347[8]);
  sub_766520();
  CGRectGetMinY(v379);
LABEL_58:
  v381.origin.x = v249;
  v381.origin.y = v250;
  v251 = v285;
  v381.size.width = v285;
  v252 = v305;
  v381.size.height = v305;
  CGRectGetMaxX(v381);
  sub_B170(&v358, *(&v359 + 1));
  v248 = v298;
  sub_769D20();
  sub_766530();
  sub_BEB8(&v358);
LABEL_59:
  v382.origin.x = v249;
  v382.origin.y = v250;
  v382.size.width = v251;
  v382.size.height = v252;
  v253 = CGRectGetWidth(v382);
  v254 = sub_7664C0();
  *v255 = v253;
  v254(&v358, 0);
  v256 = &v321[*(v320 + 68)];
  v257 = *(v256 + 3);
  sub_B170(v256, v257);
  v258 = v309;
  sub_33964(v257);
  sub_766700();
  v260 = v259;
  v308(v258, v311);
  v261 = sub_7664C0();
  *(v262 + 8) = v260 + *(v262 + 8);
  v261(&v358, 0);
  sub_1ED18((v347 + 50), &v355, &unk_943B10, &qword_77E080);
  if (*(&v356 + 1))
  {
    sub_10914(&v355, &v358);
    sub_B170(&v358, *(&v359 + 1));
    v264 = v300;
    v263 = v301;
    v383.origin.x = v300;
    v383.origin.y = v301;
    v265 = v302;
    v383.size.width = v302;
    v383.size.height = v248;
    CGRectGetMinX(v383);
    v384.origin.x = v264;
    v384.origin.y = v263;
    v384.size.width = v265;
    v384.size.height = v248;
    CGRectGetMinY(v384);
    v385.origin.x = v264;
    v385.origin.y = v263;
    v385.size.width = v265;
    v385.size.height = v248;
    CGRectGetWidth(v385);
    sub_766530();
    sub_BEB8(&v358);
  }

  else
  {
    sub_10A2C(&v355, &unk_943B10, &qword_77E080);
  }

  sub_1ED18((v347 + 55), &v355, &unk_943B10, &qword_77E080);
  if (*(&v356 + 1))
  {
    sub_10914(&v355, &v358);
    sub_B170(&v358, *(&v359 + 1));
    v266 = v300;
    v267 = v301;
    v386.origin.x = v300;
    v386.origin.y = v301;
    v268 = v302;
    v386.size.width = v302;
    v386.size.height = v248;
    CGRectGetMinX(v386);
    v387.origin.x = v266;
    v387.origin.y = v267;
    v387.size.width = v268;
    v387.size.height = v248;
    CGRectGetMaxY(v387);
    v269 = v288;
    v270 = *(v256 + 3);
    sub_B170(v256, v270);
    v271 = v309;
    sub_33964(v270);
    sub_766700();
    v308(v271, v311);
    v388.origin.x = v266;
    v388.origin.y = v267;
    v388.size.width = v268;
    v388.size.height = v248;
    CGRectGetWidth(v388);
    sub_766530();
    sub_BEB8(&v358);
  }

  else
  {
    sub_10A2C(&v355, &unk_943B10, &qword_77E080);
    v269 = v288;
  }

  v272 = sub_7664C0();
  *(v273 + 8) = v299 + *(v273 + 8);
  v272(&v358, 0);
  v274 = sub_7664C0();
  *(v275 + 8) = v269 + *(v275 + 8);
  v274(&v358, 0);
  (*(v289 + 8))(v306, v290);
  sub_BEB8(v368);
  (*(v292 + 32))(v294, v235, v293);
  return sub_10A2C(v361, &qword_94E5E0, &qword_780ED0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_7CE80(a1, v3, a2, a3);
}

double *sub_7AB00(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&unk_941C00, &unk_781220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&unk_93F5E0, qword_77E5B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7AD2C(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941BD8, &qword_7811F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

double *sub_7AE54(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9419F0, &unk_781020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_7AF58(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941B50, &qword_781170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941B58, &qword_781178);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B0D8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AA0, &qword_7810C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941AA8, &qword_7810C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B220(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A30, &unk_781050);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B378(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AB8, &qword_7810D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941AC0, &qword_7810E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B4AC(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AC8, &qword_7810E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B5CC(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A88, &unk_786E40);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7B6D8(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A00, &unk_781030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_7B874(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A38, &unk_798740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_7BA48(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941AF0, &qword_781110);
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

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_7BB70(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&unk_941B90, &unk_7811B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7BC8C(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_95B250, "hq\b");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_7BD90(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941C10, &qword_781230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7BEA0(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_9419F8, &unk_786E00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7C00C(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&qword_941A60, &qword_781080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941A68, &qword_781088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7C180(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&unk_94EC60, &unk_786EF0);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941BA0, &qword_7811C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_7C2C8(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6)
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
    sub_BD88(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = (v12 + 4);
  v16 = (a4 + 4);
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

double *sub_7C3E8(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5, a6);
  v16 = *(sub_BD88(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
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

  *(v19 + 2) = v14;
  *(v19 + 3) = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_BD88(a7, a8) - 8);
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

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

double *sub_7C5F4(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_BD88(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_7C74C(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_BD88(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_7C8A8(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *(v17 + 2) = v12;
  *(v17 + 3) = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

double *sub_7CAA8(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 3);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = *(a4 + 2);
  if (v13 <= v14)
  {
    v15 = *(a4 + 2);
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_BD88(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    *(v16 + 2) = v14;
    *(v16 + 3) = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

double *sub_7CBF4(uint64_t a1, uint64_t a2)
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

  sub_BD88(&qword_941A88, &unk_786E40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

double *sub_7CC78(uint64_t a1, uint64_t a2)
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

  sub_BD88(&unk_941A18, &qword_78A3D0);
  v4 = *(sub_757640() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_7CD74(uint64_t a1, uint64_t a2)
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

  sub_BD88(&qword_95B250, "hq\b");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

double *sub_7CDF8(uint64_t a1, uint64_t a2)
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

  sub_BD88(&unk_93F5C0, &unk_77C600);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

double sub_7CE80(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 35, a2[38]);
  v10 = sub_766540();
  v11 = 0.0;
  v12 = 0.0;
  if ((v10 & 1) == 0)
  {
    sub_B170(a2 + 35, a2[38]);
    sub_7665A0();
    v14 = v13;
    v11 = v15;
    v16 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v16[*(v17 + 56)], *&v16[*(v17 + 56) + 24]);
    sub_766720();
    v12 = v14 - v11 + v18;
  }

  v51 = v12;
  sub_1ED18((a2 + 40), &v53, &qword_9417D0, &unk_780EA0);
  if (v54)
  {
    sub_10914(&v53, v55);
    sub_B170(v55, v56);
    sub_7665A0();
    v20 = v19;
    v11 = v21;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v52 = a1;
    sub_BD88(&qword_940AD0, &unk_78F910);
    sub_7592B0();
    v52 = v53;
    v22 = v20;
    sub_766720();
    v24 = v23;
    sub_BEB8(v55);
    v50 = v11;
  }

  else
  {
    sub_10A2C(&v53, &qword_9417D0, &unk_780EA0);
    v22 = JUMeasurementsZero[1];
    v50 = JUMeasurementsZero[3];
    v24 = 0.0;
  }

  sub_1ED18((a2 + 45), &v53, &qword_9417D0, &unk_780EA0);
  if (v54)
  {
    sub_10914(&v53, v55);
    sub_B170(v55, v56);
    sub_7665A0();
    v26 = v25;
    v49 = v24;
    v11 = v27;
    v28 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v29 = &v28[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64)];
    v30 = *(v29 + 3);
    sub_B170(v29, v30);
    sub_33964(v30);
    sub_766700();
    v32 = v31;
    (*(v7 + 8))(v9, v6);
    *&v53 = v32;
    v24 = v49;
    sub_766720();
    v34 = v33;
    sub_BEB8(v55);
    v35 = v11;
  }

  else
  {
    sub_10A2C(&v53, &qword_9417D0, &unk_780EA0);
    v26 = JUMeasurementsZero[1];
    v35 = JUMeasurementsZero[3];
    v34 = 0.0;
  }

  sub_B170(a2 + 25, a2[28]);
  sub_7665B0();
  v37 = v26 - v35 + v34 + v22 - v50 + v24 + v51 + v36;
  v38 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  v39 = *(v38 + 12);
  sub_B170(v38 + 9, v39);
  sub_33964(v39);
  sub_766700();
  v41 = v40;
  v42 = *(v7 + 8);
  v42(v9, v6);
  v43 = v37 + v41;
  v44 = &v38[*(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68)];
  v45 = *(v44 + 3);
  sub_B170(v44, v45);
  sub_33964(v45);
  sub_766700();
  v47 = v46;
  v42(v9, v6);
  return v11 + v43 + v47;
}

double sub_7D408(void *a1, void *a2, uint64_t a3, double a4)
{
  v93 = a3;
  v7 = sub_76A920();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v98 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v11 = *v10;
  v12 = a4 - v10[1];
  v14 = v10[2];
  v13 = v10[3];
  v96 = v10;
  v15 = v12 - v13;
  v91 = v14;
  v92 = v11;
  v16 = a4 - v11 - v14;
  v17 = [a1 traitCollection];
  v18 = sub_7699E0();

  sub_1ED18((a2 + 30), v108, &unk_943B10, &qword_77E080);
  if (v109)
  {
    sub_B170(v108, v109);
    sub_7665B0();
    v20 = v19;
    sub_BEB8(v108);
  }

  else
  {
    sub_10A2C(v108, &unk_943B10, &qword_77E080);
    v20 = 0.0;
  }

  sub_1ED18((a2 + 30), v108, &unk_943B10, &qword_77E080);
  v21 = v109;
  sub_10A2C(v108, &unk_943B10, &qword_77E080);
  v94 = v8;
  v95 = v7;
  if (v21)
  {
    v22 = (v96 + *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48));
    v23 = v22[3];
    sub_B170(v22, v23);
    v24 = v98;
    sub_33964(v23);
    sub_766700();
    v26 = v25;
    (*(v8 + 8))(v24, v7);
    if (v18)
    {
LABEL_6:
      v27 = v15 - v20 - v26;
      goto LABEL_9;
    }
  }

  else
  {
    v26 = 0.0;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v27 = v15;
LABEL_9:
  v97 = v27;
  sub_B170(a2 + 5, a2[8]);
  sub_7665A0();
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v106 = a1;
  sub_BD88(&qword_940AD0, &unk_78F910);
  v33 = a2;
  v34 = v96;
  sub_7592B0();
  *&v106 = v108[0];
  v88 = v31;
  v89 = v29;
  sub_766720();
  v87 = v35;
  sub_B170(v33 + 5, v33[8]);
  sub_7669E0();
  v86 = v36;
  sub_B170(v33 + 10, v33[13]);
  sub_7665A0();
  v38 = v37;
  v40 = v39;
  v41 = *(v32 + 36);
  *&v106 = a1;
  v85 = v41;
  v42 = v34;
  sub_7592B0();
  *&v106 = v108[0];
  sub_766720();
  v43 = v16;
  v45 = v38 - v40 + v44;
  v46 = (v33 + 15);
  v99 = v33;
  sub_B170(v33 + 15, v33[18]);
  v90 = v43;
  sub_7665A0();
  v48 = v47;
  v50 = v49;
  *&v106 = a1;
  sub_7592B0();
  *&v106 = v108[0];
  sub_766720();
  v52 = v48 - v50 + v51;
  if (v52 >= v45)
  {
    sub_134D8(v46, &v106);
    v46 = (v33 + 10);
  }

  else
  {
    sub_134D8((v33 + 10), &v106);
  }

  sub_134D8(v46, &v104);
  v103[0] = a1;
  sub_7592B0();
  v53 = v108[0];
  v103[0] = a1;
  sub_7592B0();
  v54 = v108[0];
  if (v52 >= v45)
  {
    v55 = v108[0];
  }

  else
  {
    v55 = v53;
  }

  v103[3] = &type metadata for CGFloat;
  v103[4] = &protocol witness table for CGFloat;
  v103[0] = v55;
  if (v52 >= v45)
  {
    v54 = v53;
  }

  v101 = &type metadata for CGFloat;
  v102 = &protocol witness table for CGFloat;
  *&v100 = v54;
  sub_10914(&v106, v108);
  sub_134D8(v103, v110);
  sub_10914(&v104, &v111);
  sub_10914(&v100, &v112);
  sub_BEB8(v103);
  sub_B170(v108, v109);
  v56 = v97;
  v57 = v90;
  sub_7665A0();
  v59 = v58;
  v61 = v60;
  sub_B170(v110, v110[3]);
  sub_766720();
  v63 = v62;
  sub_1ED18((v99 + 20), &v104, &qword_9417D0, &unk_780EA0);
  v64 = v95;
  if (v105)
  {
    sub_10914(&v104, &v106);
    sub_B170(&v106, v107);
    sub_7665A0();
    v66 = v65;
    v68 = v67;
    v103[0] = a1;
    sub_7592B0();
    v103[0] = v104;
    v56 = v97;
    sub_766720();
    v70 = v66 - v68 + v69;
    sub_BEB8(&v106);
  }

  else
  {
    sub_10A2C(&v104, &qword_9417D0, &unk_780EA0);
    v70 = 0.0;
  }

  v71 = v94;
  v72 = v70 + v59 - v61 + v63 + v89 - v88 + v87 + v86 + v42[15];
  v73 = (v42 + *(v32 + 52));
  v74 = v73[3];
  sub_B170(v73, v74);
  v75 = v98;
  sub_33964(v74);
  sub_766700();
  v77 = v76;
  v78 = *(v71 + 8);
  v78(v75, v64);
  v79 = v72 + v77 + sub_7CE80(a1, v99, v56, v57);
  v80 = *(v42 + 7);
  sub_B170(v42 + 4, v80);
  sub_33964(v80);
  sub_766700();
  v82 = v81;
  v78(v75, v64);
  v83 = v91 + v92 + v79 + v82;
  sub_10A2C(v108, &qword_94E5E0, &qword_780ED0);
  return v83;
}

double sub_7DC74(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_7D408(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

unint64_t sub_7DCC8()
{
  result = qword_9417F8;
  if (!qword_9417F8)
  {
    sub_133D8(&qword_9417F0, &unk_780EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9417F8);
  }

  return result;
}

uint64_t sub_7DD2C(uint64_t a1)
{
  *(a1 + 8) = sub_7DDB0(&qword_941800, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  result = sub_7DDB0(&qword_941808, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7DDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_7DE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7DECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7DF70(uint64_t a1)
{
  sub_70B18(319, &unk_94E830, &protocol descriptor for LayoutView);
  if (v1 <= 0x3F)
  {
    sub_70B18(319, &qword_941880, &protocol descriptor for LayoutTextView);
    if (v2 <= 0x3F)
    {
      sub_7E0B0(319, &unk_94E840, &unk_941890, &unk_77E250);
      if (v3 <= 0x3F)
      {
        sub_7E0B0(319, &qword_94E850, &unk_9418A0, &qword_780FF0);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ProductLockupAccessibilityLayout.Metrics(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_7E0B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_133D8(a3, a4);
    v5 = sub_76A480();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_7E118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_BD88(&qword_940AD0, &unk_78F910);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_7E1E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_BD88(&qword_940AD0, &unk_78F910);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_7E298(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    sub_70B18(319, &qword_943C60, &protocol descriptor for AnyDimension);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_7E378(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_7E378(uint64_t a1)
{
  if (!qword_941970[0])
  {
    sub_133D8(&qword_93FBE0, &unk_77EA70);
    v1 = sub_7593A0();
    if (!v2)
    {
      atomic_store(v1, qword_941970);
    }
  }
}

uint64_t sub_7E450()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A370);
  sub_BE38(v4, qword_99A370);
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4D8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7E630()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99A3A0);
  sub_BE38(v4, qword_99A3A0);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F4F0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_7E818(uint64_t a1, uint64_t *a2)
{
  v3 = sub_BD88(&unk_93F8F0, &qword_78CC50);
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  sub_BD88(&qword_93FBE0, &unk_77EA70);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

void sub_7E8B0(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = sub_766690();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_765540();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (sub_769A00())
    {
      goto LABEL_8;
    }

    sub_7655E0();
    if (qword_93C238 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_BE38(v9, qword_99A288);
      sub_7F1AC();
      v14 = sub_7691B0();
      v15 = *(v10 + 8);
      v10 += 8;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &unk_90D000;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_769B50())
      {
        v17 = sub_769B60();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          sub_769B60();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_765580();
  sub_765580();
  if (v4 == 4)
  {
    if (qword_93C280 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_BE38(v5, qword_99A340);
    sub_766660();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_93C278 != -1)
      {
        swift_once();
      }

      v18 = qword_99A328;
    }

    else
    {
      if (qword_93C288 != -1)
      {
        swift_once();
      }

      v18 = qword_99A358;
    }

    v20 = sub_BE38(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    sub_766660();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_7ED24(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a1;
  v6 = sub_766690();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_765540();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (sub_769A00())
    {
      goto LABEL_8;
    }

    v20 = a3;
    sub_7655E0();
    if (qword_93C238 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_BE38(v9, qword_99A288);
      sub_7F1AC();
      v14 = sub_7691B0();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &unk_90D000;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_769B60() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_769B50())
      {
        v15 = sub_769B60();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_769B60())
      {
        if (sub_769B50())
        {
          sub_769B60();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_2A6324(v4);
  sub_765580();
  if (v5 == 4)
  {
    if (qword_93C280 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_BE38(v6, qword_99A340);
    sub_766660();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_93C278 != -1)
      {
        swift_once();
      }

      v16 = qword_99A328;
    }

    else
    {
      if (qword_93C288 != -1)
      {
        swift_once();
      }

      v16 = qword_99A358;
    }

    v18 = sub_BE38(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    sub_766660();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_7F1AC()
{
  result = qword_941C40;
  if (!qword_941C40)
  {
    sub_765540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_941C40);
  }

  return result;
}

double sub_7F204(uint64_t a1, void *a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = sub_7664A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_7699B0() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v16 = sub_7666D0();
  v17 = sub_BE38(v16, qword_99F4D8);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_B1B4(v26);
  (*(v11 + 16))(v18, v13, v10);
  sub_765C10();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_BEB8(v26);
  sub_766470();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    sub_769600();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

uint64_t sub_7F668(void *a1)
{
  if (*v1 == *a1 && (sub_76A6C0() & 1) != 0 && (type metadata accessor for MenuItemDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && (*(v2 + 56) == *(v1 + 56) ? (v3 = *(v2 + 64) == *(v1 + 64)) : (v3 = 0), v3 || (v4 = v2, v5 = sub_76A950(), v2 = v4, (v5 & 1) != 0)))
  {
    v6 = *(v2 + 72) ^ *(v1 + 72) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}