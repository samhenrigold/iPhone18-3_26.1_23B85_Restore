char *NotificationModel.ModalAlertModel.validate(errors:automakerSymbolValidator:)(char *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v75 = v3[6];
  v10 = v3[8];
  v73 = v3[7];
  v74 = v3[5];
  v11 = v3[9];

  if (v9 > 1)
  {
    v13 = a1;
  }

  else
  {

    v12 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v12 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = a1;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_242C832C4(0, *(a1 + 2) + 1, 1, a1);
      }

      v15 = *(a1 + 2);
      v14 = *(a1 + 3);
      if (v15 >= v14 >> 1)
      {
        a1 = sub_242C832C4((v14 > 1), v15 + 1, 1, a1);
      }

      *(a1 + 2) = v15 + 1;
      v16 = &a1[40 * v15];
      *(v16 + 4) = 1;
      *(v16 + 5) = 0;
      *(v16 + 6) = 0;
      *(v16 + 7) = 0;
      v16[64] = 5;
      v13 = a1;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v6 = v7;
    v5 = v8;
  }

  v17 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v17 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
    }

    v24 = *(v13 + 2);
    v23 = *(v13 + 3);
    if (v24 >= v23 >> 1)
    {
      v13 = sub_242C832C4((v23 > 1), v24 + 1, 1, v13);
    }

    *(v13 + 2) = v24 + 1;
    v25 = &v13[40 * v24];
    *(v25 + 4) = 2;
    *(v25 + 5) = 0;
    *(v25 + 6) = 0;
    *(v25 + 7) = 0;
    v25[64] = 5;
    v18 = *(v10 + 16);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_29:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_30;
    }

    goto LABEL_105;
  }

LABEL_17:
  v18 = *(v10 + 16);
  if (!v18)
  {
    goto LABEL_29;
  }

LABEL_18:
  if (v11 >= v18)
  {
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
  }

  v20 = *(v13 + 2);
  v19 = *(v13 + 3);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v13 = sub_242C832C4((v19 > 1), v20 + 1, 1, v13);
  }

  for (i = 4; ; i = 3)
  {
    *(v13 + 2) = v21;
    v27 = &v13[40 * v20];
    *(v27 + 4) = i;
    *(v27 + 5) = 0;
    *(v27 + 6) = 0;
    *(v27 + 7) = 0;
    v27[64] = 5;
LABEL_34:
    sub_242CD6078();
    v31 = v30 >> 1;
    if (v30 >> 1 == v29)
    {
      break;
    }

    if (v11 < 0)
    {
      goto LABEL_103;
    }

    v35 = v29;
    v36 = v31 - v29;
    if (v31 > v29)
    {
      v37 = v28;
      if (v18 >= v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = v18;
      }

      if (v11)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v11 = 48;
      v76 = (v10 + 48 * v39 - 16);

      v18 = (v37 + 48 * v35 + 24);
      v77 = v39;
      v78 = v10;
      while (1)
      {
        if (*(v10 + 16) < v39)
        {
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v84 = v13;
        v41 = *(v18 - 2);
        v40 = *(v18 - 1);
        v42 = *v18;
        v43 = *(v18 + 1);
        v11 = *(v18 + 2);
        v85 = v41;
        v86 = *(v18 - 24);
        if (!v39)
        {
          break;
        }

        v45 = *v18;
        v83 = *v76;
        v46 = *(v76 + 2);
        v80 = *(v76 + 1);
        v81 = v76[24];
        v47 = *(v76 + 4);
        v48 = *(v76 + 5);

        v82 = v47;
        v49 = v47;
        v50 = v48;
        sub_242CA0064(v49, v48);
        if (!v40)
        {
          v42 = v45;
          if (!v46)
          {
LABEL_63:

            sub_242CA0064(v43, v11);

            sub_242CA0064(v43, v11);
            sub_242D0D6D8(v86, v41, 0, v42, v43, v11);
            v13 = v84;
LABEL_64:
            if (v42)
            {
              goto LABEL_80;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
            }

            v39 = v77;
            v10 = v78;
            v56 = *(v13 + 2);
            v55 = *(v13 + 3);
            v57 = v56 + 1;
            if (v56 >= v55 >> 1)
            {
              v13 = sub_242C832C4((v55 > 1), v56 + 1, 1, v13);
            }

            v58 = 3;
            goto LABEL_79;
          }

          v79 = v36;
          v44 = v50;
          sub_242CA0064(v43, v11);
          sub_242CA0064(v43, v11);
          v53 = v41;
          v54 = v86;
          goto LABEL_72;
        }

        if (!v46)
        {
          v79 = v36;
          v44 = v48;
          v42 = v45;
          goto LABEL_71;
        }

        v42 = v45;
        if (v86 != v83)
        {

          sub_242CA0064(v43, v11);

          sub_242CA0064(v43, v11);
          sub_242D0D724(v86, v41, v40, v45, v43, v11);
          sub_242D0D6D8(v83, v80, v46, v81, v82, v50);
          v52 = v41;
          v13 = v84;
LABEL_90:

          sub_242C655DC(v43, v11);
          sub_242D0D6D8(v86, v52, v40, v42, v43, v11);
          goto LABEL_73;
        }

        if (v41 == v80 && v46 == v40)
        {

          sub_242CA0064(v43, v11);

          sub_242CA0064(v43, v11);
          sub_242D0D724(v86, v41, v40, v45, v43, v11);
          v51 = v81;
          sub_242D0D6D8(v83, v41, v46, v81, v82, v50);
          v52 = v41;
          v13 = v84;
        }

        else
        {
          v72 = sub_242F06110();

          sub_242CA0064(v43, v11);

          sub_242CA0064(v43, v11);
          sub_242D0D724(v86, v41, v40, v45, v43, v11);
          v51 = v81;
          sub_242D0D6D8(v83, v80, v46, v81, v82, v50);
          v52 = v41;
          v13 = v84;
          if ((v72 & 1) == 0)
          {
            goto LABEL_90;
          }
        }

        sub_242C655DC(v43, v11);
        sub_242D0D6D8(v86, v52, v40, v42, v43, v11);
        if (v51 == v42)
        {
          goto LABEL_64;
        }

LABEL_73:
        if (!v42)
        {
LABEL_80:
          v39 = v77;
          v10 = v78;
          goto LABEL_81;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
        }

        v39 = v77;
        v10 = v78;
        v56 = *(v13 + 2);
        v59 = *(v13 + 3);
        v57 = v56 + 1;
        if (v56 >= v59 >> 1)
        {
          v13 = sub_242C832C4((v59 > 1), v56 + 1, 1, v13);
        }

        v58 = 4;
LABEL_79:
        *(v13 + 2) = v57;
        v60 = &v13[40 * v56];
        *(v60 + 4) = v86;
        *(v60 + 5) = 0;
        *(v60 + 6) = 0;
        *(v60 + 7) = 0;
        v60[64] = v58;
LABEL_81:
        v61 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v61 = v85 & 0xFFFFFFFFFFFFLL;
        }

        if (v61)
        {

          sub_242C655DC(v43, v11);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
          }

          v63 = *(v13 + 2);
          v62 = *(v13 + 3);
          if (v63 >= v62 >> 1)
          {
            v13 = sub_242C832C4((v62 > 1), v63 + 1, 1, v13);
          }

          sub_242C655DC(v43, v11);
          *(v13 + 2) = v63 + 1;
          v64 = &v13[40 * v63];
          *(v64 + 4) = v86;
          *(v64 + 5) = 0;
          *(v64 + 6) = 0;
          *(v64 + 7) = 0;
          v64[64] = 0;
        }

        v18 += 48;
        if (!--v36)
        {
          goto LABEL_36;
        }
      }

      if (!v40)
      {
        goto LABEL_63;
      }

      v79 = v36;
      v80 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v44 = 0;
LABEL_71:

      sub_242CA0064(v43, v11);

      sub_242CA0064(v43, v11);
      v53 = v41;
      v54 = v86;
      sub_242D0D724(v86, v85, v40, v42, v43, v11);

      sub_242C655DC(v43, v11);
      v46 = 0;
LABEL_72:
      sub_242D0D6D8(v54, v53, v40, v42, v43, v11);
      sub_242D0D6D8(v83, v80, v46, v81, v82, v44);
      v13 = v84;
      v36 = v79;
      goto LABEL_73;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
LABEL_30:
    v20 = *(v13 + 2);
    v26 = *(v13 + 3);
    v21 = v20 + 1;
    if (v20 >= v26 >> 1)
    {
      v13 = sub_242C832C4((v26 > 1), v20 + 1, 1, v13);
    }
  }

LABEL_36:
  swift_unknownObjectRelease();
  if (v75)
  {
    v32 = objc_opt_self();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v33 = sub_242F04F00();
    v34 = [v32 _systemImageNamed_];

    if (v34)
    {

LABEL_39:
      sub_242CD54A4(v74, v75, v73);
      sub_242CD54A4(v74, v75, v73);
      return v13;
    }

    if (a2)
    {

      v65 = a2(v74, v75);
      sub_242C655DC(a2, a3);
      if (v65)
      {
        goto LABEL_39;
      }
    }

    sub_242CD54A4(v74, v75, v73);
    sub_242CD54A4(v74, v75, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_242C832C4(0, *(v13 + 2) + 1, 1, v13);
    }

    v67 = *(v13 + 2);
    v66 = *(v13 + 3);
    if (v67 >= v66 >> 1)
    {
      v13 = sub_242C832C4((v66 > 1), v67 + 1, 1, v13);
    }

    *(v13 + 2) = v67 + 1;
    v68 = &v13[40 * v67];
    *(v68 + 4) = v74;
    *(v68 + 5) = v75;
    *(v68 + 6) = 0;
    *(v68 + 7) = 0;
    v68[64] = 1;
  }

  return v13;
}

uint64_t NotificationModel.ModalAlertModel.correct(validationError:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[1];
  v49 = v2[2];
  v50 = v4;
  v51 = v5;
  v7 = v2[1];
  v48[0] = *v2;
  v48[1] = v7;
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *(a1 + 32);
  v45 = v48[0];
  v46 = v6;
  v47 = *(v2 + 4);
  v13 = *(&v49 + 1);
  v15 = *(&v4 + 1);
  v14 = v4;
  v16 = *(&v51 + 1);
  v17 = v51;
  if (v12)
  {
    if (v12 == 1)
    {
      sub_242D0D770(v48, &v40);
      sub_242CD54A4(v13, v14, v15);
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      if (v12 != 5)
      {
        goto LABEL_16;
      }

      v18 = v11 | v9;
      if (!(v18 | v8 | v10))
      {
        goto LABEL_9;
      }

      v19 = v18 | v10;
      if ((v8 - 1) <= 1 && !v19)
      {
        goto LABEL_9;
      }

      if (v8 == 3 && !v19)
      {
        goto LABEL_9;
      }

      if (v8 == 4 && !v19)
      {
        v24 = sub_242CD6078();
        v26 = v25;
        if (v25)
        {
          v37 = v22;
          v38 = v23;
          swift_unknownObjectRetain();
          sub_242D0D770(v48, &v40);
          sub_242F061F0();

          swift_unknownObjectRetain();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = MEMORY[0x277D84F90];
          }

          v35 = *(v34 + 16);

          if (__OFSUB__(v26 >> 1, v38))
          {
            __break(1u);
          }

          else if (v35 == (v26 >> 1) - v38)
          {
            v36 = swift_dynamicCastClass();

            swift_unknownObjectRelease();
            if (v36)
            {
              v17 = v36;
            }

            else
            {
              swift_unknownObjectRelease();
              v17 = MEMORY[0x277D84F90];
            }

            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          v28 = v37;
          v27 = v38;
        }

        else
        {
          v27 = v23;
          v28 = v22;
          sub_242D0D770(v48, &v40);
        }

        sub_242CD4FC4(v24, v28, v27, v26);
        v30 = v29;

        swift_unknownObjectRelease();
        v17 = v30;
      }

      else
      {
LABEL_16:
        sub_242D0D770(v48, &v40);
      }
    }

LABEL_17:
    v31 = v46;
    v40 = v45;
    v41 = v46;
    *&v42 = v47;
    *(&v42 + 1) = v13;
    *&v43 = v14;
    *(&v43 + 1) = v15;
    *&v44 = v17;
    *(&v44 + 1) = v16;
    *a2 = v45;
    a2[1] = v31;
    v32 = v43;
    a2[2] = v42;
    a2[3] = v32;
    a2[4] = v44;
    v20 = &v40;
    v21 = &v39;
    goto LABEL_18;
  }

LABEL_9:
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v20 = v48;
  v21 = &v40;
LABEL_18:
  sub_242D0D770(v20, v21);
  v40 = v45;
  v41 = v46;
  *&v42 = v47;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  *&v44 = v17;
  *(&v44 + 1) = v16;
  return sub_242D0D7A8(&v40);
}

void sub_242D0D6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_242C655DC(a5, a6);
  }
}

void sub_242D0D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {

    sub_242CA0064(a5, a6);
  }
}

uint64_t _s14CarPlayAssetUI17NotificationModelV010ModalAlertF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  v31 = *(a2 + 56);
  v32 = *a2;
  v27 = v14;
  v28 = *(a2 + 72);
  v15 = *(a1 + 32);
  v16 = *(a2 + 32);
  v37 = v2;
  v38 = v3;
  v39 = v4;
  v40 = v5;
  v41 = v15;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v16;
  sub_242CD52B8(v2, v3, v4, v5, v15);
  sub_242CD52B8(v32, v9, v10, v11, v16);
  v17 = _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(&v37, &v32);
  sub_242CD5324(v32, v33, v34, v35, v36);
  sub_242CD5324(v37, v38, v39, v40, v41);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v18 = v7;
  if (v7)
  {
    v19 = v6;
    if (v13)
    {
      if (v6 == v12 && v7 == v13 || (sub_242F06110() & 1) != 0)
      {
        if (!v8)
        {
          sub_242CD5460(v6, v7, 0);
          v25 = 0;
          if (!v31)
          {
            sub_242CD5460(v12, v13, 0);
            sub_242CD5460(v6, v7, 0);
            sub_242CD54A4(v12, v13, 0);
LABEL_24:

            goto LABEL_25;
          }

          goto LABEL_18;
        }

        if (v31)
        {
          sub_242CD5460(v6, v7, v8);
          sub_242CD5460(v12, v13, v31);
          sub_242CD5460(v6, v7, v8);

          v20 = sub_242F04710();

          sub_242CD54A4(v12, v13, v31);
          if (v20)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }
      }

      sub_242CD5460(v6, v7, v8);
      v25 = v8;
LABEL_18:
      sub_242CD5460(v12, v13, v31);
      sub_242CD5460(v6, v7, v25);
      sub_242CD54A4(v12, v13, v31);
LABEL_19:

      v22 = v6;
      v23 = v7;
      v24 = v8;
      goto LABEL_20;
    }

    sub_242CD5460(v6, v7, v8);
    v21 = v31;
    sub_242CD5460(v12, 0, v31);
    sub_242CD5460(v6, v18, v8);
  }

  else
  {
    v19 = v6;
    sub_242CD5460(v6, 0, v8);
    if (!v13)
    {
      sub_242CD5460(v12, 0, v31);
      v18 = 0;
LABEL_25:
      sub_242CD54A4(v19, v18, v8);
      return sub_242C72D78(v29, v27) & (v30 == v28);
    }

    v21 = v31;
    sub_242CD5460(v12, v13, v31);
  }

  sub_242CD54A4(v19, v18, v8);
  v22 = v12;
  v23 = v13;
  v24 = v21;
LABEL_20:
  sub_242CD54A4(v22, v23, v24);
  return 0;
}

unint64_t sub_242D0DB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D0DB4C(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242D0DB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2B78;
  if (!qword_27ECF2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2B78);
  }

  return result;
}

uint64_t sub_242D0DBA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242D0DBE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double WidgetMultiStackRowLayout.iconImageInfo.getter()
{
  v1 = *v0;
  if (qword_27ECEEF90 != -1)
  {
    swift_once();
  }

  v2 = qword_27ECF1930;
  [qword_27ECF1930 cornerRadius];
  [v2 size];
  return v1;
}

uint64_t sub_242D0DCF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242D0DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88, &qword_242F17120);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  *&v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C10, &qword_242F17268);
  sub_242F03A40();
  (*(v8 + 32))(v4 + v11, v10, v7);
  sub_242D10B7C(a1, v4 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v12 = *(a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (*(v12 + 16) && (v13 = sub_242CE5568(a1), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 112 * v13);
    v17 = v15[1];
    v16 = v15[2];
    v36 = *v15;
    v37 = v17;
    v38 = v16;
    v18 = *(v15 + 89);
    v20 = v15[4];
    v19 = v15[5];
    v39 = v15[3];
    *v40 = v20;
    *&v40[16] = v19;
    *&v40[25] = v18;
    v34 = *(&v36 + 1);
    v21 = v36;
    v32 = *(&v37 + 1);
    v33 = v37;
    v22 = *(&v38 + 1);
    v31 = v38;
    v29 = *(&v39 + 1);
    v30 = v39;
    v28 = *&v40[8];
    v23 = v20;
    v24 = *&v40[24];
    v25 = v18 >> 56;
    v26 = HIBYTE(v18);
    sub_242CA321C(&v36, v35, &qword_27ECF21A8, &qword_242F17990);
    sub_242D1162C(v34, v33, v32, v31, v22, v30, v29, v23, v28, *(&v28 + 1), v24, v25, v26);
  }

  else
  {
    v21 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v36 = v21;

  sub_242F03A90();

  sub_242D116FC(a1, type metadata accessor for Zone);
  return v4;
}

uint64_t ZoneModel.deinit()
{
  sub_242D116FC(v0 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88, &qword_242F17120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ZoneModel.__deallocating_deinit()
{
  sub_242D116FC(v0 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, type metadata accessor for Zone);
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel__carouselModel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B88, &qword_242F17120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_242D0E1BC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ZoneModel(0);
  result = sub_242F03A10();
  *a2 = result;
  return result;
}

uint64_t sub_242D0E1FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_242CA321C(v2, &v14 - v9, &qword_27ECF0BA0, &qword_242F0D080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_242F03BB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_242F05710();
    v13 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t ZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for ZoneView(0);
  v4 = v3 - 8;
  v43 = *(v3 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B90, &qword_242F17128);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v41 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B98, &qword_242F17130);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BA0, &qword_242F17138);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - v18;
  *v11 = sub_242F04A70();
  v11[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BA8, &qword_242F17140);
  sub_242D0EACC(v2, v11 + *(v21 + 44));
  sub_242F04A70();
  sub_242F03E40();
  sub_242CF6B3C(v11, v15, &qword_27ECF2B90, &qword_242F17128);
  v22 = &v15[*(v13 + 44)];
  v23 = v51;
  *(v22 + 4) = v50;
  *(v22 + 5) = v23;
  *(v22 + 6) = v52;
  v24 = v47;
  *v22 = v46;
  *(v22 + 1) = v24;
  v25 = v49;
  *(v22 + 2) = v48;
  *(v22 + 3) = v25;
  v41 = *&v2[*(v4 + 28) + 8];
  v42 = OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone;
  sub_242D10B7C(v41 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v8, type metadata accessor for Zone);
  v26 = Zone.overlayComponents.getter();
  sub_242D116FC(v8, type metadata accessor for Zone);
  v45 = v26;
  swift_getKeyPath();
  sub_242D10B7C(v2, &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneView);
  v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v28 = swift_allocObject();
  sub_242D11694(&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for ZoneView);
  v29 = &v19[*(v17 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2338, &qword_242F13C18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BB0, &qword_242F17168);
  sub_242C7E000(&qword_27ECF2BB8, &qword_27ECF2338, &qword_242F13C18, MEMORY[0x277D83980]);
  sub_242D10BE8();
  sub_242D10C9C();
  sub_242F04990();
  v30 = sub_242F04A70();
  v32 = v31;
  v33 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BE0, &qword_242F17178) + 36)];
  *v33 = v30;
  v33[1] = v32;
  sub_242CF6B3C(v15, v19, &qword_27ECF2B98, &qword_242F17130);
  KeyPath = swift_getKeyPath();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BE8, &qword_242F171A8);
  v36 = v44;
  v37 = (v44 + *(v35 + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BF0, &qword_242F171B0) + 28);
  sub_242CA321C(v41 + v42, v37 + v38, &qword_27ECFC780, &qword_242F17930);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
  *v37 = KeyPath;
  return sub_242CF6B3C(v19, v36, &qword_27ECF2BA0, &qword_242F17138);
}

uint64_t sub_242D0E9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_242CA321C(a1, &v12 - v6, &qword_27ECF2C70, &unk_242F2D4A0);
  v8 = sub_242CA321C(v7, v4, &qword_27ECF2C70, &unk_242F2D4A0);
  sub_242D11640(v8, v9, v10);
  sub_242F04020();
  return sub_242C6D138(v7, &qword_27ECF2C70, &unk_242F2D4A0);
}

uint64_t sub_242D0EACC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for ZoneView(0);
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D00, &qword_242F17380);
  MEMORY[0x28223BE20](v45);
  v7 = (&v41 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BB0, &qword_242F17168);
  MEMORY[0x28223BE20](v44);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D08, &qword_242F17388);
  MEMORY[0x28223BE20](v16 - 8);
  v48 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D10, &qword_242F17390);
  MEMORY[0x28223BE20](v21 - 8);
  v47 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v46 = &v41 - v24;
  sub_242D0F28C(&v41 - v24);
  v25 = *&a1[*(v4 + 28) + 8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  if (v50)
  {
    v26 = v43;
    sub_242D10B7C(a1, v43, type metadata accessor for ZoneView);
    v27 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v28 = swift_allocObject();
    sub_242D11694(v26, v28 + v27, type metadata accessor for ZoneView);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D30, &qword_242F173A8);
    sub_242C7E000(&qword_27ECF2D38, &qword_27ECF2D30, &qword_242F173A8, &protocol conformance descriptor for CarouselModel<A>);
    *v7 = sub_242F03DA0();
    v7[1] = v29;
    v7[2] = sub_242D12014;
    v7[3] = v28;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D18, &qword_242F17398);
    sub_242C7E000(&qword_27ECF2D20, &qword_27ECF2D18, &qword_242F17398, &protocol conformance descriptor for Carousel<A, B>);
    sub_242D10C9C();
    sub_242F041C0();
  }

  else
  {
    v43 = a1;
    sub_242D10B7C(v25 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v13, type metadata accessor for Zone);
    v30 = Zone.primaryComponents.getter();
    sub_242D116FC(v13, type metadata accessor for Zone);
    if (*(v30 + 16))
    {
      v31 = type metadata accessor for Component(0);
      v32 = *(v31 - 8);
      sub_242D10B7C(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v10, type metadata accessor for Component);
      v33 = v10;

      (*(v32 + 56))(v10, 0, 1, v31);
    }

    else
    {

      v34 = type metadata accessor for Component(0);
      v33 = v10;
      (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    }

    sub_242D0FED0(v33, v15);
    sub_242C6D138(v33, &qword_27ECF2730, &qword_242F17940);
    sub_242CA321C(v15, v7, &qword_27ECF2BB0, &qword_242F17168);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D18, &qword_242F17398);
    sub_242C7E000(&qword_27ECF2D20, &qword_27ECF2D18, &qword_242F17398, &protocol conformance descriptor for Carousel<A, B>);
    sub_242D10C9C();
    sub_242F041C0();
    sub_242C6D138(v15, &qword_27ECF2BB0, &qword_242F17168);
  }

  v35 = v46;
  v36 = v47;
  sub_242CA321C(v46, v47, &qword_27ECF2D10, &qword_242F17390);
  v37 = v48;
  sub_242CA321C(v20, v48, &qword_27ECF2D08, &qword_242F17388);
  v38 = v49;
  sub_242CA321C(v36, v49, &qword_27ECF2D10, &qword_242F17390);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D28, &qword_242F173A0);
  sub_242CA321C(v37, v38 + *(v39 + 48), &qword_27ECF2D08, &qword_242F17388);
  sub_242C6D138(v20, &qword_27ECF2D08, &qword_242F17388);
  sub_242C6D138(v35, &qword_27ECF2D10, &qword_242F17390);
  sub_242C6D138(v37, &qword_27ECF2D08, &qword_242F17388);
  return sub_242C6D138(v36, &qword_27ECF2D10, &qword_242F17390);
}

uint64_t sub_242D0F28C@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D40, &qword_242F173B0);
  MEMORY[0x28223BE20](v71);
  v3 = (&v58 - v2);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D48, &qword_242F173B8);
  MEMORY[0x28223BE20](v69);
  v68 = &v58 - v4;
  v62 = sub_242F03BB0();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v58 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D50, &qword_242F173C0);
  MEMORY[0x28223BE20](v72);
  v9 = &v58 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D58, &qword_242F173C8);
  MEMORY[0x28223BE20](v65);
  v66 = &v58 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D60, &qword_242F173D0);
  MEMORY[0x28223BE20](v73);
  v67 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D68, &qword_242F173D8);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D70, &qword_242F173E0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v58 - v16);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D78, &qword_242F173E8);
  MEMORY[0x28223BE20](v64);
  v63 = &v58 - v18;
  v19 = type metadata accessor for Zone(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ZoneView(0);
  sub_242D10B7C(*(v1 + *(v23 + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v22, type metadata accessor for Zone);
  v24 = &v22[*(v20 + 52)];
  v25 = *v24;
  v26 = v24[8];
  sub_242D116FC(v22, type metadata accessor for Zone);
  if (v26 == 255)
  {
    v27 = sub_242D10D74();
    v28 = sub_242F04740();
    *v3 = v27;
    v3[1] = v28;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D80, &qword_242F173F0);
    sub_242D11AF4();
    sub_242D11C00();
    v29 = v68;
    sub_242F041C0();
    sub_242CA321C(v29, v9, &qword_27ECF2D48, &qword_242F173B8);
    swift_storeEnumTagMultiPayload();
    sub_242D11CB8();
    sub_242D11DF4();
    sub_242F041C0();

    v30 = v29;
    v31 = &qword_27ECF2D48;
    v32 = &qword_242F173B8;
  }

  else
  {
    v58 = v9;
    if (v26)
    {
      if (v26 == 1)
      {
        v33 = sub_242D10D74();
        v34 = *&v25;
        if (*(&v25 + 1) <= 0.0)
        {
          v35 = 0;
          v36 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          v35 = sub_242D10D74();
          v36 = sub_242D10D74();
          v37 = v59;
          sub_242D0E1FC(v59);
          v38 = v61;
          v39 = v60;
          v40 = v62;
          (*(v61 + 104))(v60, *MEMORY[0x277CDF3C0], v62);
          v41 = sub_242F03BA0();
          v42 = *(v38 + 8);
          v42(v39, v40);
          v42(v37, v40);
          if (v41)
          {
            sub_242F04730();
          }

          else
          {
            sub_242F04750();
          }

          v46 = sub_242F04770();

          v48 = sub_242F04A70();
          v49 = v52;
          v47 = 256;
        }

        v68 = v35;
        *&v75 = v33;
        *(&v75 + 1) = v34;
        LOBYTE(v76) = 1;
        *(&v76 + 1) = v35;
        *&v77 = v36;
        *(&v77 + 1) = v46;
        *&v78 = v47;
        *(&v78 + 1) = v48;
        v79 = v49;
        v84 = v49;
        v82 = v77;
        v83 = v78;
        v80 = v75;
        v81 = v76;

        sub_242D11E80(v35, v36, v46);

        sub_242D11E80(v35, v36, v46);
        sub_242D11ECC(v35, v36, v46);

        v53 = v83;
        v54 = v66;
        *(v66 + 32) = v82;
        *(v54 + 48) = v53;
        *(v54 + 64) = v84;
        v55 = v81;
        *v54 = v80;
        *(v54 + 16) = v55;
        swift_storeEnumTagMultiPayload();
        sub_242CA321C(&v75, v74, &qword_27ECF2DE8, &qword_242F17410);
        v71 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2DD8, &qword_242F17408);
        sub_242D11D70();
        sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8, &qword_242F17408, MEMORY[0x277CE14C0]);
        v56 = v67;
        sub_242F041C0();
        sub_242CA321C(v56, v58, &qword_27ECF2D60, &qword_242F173D0);
        swift_storeEnumTagMultiPayload();
        sub_242D11CB8();
        sub_242D11DF4();
        sub_242F041C0();
        sub_242C6D138(&v75, &qword_27ECF2DE8, &qword_242F17410);
        sub_242D11ECC(v68, v36, v46);

        v30 = v56;
        v31 = &qword_27ECF2D60;
        v32 = &qword_242F173D0;
      }

      else
      {
        v44 = sub_242D10D74();
        _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
        *v17 = v44;
        sub_242CA321C(v17, v3, &qword_27ECF2D70, &qword_242F173E0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D80, &qword_242F173F0);
        sub_242D11AF4();
        sub_242D11C00();
        v45 = v68;
        sub_242F041C0();
        sub_242CA321C(v45, v58, &qword_27ECF2D48, &qword_242F173B8);
        swift_storeEnumTagMultiPayload();
        sub_242D11CB8();
        sub_242D11DF4();
        sub_242F041C0();
        sub_242C6D138(v45, &qword_27ECF2D48, &qword_242F173B8);
        v30 = v17;
        v31 = &qword_27ECF2D70;
        v32 = &qword_242F173E0;
      }
    }

    else
    {
      v43 = sub_242D10D74();
      if (v25)
      {
        sub_242F04A10();
      }

      else
      {
        sub_242F049F0();
      }

      *v17 = v43;
      sub_242CA321C(v17, v14, &qword_27ECF2D70, &qword_242F173E0);
      swift_storeEnumTagMultiPayload();
      sub_242D11AF4();
      v50 = v63;
      sub_242F041C0();
      sub_242C6D138(v17, &qword_27ECF2D70, &qword_242F173E0);
      sub_242CA321C(v50, v66, &qword_27ECF2D78, &qword_242F173E8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2DD8, &qword_242F17408);
      sub_242D11D70();
      sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8, &qword_242F17408, MEMORY[0x277CE14C0]);
      v51 = v67;
      sub_242F041C0();
      sub_242CA321C(v51, v58, &qword_27ECF2D60, &qword_242F173D0);
      swift_storeEnumTagMultiPayload();
      sub_242D11CB8();
      sub_242D11DF4();
      sub_242F041C0();
      sub_242C6D138(v51, &qword_27ECF2D60, &qword_242F173D0);
      v30 = v50;
      v31 = &qword_27ECF2D78;
      v32 = &qword_242F173E8;
    }
  }

  return sub_242C6D138(v30, v31, v32);
}

uint64_t sub_242D0FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BD8, &qword_242F17170);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Component(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v9, &qword_27ECF2730, &qword_242F17940);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_242C6D138(v9, &qword_27ECF2730, &qword_242F17940);
    return (*(v4 + 56))(v19, 1, 1, v3);
  }

  else
  {
    sub_242D11694(v9, v13, type metadata accessor for Component);
    *v6 = sub_242F04A70();
    v6[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C80, &qword_242F172C8);
    sub_242D10188(v13, v18, v6 + *(v16 + 44));
    v17 = v19;
    sub_242CF6B3C(v6, v19, &qword_27ECF2BD8, &qword_242F17170);
    (*(v4 + 56))(v17, 0, 1, v3);
    return sub_242D116FC(v13, type metadata accessor for Component);
  }
}

uint64_t sub_242D10188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a2;
  v37 = a3;
  v4 = sub_242F03720();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v32);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C88, &qword_242F172D0);
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Component(0);
  v38 = *(a1 + *(v13 + 36));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C90, &qword_242F172D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2138, &qword_242F2DFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C98, &qword_242F172E0);
  sub_242C7E000(&qword_27ECF2CA0, &qword_27ECF2C90, &qword_242F172D8, MEMORY[0x277D83980]);
  sub_242D1175C();
  sub_242D112C0(&qword_27ECF2CE8, type metadata accessor for Slot, &protocol conformance descriptor for Slot);
  v35 = v12;
  sub_242F049A0();
  v14 = *(a1 + *(v13 + 32));
  if (v14 != 2 && (v14 & 1) != 0 || (sub_242DD5490()) && (v15 = type metadata accessor for ZoneView(0), sub_242D10B7C(*(v33 + *(v15 + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone, v7, type metadata accessor for Zone), v16 = v7[*(v32 + 32) + 96], sub_242D116FC(v7, type metadata accessor for Zone), v16 == 1))
  {
    v38 = 0x3A706D6F63;
    v39 = 0xE500000000000000;
    (*(v30 + 16))(v29, a1, v31);
    v17 = sub_242F04F90();
    MEMORY[0x245D26660](v17);

    v18 = [objc_allocWithZone(MEMORY[0x277CD9E18]) init];
    v19 = sub_242F04F00();

    [v18 setIdentifier_];

    [v18 setCornerRadius_];
  }

  else
  {
    v18 = 0;
  }

  v20 = *(v8 + 16);
  v22 = v35;
  v21 = v36;
  v23 = v34;
  v20(v36, v35, v34);
  v24 = v37;
  v20(v37, v21, v23);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF0, &qword_242F17300) + 48)] = v18;
  v25 = *(v8 + 8);
  v26 = v18;
  v25(v22, v23);

  return (v25)(v21, v23);
}

uint64_t sub_242D10654@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SlotView(0);
  sub_242D10B7C(a1, a2 + *(v4 + 28), type metadata accessor for Slot);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  swift_storeEnumTagMultiPayload();
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  CGRectGetWidth(v19);
  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  CGRectGetHeight(v20);
  sub_242F04A70();
  sub_242F03C70();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CC8, &qword_242F172F0) + 36));
  *v10 = v16;
  v10[1] = v17;
  v10[2] = v18;
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v6;
  v22.origin.y = v7;
  v22.size.width = v8;
  v22.size.height = v9;
  MidY = CGRectGetMidY(v22);
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CB8, &qword_242F172E8) + 36));
  *v13 = MidX;
  v13[1] = MidY;
  v14 = *(a1 + 14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C98, &qword_242F172E0);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_242D1082C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v24 = a3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2BD8, &qword_242F17170);
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = (&v21 - v5);
  v7 = type metadata accessor for Component(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_242D10B7C(a1, &v21 - v15, type metadata accessor for Component);
  (*(v8 + 56))(v16, 0, 1, v7);
  sub_242CA321C(v16, v13, &qword_27ECF2730, &qword_242F17940);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_242C6D138(v16, &qword_27ECF2730, &qword_242F17940);
    sub_242C6D138(v13, &qword_27ECF2730, &qword_242F17940);
    return (*(v4 + 56))(v24, 1, 1, v23);
  }

  else
  {
    sub_242D11694(v13, v10, type metadata accessor for Component);
    *v6 = sub_242F04A70();
    v6[1] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C80, &qword_242F172C8);
    sub_242D10188(v10, v22, v6 + *(v19 + 44));
    sub_242C6D138(v16, &qword_27ECF2730, &qword_242F17940);
    v20 = v24;
    sub_242CF6B3C(v6, v24, &qword_27ECF2BD8, &qword_242F17170);
    (*(v4 + 56))(v20, 0, 1, v23);
    return sub_242D116FC(v10, type metadata accessor for Component);
  }
}

uint64_t sub_242D10B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_242D10BE8()
{
  result = qword_27ECF2BC0;
  if (!qword_27ECF2BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF23E8, &unk_242F13C40);
    sub_242D112C0(&qword_27ECF2258, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2BC0);
  }

  return result;
}

unint64_t sub_242D10C9C()
{
  result = qword_27ECF2BC8;
  if (!qword_27ECF2BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BB0, &qword_242F17168);
    sub_242C7E000(&qword_27ECF2BD0, &qword_27ECF2BD8, &qword_242F17170, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2BC8);
  }

  return result;
}

uint64_t sub_242D10D74()
{
  v1 = sub_242F03E20();
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Zone(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + *(type metadata accessor for ZoneView(0) + 20) + 8) + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone;
  sub_242D10B7C(v8, v7, type metadata accessor for Zone);
  v9 = &v7[*(v5 + 52)];
  v10 = v9[8] ^ 0xFF;
  v11 = *(v9 + 3);
  v12 = sub_242D116FC(v7, type metadata accessor for Zone);
  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v8 + *(v5 + 44);
  if (*(v16 + 9))
  {
    v25 = v15;
    sub_242D11F18(v12, v13, v14);
  }

  else
  {
    if (*(v16 + 8))
    {
      v25 = v15;
      sub_242D11F6C(v12, v13, v14);
    }

    else
    {
      v17 = *v16;
      v18 = *(sub_242F03E30() + 20);
      v19 = *MEMORY[0x277CE0118];
      v20 = sub_242F04070();
      (*(*(v20 - 8) + 104))(&v3[v18], v19, v20);
      *v3 = v17;
      *(v3 + 1) = v17;
      *&v3[*(v1 + 20)] = v15;
      sub_242D112C0(&qword_27ECF2E08, MEMORY[0x277CDFBC8], MEMORY[0x277CDFBC0]);
    }

    v25 = COERCE_DOUBLE(sub_242F049C0());
    sub_242D11FC0(*&v25, v21, v22);
  }

  return sub_242F049C0();
}

uint64_t sub_242D11000(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242D11038(uint64_t a1)
{
  type metadata accessor for Zone(319);
  if (v1 <= 0x3F)
  {
    sub_242D1111C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_242D1111C(uint64_t a1)
{
  if (!qword_27ECF2C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C10, &qword_242F17268);
    v1 = sub_242F03AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF2C08);
    }
  }
}

void sub_242D111A8(uint64_t a1)
{
  sub_242CA3094(319);
  if (v1 <= 0x3F)
  {
    sub_242D1122C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242D1122C(uint64_t a1)
{
  if (!qword_27ECF2C30)
  {
    type metadata accessor for ZoneModel(255);
    sub_242D112C0(&qword_27ECF2C38, type metadata accessor for ZoneModel, &protocol conformance descriptor for ZoneModel);
    v1 = sub_242F03DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF2C30);
    }
  }
}

uint64_t sub_242D112C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_242D11308()
{
  result = qword_27ECF2C40;
  if (!qword_27ECF2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BE8, &qword_242F171A8);
    sub_242D113C0();
    sub_242C7E000(&qword_27ECF2C68, &qword_27ECF2BF0, &qword_242F171B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C40);
  }

  return result;
}

unint64_t sub_242D113C0()
{
  result = qword_27ECF2C48;
  if (!qword_27ECF2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2BA0, &qword_242F17138);
    sub_242D11478();
    sub_242C7E000(&qword_27ECF2C60, &qword_27ECF2BE0, &qword_242F17178, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C48);
  }

  return result;
}

unint64_t sub_242D11478()
{
  result = qword_27ECF2C50;
  if (!qword_27ECF2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2B98, &qword_242F17130);
    sub_242C7E000(&qword_27ECF2C58, &qword_27ECF2B90, &qword_242F17128, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C50);
  }

  return result;
}

uint64_t sub_242D11530@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a2 = v4;
  return result;
}

uint64_t sub_242D115B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D1162C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  if (a13 <= 1u)
  {
  }

  return v13;
}

unint64_t sub_242D11640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2C78;
  if (!qword_27ECF2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2C78);
  }

  return result;
}

uint64_t sub_242D11694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242D116FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242D1175C()
{
  result = qword_27ECF2CA8;
  if (!qword_27ECF2CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2C98, &qword_242F172E0);
    sub_242D11814();
    sub_242C7E000(&qword_27ECF2CD8, &qword_27ECF2CE0, &qword_242F172F8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CA8);
  }

  return result;
}

unint64_t sub_242D11814()
{
  result = qword_27ECF2CB0;
  if (!qword_27ECF2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2CB8, &qword_242F172E8);
    sub_242D118A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CB0);
  }

  return result;
}

unint64_t sub_242D118A0()
{
  result = qword_27ECF2CC0;
  if (!qword_27ECF2CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2CC8, &qword_242F172F0);
    sub_242D112C0(&qword_27ECF2CD0, type metadata accessor for SlotView, &protocol conformance descriptor for SlotView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2CC0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(type metadata accessor for ZoneView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_242F03BB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_242D11AF4()
{
  result = qword_27ECF2D88;
  if (!qword_27ECF2D88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D70, &qword_242F173E0);
    sub_242D11BAC(v1, v2, v3);
    sub_242C7E000(&qword_27ECF2D98, &qword_27ECF2DA0, &qword_242F173F8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2D88);
  }

  return result;
}

unint64_t sub_242D11BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2D90;
  if (!qword_27ECF2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2D90);
  }

  return result;
}

unint64_t sub_242D11C00()
{
  result = qword_27ECF2DA8;
  if (!qword_27ECF2DA8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D80, &qword_242F173F0);
    sub_242D11BAC(v1, v2, v3);
    sub_242C7E000(&qword_27ECF2DB0, &qword_27ECF2DB8, &qword_242F17400, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DA8);
  }

  return result;
}

unint64_t sub_242D11CB8()
{
  result = qword_27ECF2DC0;
  if (!qword_27ECF2DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D60, &qword_242F173D0);
    sub_242D11D70();
    sub_242C7E000(&qword_27ECF2DD0, &qword_27ECF2DD8, &qword_242F17408, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DC0);
  }

  return result;
}

unint64_t sub_242D11D70()
{
  result = qword_27ECF2DC8;
  if (!qword_27ECF2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D78, &qword_242F173E8);
    sub_242D11AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DC8);
  }

  return result;
}

unint64_t sub_242D11DF4()
{
  result = qword_27ECF2DE0;
  if (!qword_27ECF2DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2D48, &qword_242F173B8);
    sub_242D11AF4();
    sub_242D11C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DE0);
  }

  return result;
}

uint64_t sub_242D11E80(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242D11ECC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_242D11F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2DF0;
  if (!qword_27ECF2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DF0);
  }

  return result;
}

unint64_t sub_242D11F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2DF8;
  if (!qword_27ECF2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2DF8);
  }

  return result;
}

unint64_t sub_242D11FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF2E00;
  if (!qword_27ECF2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF2E00);
  }

  return result;
}

uint64_t sub_242D12194(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_242F04700();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v6);
  result = sub_242F047B0();
  *a4 = result;
  return result;
}

uint64_t sub_242D125C8(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_242F04700();
  v7 = MEMORY[0x28223BE20](v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0], v7);
  result = sub_242F047A0();
  *a5 = result;
  return result;
}

uint64_t sub_242D126E0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_242D12740(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = 0x32656E6F7ALL;
  }

  else
  {
    v3 = 0x31656E6F7ALL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    v6 = *(v5 + v4) ? 0x32656E6F7ALL : 0x31656E6F7ALL;
    if (v6 == v3)
    {
      break;
    }

    v7 = sub_242F06110();
    swift_bridgeObjectRelease_n();
    if (v7)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  swift_bridgeObjectRelease_n();
  return v4;
}

void sub_242D1282C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Zone(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_242D39B5C(a3 + v14 + v15 * v12, v11, type metadata accessor for Zone);
      v16 = a1(v11);
      if (v3)
      {
        sub_242D39AFC(v11, type metadata accessor for Zone);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_242D39C68(v11, v23, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_242E3BF10((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_242D39C68(v23, v13 + v14 + v19 * v15, type metadata accessor for Zone);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_242D39AFC(v11, type metadata accessor for Zone);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_242D12AB8()
{
  v0 = sub_242F039A0();
  __swift_allocate_value_buffer(v0, qword_27ED5D270);
  __swift_project_value_buffer(v0, qword_27ED5D270);
  return sub_242F03990();
}

uint64_t sub_242D12B70(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3158, &qword_242F17D18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0, &qword_242F17568);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D12D4C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3150, &qword_242F17D10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0, &qword_242F175B8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D12EEC()
{
  v1 = type metadata accessor for Zone(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones);
  if (v9)
  {

    return v9;
  }

  v21 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones;
  v23 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v22 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    *(v22 + v21) = v9;

    return v9;
  }

  v14 = 0;
  v26 = v8 + 96;
  v9 = MEMORY[0x277D84F90];
  v15 = v23;
  v24 = v12;
  v25 = v4;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    if (v26[*(v15 + 32)])
    {
      result = sub_242D39AFC(v8, type metadata accessor for Zone);
    }

    else
    {
      sub_242D39C68(v8, v4, type metadata accessor for Zone);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_242E3BF10(0, *(v9 + 16) + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_242E3BF10((v19 > 1), v20 + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      *(v9 + 16) = v20 + 1;
      v4 = v25;
      result = sub_242D39C68(v25, v9 + v16 + v20 * v17, type metadata accessor for Zone);
      v12 = v24;
    }

    if (v12 == ++v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D131A0()
{
  v1 = type metadata accessor for Zone(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones);
  if (v9)
  {

    return v9;
  }

  v21 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones;
  v23 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v22 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    *(v22 + v21) = v9;

    return v9;
  }

  v14 = 0;
  v26 = v8 + 96;
  v9 = MEMORY[0x277D84F90];
  v15 = v23;
  v24 = v12;
  v25 = v4;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    if (v26[*(v15 + 32)] == 1)
    {
      sub_242D39C68(v8, v4, type metadata accessor for Zone);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_242E3BF10(0, *(v9 + 16) + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_242E3BF10((v19 > 1), v20 + 1, 1);
        v15 = v23;
        v9 = v27;
      }

      *(v9 + 16) = v20 + 1;
      v4 = v25;
      result = sub_242D39C68(v25, v9 + v16 + v20 * v17, type metadata accessor for Zone);
      v12 = v24;
    }

    else
    {
      result = sub_242D39AFC(v8, type metadata accessor for Zone);
    }

    if (v12 == ++v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13458()
{
  v1 = type metadata accessor for Zone(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones);
  if (v9)
  {

    return v9;
  }

  v25 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones;
  v27 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v26 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v29 = v12;
  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_19:

    *(v26 + v25) = v9;

    return v9;
  }

  v14 = 0;
  v9 = MEMORY[0x277D84F90];
  v15 = v27;
  v28 = v4;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    v18 = v8[*(v15 + 40)];
    if (v18 != 2)
    {
      if ((v18 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
LABEL_13:
        sub_242D39C68(v8, v4, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v9 + 16) + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        v22 = *(v9 + 16);
        v21 = *(v9 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_242E3BF10((v21 > 1), v22 + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        *(v9 + 16) = v22 + 1;
        v23 = v9 + v16 + v22 * v17;
        v4 = v28;
        result = sub_242D39C68(v28, v23, type metadata accessor for Zone);
        goto LABEL_6;
      }

      v19 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        goto LABEL_13;
      }
    }

    result = sub_242D39AFC(v8, type metadata accessor for Zone);
LABEL_6:
    if (v29 == ++v14)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13758()
{
  v1 = type metadata accessor for Zone(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones);
  if (v9)
  {

    return v9;
  }

  v25 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones;
  v27 = v6;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v26 = v0;
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);

  v29 = v12;
  if (!v12)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_18:

    *(v26 + v25) = v9;

    return v9;
  }

  v14 = 0;
  v9 = MEMORY[0x277D84F90];
  v15 = v27;
  v28 = v4;
  while (v14 < *(v11 + 16))
  {
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = *(v2 + 72);
    sub_242D39B5C(v11 + v16 + v17 * v14, v8, type metadata accessor for Zone);
    v18 = v8[*(v15 + 40)];
    if (v18 != 2)
    {
      if (v18)
      {
        swift_bridgeObjectRelease_n();
LABEL_12:
        sub_242D39C68(v8, v4, type metadata accessor for Zone);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BF10(0, *(v9 + 16) + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        v22 = *(v9 + 16);
        v21 = *(v9 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_242E3BF10((v21 > 1), v22 + 1, 1);
          v15 = v27;
          v9 = v30;
        }

        *(v9 + 16) = v22 + 1;
        v23 = v9 + v16 + v22 * v17;
        v4 = v28;
        result = sub_242D39C68(v28, v23, type metadata accessor for Zone);
        goto LABEL_6;
      }

      v19 = sub_242F06110();
      swift_bridgeObjectRelease_n();
      if (v19)
      {
        goto LABEL_12;
      }
    }

    result = sub_242D39AFC(v8, type metadata accessor for Zone);
LABEL_6:
    if (v29 == ++v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D13A58(uint64_t a1, uint64_t a2, int a3)
{
  v64 = a3;
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3178, &qword_242F4AA50);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = (&v49 - v5);
  v58 = type metadata accessor for PopoverModel(0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v49 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Zone(0);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = v8;
  v63 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v61 = type metadata accessor for Component(0);
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v12;
  MEMORY[0x28223BE20](v13);
  v52 = &v49 - v14;
  v15 = type metadata accessor for RequestContentModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  v50 = *(v19 - 8);
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v51 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = (&v49 - v25);
  sub_242CA321C(a1, &v49 - v25, &qword_27ECF2EC8, &qword_242F175C0);
  v59 = a1;
  sub_242CA321C(a1, v23, &qword_27ECF2EC8, &qword_242F175C0);
  if ((*(v16 + 48))(v23, 1, v15) != 1)
  {
    sub_242D39B5C(v23, v18, type metadata accessor for RequestContentModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = v65;
    if (EnumCaseMultiPayload)
    {
      sub_242D39AFC(v18, type metadata accessor for RequestContentModel);
    }

    else
    {
      v32 = v18[3];
      v73 = v18[2];
      v74 = v32;
      v75 = v18[4];
      v33 = v18[1];
      v71 = *v18;
      v72 = v33;
      if ((BYTE9(v74) & 1) == 0)
      {
        sub_242D39AFC(v23, type metadata accessor for RequestContentModel);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        sub_242D23678(v29, &v66, v11);
        v35 = v62;
        if ((*(v62 + 48))(v11, 1, v61) != 1)
        {
          sub_242D3A090(&v71);
          v37 = v52;
          v60 = type metadata accessor for Component;
          sub_242D39C68(v11, v52, type metadata accessor for Component);
          v61 = swift_allocObject();
          swift_weakInit();
          v38 = v51;
          sub_242CA321C(v59, v51, &qword_27ECF2EC8, &qword_242F175C0);
          sub_242D39B5C(v29, v63, type metadata accessor for Zone);
          v39 = v37;
          v40 = v54;
          sub_242D39C68(v39, v54, type metadata accessor for Component);
          v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
          v42 = (v20 + *(v55 + 80) + v41) & ~*(v55 + 80);
          v43 = (v56 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
          v44 = (*(v35 + 80) + v43 + 8) & ~*(v35 + 80);
          v45 = v44 + v53;
          v28 = swift_allocObject();
          sub_242CF6B3C(v38, v28 + v41, &qword_27ECF2EC8, &qword_242F175C0);
          sub_242D39C68(v63, v28 + v42, type metadata accessor for Zone);
          *(v28 + v43) = v61;
          v46 = v28 + v44;
          v29 = v65;
          sub_242D39C68(v40, v46, v60);
          v30 = v64;
          *(v28 + v45) = v64 & 1;
          v27 = sub_242D3D698;
          goto LABEL_9;
        }

        sub_242C6D138(v11, &qword_27ECF2730, &qword_242F17940);
        v68 = v73;
        v69 = v74;
        v70 = v75;
        v66 = v71;
        v67 = v72;
        v36 = v60;
        sub_242D2614C(&v66, v60);
        sub_242C6D138(v26, &qword_27ECF2EC8, &qword_242F175C0);
        sub_242D3A090(&v71);
        if ((*(v57 + 48))(v36, 1, v58) == 1)
        {
          sub_242C6D138(v36, &qword_27ECF3178, &qword_242F4AA50);
          (*(v16 + 56))(v26, 1, 1, v15);
        }

        else
        {
          v47 = v36;
          v48 = v49;
          sub_242D39C68(v47, v49, type metadata accessor for PopoverModel);
          sub_242D39C68(v48, v26, type metadata accessor for PopoverModel);
          swift_storeEnumTagMultiPayload();
          (*(v16 + 56))(v26, 0, 1, v15);
        }

        goto LABEL_8;
      }

      sub_242D3A090(&v71);
    }

    sub_242D39AFC(v23, type metadata accessor for RequestContentModel);
LABEL_8:
    v27 = 0;
    v28 = 0;
    v30 = v64;
    goto LABEL_9;
  }

  sub_242C6D138(v23, &qword_27ECF2EC8, &qword_242F175C0);
  v27 = 0;
  v28 = 0;
  v29 = v65;
  v30 = v64;
LABEL_9:
  sub_242D2675C(v26, v29, v27, v28, v30 & 1);
  sub_242C655DC(v27, v28);
  return sub_242C6D138(v26, &qword_27ECF2EC8, &qword_242F175C0);
}

uint64_t sub_242D143A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_242CA321C(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_242D1445C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_242CA321C(v2 + v4, a2, &qword_27ECF2EC8, &qword_242F175C0);
}

uint64_t sub_242D144E0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v33 - v11;
  v12 = type metadata accessor for Zone(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = *a2;
  swift_beginAccess();
  v42 = v19;
  sub_242D3B630(a1, v3 + v19);
  v20 = swift_endAccess();
  result = a3(v20);
  v41 = *(result + 16);
  if (v41)
  {
    v34 = a1;
    v35 = v9;
    v22 = 0;
    v23 = *(v13 + 80);
    v36 = v3;
    v37 = (v23 + 32) & ~v23;
    v39 = v13;
    v40 = result + v37;
    v38 = result;
    while (v22 < *(result + 16))
    {
      v25 = *(v13 + 72);
      sub_242D39B5C(v40 + v25 * v22, v18, type metadata accessor for Zone);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      v26 = v43;

      v27 = type metadata accessor for Layout(0);
      if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
      {
        v28 = *(v26 + *(v27 + 24));

        sub_242C6D138(v26, &qword_27ECF2F98, &qword_242F17960);
        result = v28 + v37;
        v29 = -*(v28 + 16);
        v30 = -1;
        while (1)
        {
          if (v29 + v30 == -1)
          {

            v24 = 0;
            goto LABEL_13;
          }

          if (++v30 >= *(v28 + 16))
          {
            break;
          }

          v31 = result + v25;
          sub_242D39B5C(result, v15, type metadata accessor for Zone);
          sub_242F03720();
          sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v32 = sub_242F04EE0();
          sub_242D39AFC(v15, type metadata accessor for Zone);
          result = v31;
          if (v32)
          {

            v24 = 1;
LABEL_13:
            v9 = v35;
            v3 = v36;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      sub_242C6D138(v26, &qword_27ECF2F98, &qword_242F17960);
      v24 = 0;
LABEL_4:
      ++v22;
      sub_242CA321C(v3 + v42, v9, &qword_27ECF2EC8, &qword_242F175C0);
      sub_242D13A58(v9, v18, v24);
      sub_242C6D138(v9, &qword_27ECF2EC8, &qword_242F175C0);
      sub_242D39AFC(v18, type metadata accessor for Zone);
      result = v38;
      v13 = v39;
      if (v22 == v41)
      {

        a1 = v34;
        return sub_242C6D138(a1, &qword_27ECF2EC8, &qword_242F175C0);
      }
    }

    __break(1u);
  }

  else
  {

    return sub_242C6D138(a1, &qword_27ECF2EC8, &qword_242F175C0);
  }

  return result;
}

uint64_t sub_242D149A4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128, &qword_242F17CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D14B80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D14C58(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3148, &qword_242F17D08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8, &qword_242F17660);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D14E34(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128, &qword_242F17CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D15010(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = sub_242F03A90();
  return a7(v8);
}

uint64_t sub_242D150A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v57 - v3;
  v75 = type metadata accessor for Component(0);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v57 - v7;
  MEMORY[0x28223BE20](v8);
  v59 = &v57 - v9;
  v57 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v57 - v13;
  v14 = type metadata accessor for Zone(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v18 = *(v81 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v81) = v18 != 0;

  sub_242F03A90();
  result = sub_242D12EEC();
  v74 = *(result + 16);
  if (!v74)
  {
  }

  v20 = 0;
  v21 = *(v15 + 80);
  v69 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v72 = v15;
  v73 = result + ((v21 + 32) & ~v21);
  v22 = v62;
  v23 = v68;
  v60 = v10;
  v61 = v1;
  v71 = result;
  while (v20 < *(result + 16))
  {
    sub_242D39B5C(v73 + *(v15 + 72) * v20, v17, type metadata accessor for Zone);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v24 = v81;
    if (*(v81 + 16) && (v25 = sub_242CE5568(v17), (v26 & 1) != 0))
    {
      sub_242D39B5C(*(v24 + 56) + *(v10 + 72) * v25, v22, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);

      sub_242D39C68(v22, v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
      v27 = *(v1 + v69);
      if (*(v27 + 16))
      {
        v28 = sub_242CE5568(v17);
        if (v29)
        {
          v30 = (*(v27 + 56) + 112 * v28);
          v32 = v30[1];
          v31 = v30[2];
          v81 = *v30;
          v82 = v32;
          v83 = v31;
          v33 = *(v30 + 89);
          v35 = v30[4];
          v34 = v30[5];
          v84 = v30[3];
          *v85 = v35;
          *&v85[16] = v34;
          *&v85[25] = v33;
          v36 = v81;
          v76 = v82;
          v77 = *(&v81 + 1);
          v67 = *(&v82 + 1);
          v37 = v83;
          v65 = v84;
          v66 = *(&v83 + 1);
          v64 = *(&v84 + 1);
          v63 = *&v85[8];
          v38 = v35;
          v39 = *&v85[24];
          v40 = v33 >> 56;
          v41 = HIBYTE(v33);
          sub_242CA321C(&v81, v80, &qword_27ECF21A8, &qword_242F17990);
          sub_242D1162C(v77, v76, v67, v37, v66, v65, v64, v38, v63, *(&v63 + 1), v39, v40, v41);
          v42 = *(*v36 + 144);
          swift_beginAccess();
          v43 = *(v36 + v42);

          v77 = *(v43 + 16);
          if (v77)
          {
            v44 = 0;
            v76 = v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
            while (v44 < *(v43 + 16))
            {
              sub_242D39B5C(v76 + *(v78 + 72) * v44, v5, type metadata accessor for Component);
              v45 = *&v5[*(v75 + 36)];
              if (*(v45 + 16))
              {
                v46 = type metadata accessor for Slot(0);
                v47 = v70;
                sub_242CA321C(v45 + *(v46 + 36) + ((*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80)), v70, &qword_27ECF0B08, &unk_242F17EB0);
                v48 = type metadata accessor for Instrument(0);
                v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
                sub_242C6D138(v47, &qword_27ECF0B08, &unk_242F17EB0);
                if (v49 == 1)
                {

                  v50 = v58;
                  sub_242D39C68(v5, v58, type metadata accessor for Component);
                  sub_242D39C68(v50, v59, type metadata accessor for Component);
                  sub_242F03720();
                  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                  v51 = sub_242F04EE0();
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v52 = v61;
                  v53 = sub_242F03A70();
                  v55 = v54;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v79 = *v55;
                  *v55 = 0x8000000000000000;
                  sub_242CDEDCC((v51 & 1) == 0, v17, isUniquelyReferenced_nonNull_native);
                  *v55 = v79;

                  v53(v80, 0);
                  v1 = v52;

                  v23 = v68;

                  sub_242D39AFC(v59, type metadata accessor for Component);
                  sub_242D39AFC(v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
                  sub_242D39AFC(v17, type metadata accessor for Zone);
                  v10 = v60;
                  v22 = v62;
                  goto LABEL_19;
                }
              }

              ++v44;
              result = sub_242D39AFC(v5, type metadata accessor for Component);
              if (v77 == v44)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            break;
          }

LABEL_16:

          v10 = v60;
          v1 = v61;
          v22 = v62;
          v23 = v68;
        }
      }

      sub_242D39AFC(v23, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    }

    else
    {
    }

    sub_242D39AFC(v17, type metadata accessor for Zone);
LABEL_19:
    ++v20;
    result = v71;
    v15 = v72;
    if (v20 == v74)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_242D15994(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3140, &qword_242F17D00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00, &qword_242F176F8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D15B80(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3138, &qword_242F17CF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10, &qword_242F17748);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D15D5C(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128, &qword_242F17CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D15F10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90, &qword_242F17958);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_242CA321C(a1, &v10 - v7, &qword_27ECF2F90, &qword_242F17958);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v8, v5, &qword_27ECF2F90, &qword_242F17958);

  sub_242F03A90();
  sub_242D16044();
  return sub_242C6D138(v8, &qword_27ECF2F90, &qword_242F17958);
}

uint64_t sub_242D16044()
{
  v0 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90, &qword_242F17958);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v12 = *(v1 + 48);
  v13 = v12(v11, 1, v0);
  sub_242C6D138(v11, &qword_27ECF2F90, &qword_242F17958);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    if (v12(v8, 1, v0))
    {
      sub_242C6D138(v8, &qword_27ECF2F90, &qword_242F17958);
      v15 = type metadata accessor for Layout(0);
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v14 = 0;
    }

    else
    {
      v16 = v19;
      sub_242D39B5C(v8, v19, type metadata accessor for ClusterTransitionCoordinator.LayoutTransition);
      sub_242C6D138(v8, &qword_27ECF2F90, &qword_242F17958);
      sub_242CA321C(v16 + *(v0 + 24), v5, &qword_27ECF2F98, &qword_242F17960);
      sub_242D39AFC(v16, type metadata accessor for ClusterTransitionCoordinator.LayoutTransition);
      v17 = type metadata accessor for Layout(0);
      v14 = (*(*(v17 - 8) + 48))(v5, 1, v17) != 1;
    }

    sub_242C6D138(v5, &qword_27ECF2F98, &qword_242F17960);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v14;

  return sub_242F03A90();
}

uint64_t sub_242D16434(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3130, &qword_242F17CF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28, &qword_242F177E0);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D165E8@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a4 = v6;
  return result;
}

uint64_t sub_242D16678(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D166FC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v3;
}

uint64_t sub_242D16768(_BYTE *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3128, &qword_242F17CE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  (v11)(&v13 - v9, a1, v3, v8);
  v11(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D16940(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - v15;
  sub_242CA321C(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v16, v13, a5, a6);

  sub_242F03A90();
  return sub_242C6D138(v16, a5, a6);
}

uint64_t sub_242D16A7C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3120, &qword_242F17CE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40, &qword_242F17878);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D16C30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242D16CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242D16D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80, &qword_242F17948);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(a1, v7, &qword_27ECF2F80, &qword_242F17948);

  sub_242F03A90();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v8 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8) != 1;
  sub_242C6D138(v4, &qword_27ECF2F80, &qword_242F17948);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[15] = v9;

  sub_242F03A90();
  return sub_242C6D138(a1, &qword_27ECF2F80, &qword_242F17948);
}

uint64_t sub_242D16F50(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3118, &qword_242F17CD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50, &qword_242F178C8);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D17104@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  *a4 = v6;
  return result;
}

uint64_t sub_242D17194(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242D17220(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v3;
}

uint64_t sub_242D1728C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t (*sub_242D172FC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_242F03A70();
  return sub_242D173A0;
}

void sub_242D173A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_242D17408(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242D17484(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68, &qword_242F17920);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242D17624(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242D1769C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68, &qword_242F17920);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_242D177D4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F68, &qword_242F17920);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
  sub_242F03A50();
  swift_endAccess();
  return sub_242D17944;
}

void sub_242D17944(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_242F03A60();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_242F03A60();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_242D17AAC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3E218;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4, v5);
}

uint64_t sub_242D17B4C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3E19C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3, v4);
  sub_242C5573C(v6, v5);
  sub_242C655DC(v8, v9);
  sub_242D17C30();
  return sub_242C655DC(v6, v5);
}

uint64_t sub_242D17C30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v67 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v62 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D8, &unk_242F17F40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v10 = *(v9 + 64);
  v63 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v62 = (v11 + 63) >> 6;
  v68 = v9;
  v69 = v0;

  v15 = 0;
  v16 = &qword_27ECF2F78;
  v17 = &qword_242F17938;
  v64 = v8;
  v65 = v5;
  if (v13)
  {
    while (1)
    {
      v18 = v15;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v68;
      v24 = v66;
      sub_242CA321C(*(v68 + 48) + *(v67 + 72) * v22, v66, &qword_27ECFC780, &qword_242F17930);
      v25 = (*(v23 + 56) + 112 * v22);
      v26 = *(v25 + 89);
      v28 = v25[4];
      v27 = v25[5];
      v75 = v25[3];
      v76 = v28;
      v77[0] = v27;
      *(v77 + 9) = v26;
      v30 = v25[1];
      v29 = v25[2];
      v72 = *v25;
      v73 = v30;
      v74 = v29;
      v17 = &qword_242F17938;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78, &qword_242F17938);
      v32 = &v65[*(v31 + 48)];
      v33 = v24;
      v5 = v65;
      sub_242CF6B3C(v33, v65, &qword_27ECFC780, &qword_242F17930);
      v34 = v77[0];
      *(v32 + 4) = v76;
      *(v32 + 5) = v34;
      *(v32 + 89) = *(v77 + 9);
      v35 = v73;
      *v32 = v72;
      *(v32 + 1) = v35;
      v36 = v75;
      *(v32 + 2) = v74;
      *(v32 + 3) = v36;
      v16 = &qword_27ECF2F78;
      (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
      sub_242CA321C(&v72, v71, &qword_27ECF21A8, &qword_242F17990);
      v20 = v18;
      v8 = v64;
LABEL_13:
      sub_242CF6B3C(v5, v8, &qword_27ECF31D8, &unk_242F17F40);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      if ((*(*(v37 - 8) + 48))(v8, 1, v37) == 1)
      {
      }

      v38 = &v8[*(v37 + 48)];
      v39 = *(v38 + 3);
      v40 = *(v38 + 5);
      v76 = *(v38 + 4);
      v77[0] = v40;
      *(v77 + 9) = *(v38 + 89);
      v41 = *(v38 + 1);
      v72 = *v38;
      v73 = v41;
      v74 = *(v38 + 2);
      v75 = v39;
      v42 = v72;
      v43 = *(v38 + 24);
      v44 = *(v38 + 40);
      v78 = *(v38 + 8);
      v79 = v43;
      v45 = *(v38 + 56);
      v46 = *(v38 + 72);
      v47 = *(v38 + 88);
      v84 = v38[104];
      v82 = v46;
      v83 = v47;
      v80 = v44;
      v81 = v45;
      sub_242CA321C(&v72, v71, &qword_27ECF21A8, &qword_242F17990);
      sub_242CF3AF4(&v72 + 8);

      v48 = swift_allocObject();
      v70 = v20;
      v49 = v8;
      v50 = v5;
      v51 = v17;
      v52 = v16;
      v53 = v48;
      swift_weakInit();
      v54 = swift_allocObject();
      v55 = v80;
      *(v54 + 72) = v81;
      v56 = v83;
      *(v54 + 88) = v82;
      *(v54 + 104) = v56;
      v57 = v79;
      *(v54 + 24) = v78;
      *(v54 + 40) = v57;
      *(v54 + 16) = v53;
      *(v54 + 120) = v84;
      *(v54 + 56) = v55;
      v58 = (v42 + *(*v42 + 128));
      swift_beginAccess();
      v59 = *v58;
      v60 = v58[1];
      *v58 = sub_242D3E188;
      v58[1] = v54;
      v16 = v52;
      v17 = v51;
      v5 = v50;
      v8 = v49;
      sub_242C655DC(v59, v60);

      result = sub_242C6D138(v49, &qword_27ECFC780, &qword_242F17930);
      v15 = v70;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v62 <= v15 + 1)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = v62;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v62)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
        (*(*(v61 - 8) + 56))(v5, 1, 1, v61);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v63 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D18198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  v8 = type metadata accessor for Instrument(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for Component(0) + 36));
  if (!*(v12 + 16))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_242C6D138(v7, &qword_27ECF0B08, &unk_242F17EB0);
  }

  v13 = type metadata accessor for Slot(0);
  sub_242CA321C(v12 + *(v13 + 36) + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), v7, &qword_27ECF0B08, &unk_242F17EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_242C6D138(v7, &qword_27ECF0B08, &unk_242F17EB0);
  }

  sub_242D39C68(v7, v11, type metadata accessor for Instrument);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear;
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 8);
    sub_242C5573C(v17, v16);

    if (v17)
    {
      v18 = *(a3 + 80);
      v22[4] = *(a3 + 64);
      v22[5] = v18;
      v23 = *(a3 + 96);
      v19 = *(a3 + 16);
      v22[0] = *a3;
      v22[1] = v19;
      v20 = *(a3 + 48);
      v22[2] = *(a3 + 32);
      v22[3] = v20;
      v17(v11, v22);
      sub_242C655DC(v17, v16);
    }
  }

  return sub_242D39AFC(v11, type metadata accessor for Instrument);
}

uint64_t (*sub_242D1847C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_242D184E0;
}

uint64_t sub_242D184F8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3E218;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4, v5);
}

uint64_t sub_242D18598(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3E19C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3, v4);
  return sub_242C655DC(v8, v9);
}

uint64_t sub_242D1866C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6, v7);
}

uint64_t sub_242D1872C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_242D3B5C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_242C5573C(v4, v5);
}

uint64_t sub_242D187CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_242D3B59C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_242C5573C(v3, v4);
  sub_242C5573C(v6, v5);
  sub_242C655DC(v8, v9);
  sub_242D188B0();
  return sub_242C655DC(v6, v5);
}

uint64_t sub_242D188B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v67 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = &v62 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D8, &unk_242F17F40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v10 = *(v9 + 64);
  v63 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v62 = (v11 + 63) >> 6;
  v68 = v9;
  v69 = v0;

  v15 = 0;
  v16 = &qword_27ECF2F78;
  v17 = &qword_242F17938;
  v64 = v8;
  v65 = v5;
  if (v13)
  {
    while (1)
    {
      v18 = v15;
LABEL_12:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v68;
      v24 = v66;
      sub_242CA321C(*(v68 + 48) + *(v67 + 72) * v22, v66, &qword_27ECFC780, &qword_242F17930);
      v25 = (*(v23 + 56) + 112 * v22);
      v26 = *(v25 + 89);
      v28 = v25[4];
      v27 = v25[5];
      v75 = v25[3];
      v76 = v28;
      v77[0] = v27;
      *(v77 + 9) = v26;
      v30 = v25[1];
      v29 = v25[2];
      v72 = *v25;
      v73 = v30;
      v74 = v29;
      v17 = &qword_242F17938;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78, &qword_242F17938);
      v32 = &v65[*(v31 + 48)];
      v33 = v24;
      v5 = v65;
      sub_242CF6B3C(v33, v65, &qword_27ECFC780, &qword_242F17930);
      v34 = v77[0];
      *(v32 + 4) = v76;
      *(v32 + 5) = v34;
      *(v32 + 89) = *(v77 + 9);
      v35 = v73;
      *v32 = v72;
      *(v32 + 1) = v35;
      v36 = v75;
      *(v32 + 2) = v74;
      *(v32 + 3) = v36;
      v16 = &qword_27ECF2F78;
      (*(*(v31 - 8) + 56))(v5, 0, 1, v31);
      sub_242CA321C(&v72, v71, &qword_27ECF21A8, &qword_242F17990);
      v20 = v18;
      v8 = v64;
LABEL_13:
      sub_242CF6B3C(v5, v8, &qword_27ECF31D8, &unk_242F17F40);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
      if ((*(*(v37 - 8) + 48))(v8, 1, v37) == 1)
      {
      }

      v38 = &v8[*(v37 + 48)];
      v39 = *(v38 + 3);
      v40 = *(v38 + 5);
      v76 = *(v38 + 4);
      v77[0] = v40;
      *(v77 + 9) = *(v38 + 89);
      v41 = *(v38 + 1);
      v72 = *v38;
      v73 = v41;
      v74 = *(v38 + 2);
      v75 = v39;
      v42 = v72;
      v43 = *(v38 + 24);
      v44 = *(v38 + 40);
      v78 = *(v38 + 8);
      v79 = v43;
      v45 = *(v38 + 56);
      v46 = *(v38 + 72);
      v47 = *(v38 + 88);
      v84 = v38[104];
      v82 = v46;
      v83 = v47;
      v80 = v44;
      v81 = v45;
      sub_242CA321C(&v72, v71, &qword_27ECF21A8, &qword_242F17990);
      sub_242CF3AF4(&v72 + 8);

      v48 = swift_allocObject();
      v70 = v20;
      v49 = v8;
      v50 = v5;
      v51 = v17;
      v52 = v16;
      v53 = v48;
      swift_weakInit();
      v54 = swift_allocObject();
      v55 = v80;
      *(v54 + 72) = v81;
      v56 = v83;
      *(v54 + 88) = v82;
      *(v54 + 104) = v56;
      v57 = v79;
      *(v54 + 24) = v78;
      *(v54 + 40) = v57;
      *(v54 + 16) = v53;
      *(v54 + 120) = v84;
      *(v54 + 56) = v55;
      v58 = (v42 + *(*v42 + 136));
      swift_beginAccess();
      v59 = *v58;
      v60 = v58[1];
      *v58 = sub_242D3E110;
      v58[1] = v54;
      v16 = v52;
      v17 = v51;
      v5 = v50;
      v8 = v49;
      sub_242C655DC(v59, v60);

      result = sub_242C6D138(v49, &qword_27ECFC780, &qword_242F17930);
      v15 = v70;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v62 <= v15 + 1)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = v62;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v62)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
        (*(*(v61 - 8) + 56))(v5, 1, 1, v61);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v63 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_242D18E18(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29[-v6];
  v8 = type metadata accessor for Instrument(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + *(type metadata accessor for Component(0) + 36));
  if (!*(v12 + 16))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_242C6D138(v7, &qword_27ECF0B08, &unk_242F17EB0);
  }

  v13 = type metadata accessor for Slot(0);
  sub_242CA321C(v12 + *(v13 + 36) + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), v7, &qword_27ECF0B08, &unk_242F17EB0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_242C6D138(v7, &qword_27ECF0B08, &unk_242F17EB0);
  }

  sub_242D39C68(v7, v11, type metadata accessor for Instrument);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear;
    swift_beginAccess();
    v17 = *v15;
    v16 = *(v15 + 8);
    sub_242C5573C(v17, v16);

    if (v17)
    {
      v18 = a3[5];
      v34 = a3[4];
      v35 = v18;
      v36 = *(a3 + 96);
      v19 = a3[1];
      v30 = *a3;
      v31 = v19;
      v20 = a3[3];
      v32 = a3[2];
      v33 = v20;
      v17(v11, &v30);
      sub_242C655DC(v17, v16);
    }
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = v21 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear;
    swift_beginAccess();
    v24 = *v22;
    v23 = *(v22 + 8);
    sub_242C5573C(v24, v23);

    if (v24)
    {
      v25 = a3[5];
      v34 = a3[4];
      v35 = v25;
      v36 = *(a3 + 96);
      v26 = a3[1];
      v30 = *a3;
      v31 = v26;
      v27 = a3[3];
      v32 = a3[2];
      v33 = v27;
      v24(v11, &v30);
      sub_242C655DC(v24, v23);
    }
  }

  return sub_242D39AFC(v11, type metadata accessor for Instrument);
}

uint64_t sub_242D19178(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_242C5573C(*v2, v2[1]);
  return v3;
}

uint64_t sub_242D191F0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  sub_242C5573C(a1, a2);
  v11 = sub_242C655DC(v9, v10);
  a4(v11);
  return sub_242C655DC(a1, a2);
}

uint64_t (*sub_242D19288(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_242D192EC;
}

uint64_t sub_242D19304(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t ClusterTransitionCoordinator.__allocating_init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ClusterTransitionCoordinator.init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(a1, a2, a3);
  return v6;
}

uint64_t ClusterTransitionCoordinator.init(zones:additionalDynamicListItems:additionalMapsMediaItems:)(char *a1, uint64_t a2, uint64_t a3)
{
  v354 = a3;
  v358 = a2;
  v363 = 0;
  v364 = a1;
  v362 = type metadata accessor for Component(0);
  v314 = *(v362 - 8);
  MEMORY[0x28223BE20](v362);
  v349 = &v309 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F70, &qword_242F17928);
  MEMORY[0x28223BE20](v4 - 8);
  v368 = &v309 - v5;
  v367 = type metadata accessor for Slot(0);
  v346 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v348 = &v309 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v355 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v352 = v7;
  v353 = &v309 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v351 = &v309 - v9;
  v10 = sub_242F03960();
  v316 = *(v10 - 8);
  v317 = v10;
  MEMORY[0x28223BE20](v10);
  v315 = &v309 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78, &qword_242F17938);
  MEMORY[0x28223BE20](v350);
  v359 = &v309 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v13 - 8);
  v361 = (&v309 - v14);
  v377 = type metadata accessor for Zone(0);
  v371 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v369 = &v309 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v357 = &v309 - v17;
  MEMORY[0x28223BE20](v18);
  v356 = &v309 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v309 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
  v344 = *(v23 - 8);
  v345 = v23;
  MEMORY[0x28223BE20](v23);
  *&v374 = &v309 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50, &qword_242F178C8);
  v342 = *(v25 - 8);
  v343 = v25;
  MEMORY[0x28223BE20](v25);
  *&v373 = &v309 - v26;
  *&v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F80, &qword_242F17948);
  MEMORY[0x28223BE20](v372);
  *&v370 = &v309 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  *&v366 = &v309 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40, &qword_242F17878);
  v340 = *(v30 - 8);
  v341 = v30;
  MEMORY[0x28223BE20](v30);
  *&v365 = &v309 - v31;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F88, &qword_242F17950);
  MEMORY[0x28223BE20](v360);
  v330 = &v309 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v329 = &v309 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28, &qword_242F177E0);
  v338 = *(v35 - 8);
  v339 = v35;
  MEMORY[0x28223BE20](v35);
  v328 = &v309 - v36;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F90, &qword_242F17958);
  MEMORY[0x28223BE20](v327);
  v326 = &v309 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v325 = &v309 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10, &qword_242F17748);
  v336 = *(v40 - 8);
  v337 = v40;
  MEMORY[0x28223BE20](v40);
  v324 = &v309 - v41;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v323);
  v322 = &v309 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v321 = &v309 - v44;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00, &qword_242F176F8);
  v333 = *(v335 - 8);
  MEMORY[0x28223BE20](v335);
  v320 = &v309 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8, &qword_242F17660);
  v331 = *(v46 - 8);
  v332 = v46;
  MEMORY[0x28223BE20](v46);
  v319 = &v309 - v47;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  v334 = *(v347 - 8);
  MEMORY[0x28223BE20](v347);
  v318 = &v309 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0, &qword_242F175B8);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v309 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0, &qword_242F17568);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v56 = &v309 - v55;
  v57 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent;
  v58 = MEMORY[0x277D84F90];
  *v400 = sub_242CE7230(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FA0, &qword_242F17968);
  sub_242F03A40();
  v309 = v54;
  v310 = v53;
  v59 = *(v54 + 32);
  v60 = v378;
  v59(v378 + v57, v56, v53);
  v61 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder;
  *v400 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FA8, &qword_242F17970);
  sub_242F03A40();
  v311 = v50;
  v312 = v49;
  (*(v50 + 32))(v60 + v61, v52, v49);
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___DCAZones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region1Zones) = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___region2Zones) = 0;
  v62 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent;
  v63 = type metadata accessor for RequestContentModel(0);
  v64 = *(*(v63 - 8) + 56);
  v64(v60 + v62, 1, 1, v63);
  v64(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, 1, 1, v63);
  v65 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent;
  v400[0] = 0;
  v66 = v318;
  sub_242F03A40();
  v68 = (v334 + 32);
  v67 = *(v334 + 32);
  v69 = v347;
  v67(v60 + v65, v66, v347);
  v70 = v67;
  v375 = v67;
  v376 = v68;
  v71 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions;
  v72 = MEMORY[0x277D84F90];
  *v400 = sub_242CE7440(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FD0, &qword_242F17978);
  v73 = v319;
  sub_242F03A40();
  (*(v331 + 32))(v60 + v71, v73, v332);
  v74 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent;
  v400[0] = 0;
  sub_242F03A40();
  v70(v60 + v74, v66, v69);
  v75 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions;
  *v400 = sub_242CE752C(v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FD8, &qword_242F17980);
  v76 = v320;
  sub_242F03A40();
  (*(v333 + 32))(v60 + v75, v76, v335);
  v77 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout;
  v78 = type metadata accessor for Layout(0);
  v79 = v321;
  (*(*(v78 - 8) + 56))(v321, 1, 1, v78);
  sub_242CA321C(v79, v322, &qword_27ECF2F98, &qword_242F17960);
  v80 = v324;
  sub_242F03A40();
  sub_242C6D138(v79, &qword_27ECF2F98, &qword_242F17960);
  (*(v336 + 32))(v60 + v77, v80, v337);
  v81 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout;
  v400[0] = 0;
  sub_242F03A40();
  v82 = v66;
  (v375)(v60 + v81, v66, v347);
  v83 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition;
  v84 = type metadata accessor for ClusterTransitionCoordinator.LayoutTransition(0);
  v85 = v325;
  (*(*(v84 - 8) + 56))(v325, 1, 1, v84);
  sub_242CA321C(v85, v326, &qword_27ECF2F90, &qword_242F17958);
  v86 = v328;
  sub_242F03A40();
  sub_242C6D138(v85, &qword_27ECF2F90, &qword_242F17958);
  (*(v338 + 32))(v60 + v83, v86, v339);
  v87 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance;
  v400[0] = 0;
  sub_242F03A40();
  (v375)(v60 + v87, v82, v347);
  v88 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance;
  v89 = sub_242F03BB0();
  v90 = v329;
  (*(*(v89 - 8) + 56))(v329, 1, 1, v89);
  sub_242CA321C(v90, v330, &qword_27ECF2F88, &qword_242F17950);
  v91 = v365;
  sub_242F03A40();
  sub_242C6D138(v90, &qword_27ECF2F88, &qword_242F17950);
  (*(v340 + 32))(v60 + v88, v91, v341);
  v92 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition;
  v93 = type metadata accessor for ClusterTransitionCoordinator.AppearanceTransition(0);
  v94 = v366;
  (*(*(v93 - 8) + 56))(v366, 1, 1, v93);
  sub_242CA321C(v94, v370, &qword_27ECF2F80, &qword_242F17948);
  v95 = v373;
  sub_242F03A40();
  sub_242C6D138(v94, &qword_27ECF2F80, &qword_242F17948);
  (*(v342 + 32))(v60 + v92, v95, v343);
  v96 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  *v400 = sub_242CE773C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FE0, &qword_242F17988);
  v97 = v374;
  sub_242F03A40();
  v98 = v60 + v96;
  v99 = v364;
  (*(v344 + 32))(v98, v97, v345);
  v100 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear);
  *v100 = 0;
  v100[1] = 0;
  v101 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear);
  *v101 = 0;
  v101[1] = 0;
  v102 = (v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear);
  *v102 = 0;
  v102[1] = 0;
  *(v60 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones) = v99;
  v103 = v371;
  v376 = *(v99 + 2);
  if (!v376)
  {

    v105 = MEMORY[0x277D84F98];
LABEL_18:
    *(v378 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels) = v105;
    v133 = *(v105 + 64);
    v375 = (v105 + 64);
    v134 = 1 << *(v105 + 32);
    v135 = -1;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & v133;
    *&v374 = (v134 + 63) >> 6;
    *&v370 = v105;
    swift_bridgeObjectRetain_n();
    for (i = 0; v136; v103 = v371)
    {
      v138 = i;
      v139 = v370;
LABEL_27:
      v140 = __clz(__rbit64(v136));
      v136 &= v136 - 1;
      v141 = v140 | (v138 << 6);
      v142 = v355;
      v143 = v359;
      sub_242CA321C(*(v139 + 48) + *(v355 + 72) * v141, v359, &qword_27ECFC780, &qword_242F17930);
      v144 = (*(v139 + 56) + 112 * v141);
      v145 = *(v144 + 89);
      v147 = v144[4];
      v146 = v144[5];
      v392[3] = v144[3];
      v392[4] = v147;
      v393[0] = v146;
      *(v393 + 9) = v145;
      v149 = v144[1];
      v148 = v144[2];
      v392[0] = *v144;
      v392[1] = v149;
      v392[2] = v148;
      v150 = v143 + *(v350 + 48);
      v151 = *&v392[0];
      memmove(v150, v144, 0x69uLL);
      v152 = *(v150 + 56);
      v153 = *(v150 + 88);
      v397 = *(v150 + 72);
      v398 = v153;
      v399 = *(v150 + 104);
      v154 = *(v150 + 24);
      v394[0] = *(v150 + 8);
      v394[1] = v154;
      v395 = *(v150 + 40);
      v396 = v152;
      *v400 = v151;
      *&v400[8] = v394[0];
      *&v400[24] = v154;
      *&v400[40] = v395;
      v400[104] = v399;
      *&v400[88] = v153;
      *&v400[56] = v152;
      *&v400[72] = v397;
      sub_242CA321C(v392, &v387, &qword_27ECF21A8, &qword_242F17990);
      sub_242CA321C(v400, &v387, &qword_27ECF21A8, &qword_242F17990);
      sub_242CF3AF4(v394);
      v155 = swift_allocObject();
      swift_weakInit();
      v156 = v143;
      v157 = v351;
      sub_242CA321C(v156, v351, &qword_27ECFC780, &qword_242F17930);
      v158 = (*(v142 + 80) + 24) & ~*(v142 + 80);
      v377 = v158 + v352;
      v376 = v158;
      v159 = (v158 + v352 + 7) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      *(v160 + 16) = v155;
      sub_242CF6B3C(v157, v160 + v158, &qword_27ECFC780, &qword_242F17930);
      *(v160 + v159) = v364;
      v161 = (v151 + *(*v151 + 112));
      v162 = *v161;
      v163 = v161[1];
      *v161 = sub_242D39100;
      v161[1] = v160;

      sub_242C655DC(v162, v163);
      v164 = swift_allocObject();
      swift_weakInit();
      v165 = v359;
      sub_242CA321C(v359, v157, &qword_27ECFC780, &qword_242F17930);
      v166 = swift_allocObject();
      *(v166 + 16) = v164;
      sub_242CF6B3C(v157, v376 + v166, &qword_27ECFC780, &qword_242F17930);
      v167 = (v151 + *(*v151 + 120));
      v168 = *v167;
      v169 = v167[1];
      *v167 = sub_242D391AC;
      v167[1] = v166;
      sub_242C655DC(v168, v169);

      sub_242C6D138(v165, &qword_27ECF2F78, &qword_242F17938);
    }

    v139 = v370;
    while (1)
    {
      v138 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_96;
      }

      if (v138 >= v374)
      {
        break;
      }

      v136 = *&v375[8 * v138];
      ++i;
      if (v136)
      {
        i = v138;
        goto LABEL_27;
      }
    }

    if (qword_27ECEF0A8 != -1)
    {
      goto LABEL_99;
    }

    goto LABEL_30;
  }

  v375 = &v99[(*(v371 + 80) + 32) & ~*(v371 + 80)];
  v360 = (v314 + 56);

  v104 = 0;
  v105 = MEMORY[0x277D84F98];
  v106 = v358;
  v107 = v354;
  while (1)
  {
    if (v104 >= *(v99 + 2))
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      swift_once();
LABEL_30:
      v170 = sub_242F039A0();
      __swift_project_value_buffer(v170, qword_27ED5D270);

      v171 = v315;
      sub_242F03950();
      v172 = sub_242F03980();
      v173 = sub_242F05780();

      v174 = &unk_278D8C000;
      v175 = &unk_278D8C000;
      if (sub_242F05840())
      {
        LODWORD(v377) = v173;
        v176 = swift_slowAlloc();
        v376 = swift_slowAlloc();
        *&v392[0] = v376;
        *v176 = 136315394;
        v177 = objc_opt_self();
        v178 = [v177 standardUserDefaults];
        v179 = sub_242F04F00();
        v180 = [v178 stringForKey_];

        if (v180)
        {
          v181 = sub_242F04F30();
          v183 = v182;

          *v400 = v181;
          *&v400[8] = v183;
          v184 = sub_242F04F90();
          v186 = v185;
        }

        else
        {
          v186 = 0x8000000242F5A160;
          v184 = 0xD00000000000002DLL;
        }

        v187 = sub_242C8FD38(v184, v186, v392);

        *(v176 + 4) = v187;
        *(v176 + 12) = 2080;
        v188 = [v177 standardUserDefaults];
        v189 = sub_242F04F00();
        v190 = [v188 stringForKey_];

        v103 = v371;
        if (v190)
        {
          v191 = sub_242F04F30();
          v193 = v192;

          *v400 = v191;
          *&v400[8] = v193;
          v194 = sub_242F04F90();
          v196 = v195;
        }

        else
        {
          v196 = 0x8000000242F5A160;
          v194 = 0xD00000000000002DLL;
        }

        v197 = sub_242C8FD38(v194, v196, v392);

        *(v176 + 14) = v197;
        v198 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v172, v377, v198, "Selecting previous session active carousel items: ", "DCA: %s, MapsMedia: %s", v176, 0x16u);
        v199 = v376;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v199, -1, -1);
        MEMORY[0x245D287D0](v176, -1, -1);

        (*(v316 + 8))(v171, v317);
        v174 = &unk_278D8C000;
      }

      else
      {

        (*(v316 + 8))(v171, v317);
      }

      v200 = objc_opt_self();
      v201 = [v200 standardUserDefaults];
      v202 = sub_242F04F00();
      v203 = [v201 stringForKey_];

      if (v203)
      {
        v204 = sub_242F04F30();
        v206 = v205;
      }

      else
      {
        v204 = 0;
        v206 = 0;
      }

      *&v387 = v204;
      *(&v387 + 1) = v206;
      v207 = sub_242D131A0();
      *&v394[0] = MEMORY[0x277D84F90];
      v208 = *(v207 + 16);
      if (v208)
      {
        v376 = v200;
        v209 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
        v210 = *(v103 + 80);
        v377 = v207;
        v211 = v207 + ((v210 + 32) & ~v210);
        v212 = *(v103 + 72);
        v213 = MEMORY[0x277D84F90];
        v214 = v356;
        do
        {
          sub_242D39B5C(v211, v214, type metadata accessor for Zone);
          v215 = *(v378 + v209);
          if (*(v215 + 16) && (v216 = sub_242CE5568(v214), (v217 & 1) != 0))
          {
            v218 = (*(v215 + 56) + 112 * v216);
            v220 = v218[1];
            v219 = v218[2];
            *v400 = *v218;
            *&v400[16] = v220;
            *&v400[32] = v219;
            v221 = v218[3];
            v222 = v218[4];
            v223 = v218[5];
            *&v400[89] = *(v218 + 89);
            *&v400[64] = v222;
            *&v400[80] = v223;
            *&v400[48] = v221;
            sub_242CA321C(v400, v392, &qword_27ECF21A8, &qword_242F17990);
            sub_242D39AFC(v214, type metadata accessor for Zone);
            v224 = sub_242CF3AF4(&v400[8]);
            MEMORY[0x245D268D0](v224);
            if (*((*&v394[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v394[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_242F05330();
            }

            sub_242F05370();
            v213 = *&v394[0];
            v214 = v356;
          }

          else
          {
            sub_242D39AFC(v214, type metadata accessor for Zone);
          }

          v211 += v212;
          --v208;
        }

        while (v208);

        v175 = &unk_278D8C000;
        v174 = &unk_278D8C000;
        v200 = v376;
      }

      else
      {

        v213 = MEMORY[0x277D84F90];
      }

      sub_242D392D8(&v387, v213, 0);

      v225 = [v200 v174[372]];
      v226 = sub_242F04F00();
      v227 = [v225 v175[373]];

      if (v227)
      {
        v228 = sub_242F04F30();
        v230 = v229;
      }

      else
      {
        v228 = 0;
        v230 = 0;
      }

      v231 = v371;
      *&v387 = v228;
      *(&v387 + 1) = v230;
      v232 = sub_242D12EEC();
      *&v394[0] = MEMORY[0x277D84F90];
      v233 = *(v232 + 16);
      if (v233)
      {
        v234 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
        v235 = *(v231 + 80);
        v377 = v232;
        v236 = v232 + ((v235 + 32) & ~v235);
        v237 = *(v231 + 72);
        v238 = MEMORY[0x277D84F90];
        v239 = v357;
        do
        {
          sub_242D39B5C(v236, v239, type metadata accessor for Zone);
          v240 = *(v378 + v234);
          if (*(v240 + 16) && (v241 = sub_242CE5568(v239), (v242 & 1) != 0))
          {
            v243 = (*(v240 + 56) + 112 * v241);
            v245 = v243[1];
            v244 = v243[2];
            *v400 = *v243;
            *&v400[16] = v245;
            *&v400[32] = v244;
            v246 = v243[3];
            v247 = v243[4];
            v248 = v243[5];
            *&v400[89] = *(v243 + 89);
            *&v400[64] = v247;
            *&v400[80] = v248;
            *&v400[48] = v246;
            sub_242CA321C(v400, v392, &qword_27ECF21A8, &qword_242F17990);
            sub_242D39AFC(v239, type metadata accessor for Zone);
            v249 = sub_242CF3AF4(&v400[8]);
            MEMORY[0x245D268D0](v249);
            if (*((*&v394[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v394[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_242F05330();
            }

            sub_242F05370();
            v238 = *&v394[0];
            v239 = v357;
          }

          else
          {
            sub_242D39AFC(v239, type metadata accessor for Zone);
          }

          v236 += v237;
          --v233;
        }

        while (v233);
      }

      else
      {

        v238 = MEMORY[0x277D84F90];
      }

      sub_242D392D8(&v387, v238, 0);

      v250 = *(v378 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator____lazy_storage___mapsMediaZones);
      v251 = v370;
      *&v366 = *(v250 + 16);
      if (!v366)
      {
LABEL_94:

        return v378;
      }

      v252 = v371;
      *&v365 = v250 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
      v364 = (v346 + 56);
      v361 = (v346 + 48);

      v253 = 0;
      v103 = v369;
      v363 = v250;
      while (1)
      {
        if (v253 >= *(v250 + 16))
        {
          goto LABEL_97;
        }

        v263 = *(v252 + 72);
        *&v372 = v253;
        sub_242D39B5C(v365 + v263 * v253, v103, type metadata accessor for Zone);
        if (!*(v251 + 16))
        {
          break;
        }

        v264 = sub_242CE5568(v103);
        if ((v265 & 1) == 0)
        {
          break;
        }

        v266 = (*(v251 + 56) + 112 * v264);
        v268 = v266[1];
        v267 = v266[2];
        *v400 = *v266;
        *&v400[16] = v268;
        *&v400[32] = v267;
        v269 = *(v266 + 89);
        v271 = v266[4];
        v270 = v266[5];
        *&v400[48] = v266[3];
        *&v400[64] = v271;
        *&v400[80] = v270;
        *&v400[89] = v269;
        v272 = *v400;
        v261 = *&v400[8];
        v260 = *&v400[16];
        v259 = *&v400[24];
        v258 = *&v400[32];
        v257 = *&v400[40];
        v256 = *&v400[48];
        v255 = *&v400[56];
        *&v373 = *(&v271 + 1);
        v254 = v271;
        v375 = *&v400[88];
        *&v374 = v270;
        v376 = (v269 >> 56);
        LODWORD(v377) = HIBYTE(v269);
        sub_242CA321C(v400, v392, &qword_27ECF21A8, &qword_242F17990);
        if (!v272)
        {
          goto LABEL_70;
        }

        *v400 = v272;
        *&v400[8] = v261;
        *&v400[16] = v260;
        *&v400[24] = v259;
        *&v400[32] = v258;
        *&v400[40] = v257;
        *&v400[48] = v256;
        *&v400[56] = v255;
        *&v400[64] = v254;
        *&v400[72] = v373;
        *&v400[80] = v374;
        *&v400[88] = v375;
        *&v400[96] = v376;
        v400[104] = v377;

        v273 = sub_242C6D138(v400, &qword_27ECF2FF0, &qword_242F17998);
        MEMORY[0x28223BE20](v273);
        v274 = v362;
        *(&v309 - 4) = v362;
        v275 = sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
        *(&v309 - 3) = v275;
        v276 = sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
        *(&v309 - 2) = v276;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v309 - 4) = v274;
        *(&v309 - 3) = v275;
        *(&v309 - 2) = v276;
        swift_getKeyPath();
        v278 = v349;
        sub_242F03A80();

        v279 = *(v278 + *(v274 + 36));

        sub_242D39AFC(v278, type metadata accessor for Component);
        if (*(v279 + 16))
        {
          v262 = v368;
          sub_242D39B5C(v279 + ((*(v346 + 80) + 32) & ~*(v346 + 80)), v368, type metadata accessor for Slot);
          v280 = 0;
        }

        else
        {
          v280 = 1;
          v262 = v368;
        }

        v252 = v371;
        v103 = v369;

        v281 = v367;
        (*v364)(v262, v280, 1, v367);
        if ((*v361)(v262, 1, v281) == 1)
        {
          sub_242D39AFC(v103, type metadata accessor for Zone);
          goto LABEL_71;
        }

        v282 = v348;
        sub_242D39C68(v262, v348, type metadata accessor for Slot);
        v283 = v353;
        sub_242CA321C(v103, v353, &qword_27ECFC780, &qword_242F17930);
        v284 = *(v281 + 36);
        v285 = type metadata accessor for Instrument(0);
        v286 = (*(*(v285 - 8) + 48))(v282 + v284, 1, v285);
        v287 = swift_getKeyPath();
        swift_getKeyPath();
        v377 = v287;
        v376 = sub_242F03A70();
        v289 = v288;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v387 = *v289;
        v291 = v387;
        *v289 = 0x8000000000000000;
        v293 = sub_242CE5568(v283);
        v294 = *(v291 + 16);
        v295 = (v292 & 1) == 0;
        v296 = v294 + v295;
        if (__OFADD__(v294, v295))
        {
          goto LABEL_98;
        }

        v297 = v292;
        if (*(v291 + 24) >= v296)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_242D026AC();
          }
        }

        else
        {
          sub_242D06904(v296, isUniquelyReferenced_nonNull_native);
          v298 = sub_242CE5568(v353);
          if ((v297 & 1) != (v299 & 1))
          {
            goto LABEL_102;
          }

          v293 = v298;
        }

        v300 = v387;
        if (v297)
        {
          *(*(v387 + 56) + v293) = v286 != 1;
          sub_242C6D138(v353, &qword_27ECFC780, &qword_242F17930);
        }

        else
        {
          *(v387 + 8 * (v293 >> 6) + 64) |= 1 << v293;
          v301 = v353;
          sub_242CA321C(v353, v300[6] + *(v355 + 72) * v293, &qword_27ECFC780, &qword_242F17930);
          *(v300[7] + v293) = v286 != 1;
          sub_242C6D138(v301, &qword_27ECFC780, &qword_242F17930);
          v302 = v300[2];
          v303 = __OFADD__(v302, 1);
          v304 = v302 + 1;
          if (v303)
          {
            __break(1u);
            goto LABEL_101;
          }

          v300[2] = v304;
        }

        *v289 = v300;

        v376(v392, 0);

        sub_242D39AFC(v103, type metadata accessor for Zone);
        sub_242D39AFC(v348, type metadata accessor for Slot);
LABEL_72:
        v251 = v370;
        v250 = v363;
        v253 = v372 + 1;
        if (v366 == v372 + 1)
        {

          goto LABEL_94;
        }
      }

      LODWORD(v377) = 0;
      v376 = 0;
      v375 = 0;
      *&v374 = 0;
      *&v373 = 0;
      v254 = 0;
      v255 = 0;
      v256 = 0;
      v257 = 0;
      v258 = 0;
      v259 = 0;
      v260 = 0;
      v261 = 0;
LABEL_70:
      v103 = v369;
      sub_242D39AFC(v369, type metadata accessor for Zone);
      *v400 = 0;
      *&v400[8] = v261;
      *&v400[16] = v260;
      *&v400[24] = v259;
      *&v400[32] = v258;
      *&v400[40] = v257;
      *&v400[48] = v256;
      *&v400[56] = v255;
      *&v400[64] = v254;
      *&v400[72] = v373;
      *&v400[80] = v374;
      *&v400[88] = v375;
      *&v400[96] = v376;
      v400[104] = v377;
      sub_242C6D138(v400, &qword_27ECF2FF0, &qword_242F17998);
      v262 = v368;
      (*v364)(v368, 1, 1, v367);
      v252 = v371;
LABEL_71:
      sub_242C6D138(v262, &qword_27ECF2F70, &qword_242F17928);
      goto LABEL_72;
    }

    sub_242D39B5C(&v375[*(v103 + 72) * v104], v22, type metadata accessor for Zone);
    v115 = &v22[*(v377 + 32)];
    v116 = v115[96];
    if (v116 > 1)
    {
      goto LABEL_4;
    }

    v117 = v116 == 0;
    v118 = 8;
    if (v117)
    {
      v118 = 16;
    }

    v119 = &v115[v118];
    v120 = *(v119 + 2);
    v121 = *(v119 + 3);
    v122 = *v119;
    v388 = *(v119 + 1);
    v389 = v120;
    v123 = *(v119 + 4);
    v390 = v121;
    v391 = v123;
    v387 = v122;
    v401[2] = v120;
    v401[3] = v121;
    v401[4] = v123;
    v401[0] = v122;
    v401[1] = v388;
    v124 = Zone.primaryComponents.getter();
    *&v394[0] = v124;
    if (v106 && v115[96] == 1)
    {
      v125 = v105;
      MEMORY[0x28223BE20](v124);
      *(&v309 - 2) = v22;

      v126 = v363;
      v127 = sub_242CE892C(sub_242D3E1A0, (&v309 - 4), v106);
      v363 = v126;
      if (v126)
      {
        goto LABEL_101;
      }

      v128 = v127;

      v124 = sub_242C81E28(v128);
      v103 = v371;
      v105 = v125;
      v107 = v354;
    }

    if (v107 && !v115[96])
    {
      break;
    }

LABEL_3:
    v108 = *&v394[0];
    v109 = v361;
    (*v360)(v361, 1, 1, v362);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2D30, &qword_242F173A8);
    swift_allocObject();
    v110 = sub_242D2D864(v108, v109, v401);
    v111 = *(v115 + 1);
    *v400 = *v115;
    *&v400[16] = v111;
    v112 = *(v115 + 5);
    *&v400[64] = *(v115 + 4);
    *&v400[80] = v112;
    v113 = *(v115 + 3);
    *&v400[32] = *(v115 + 2);
    *&v400[48] = v113;
    v400[96] = v115[96];
    LOBYTE(v109) = v400[96];
    v370 = *&v400[16];
    v373 = *&v400[32];
    v374 = *v400;
    v372 = *&v400[64];
    v365 = v112;
    v366 = v113;
    sub_242CF3ABC(v400, v392);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    *&v392[0] = v105;
    v379 = v110;
    v381 = v370;
    v380 = v374;
    v383 = v366;
    v382 = v373;
    v385 = v365;
    v384 = v372;
    v386 = v109;
    sub_242CDEF48(&v379, v22, v114);
    v105 = *&v392[0];
    v99 = v364;
LABEL_4:
    ++v104;
    sub_242D39AFC(v22, type metadata accessor for Zone);
    if (v376 == v104)
    {
      goto LABEL_18;
    }
  }

  v129 = v105;
  MEMORY[0x28223BE20](v124);
  *(&v309 - 2) = v22;

  v130 = v363;
  v131 = sub_242CE892C(sub_242D39BC4, (&v309 - 4), v107);
  v363 = v130;
  if (!v130)
  {
    v132 = v131;

    sub_242C81E28(v132);
    v103 = v371;
    v105 = v129;
    v106 = v358;
    goto LABEL_3;
  }

LABEL_101:
  v306 = v378;
  (*(v309 + 8))(v378 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent, v310);
  (*(v311 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder, v312);

  sub_242C6D138(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242C6D138(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, &qword_27ECF2EC8, &qword_242F175C0);
  v307 = *(v334 + 8);
  v308 = v347;
  v307(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent, v347);
  (*(v331 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions, v332);
  v307(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent, v308);
  (*(v333 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions, v335);
  (*(v336 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout, v337);
  v307(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout, v308);
  (*(v338 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition, v339);
  v307(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance, v308);
  (*(v340 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance, v341);
  (*(v342 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition, v343);
  (*(v344 + 8))(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment, v345);
  sub_242C655DC(*(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear), *(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear + 8));
  sub_242C655DC(*(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear), *(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear + 8));
  sub_242C655DC(*(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear), *(v306 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear + 8));
  type metadata accessor for ClusterTransitionCoordinator(0);
  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_102:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t sub_242D1BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a1;
  v124 = a2;
  v123 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v5 - 8);
  v126 = &v106 - v6;
  v7 = type metadata accessor for Instrument(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v14 - 8);
  v108 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v106 - v17;
  v19 = type metadata accessor for Slot(0);
  v20 = (v19 - 8);
  v120 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v121 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  v25 = v2[1];
  v117 = *v2;
  v118 = v25;
  v26 = v2[3];
  v116 = v2[2];
  v125 = v26;
  v27 = *(v2 + 32);
  v28 = type metadata accessor for Zone(0);
  v29 = a1 + *(v28 + 24);
  v30 = *(v29 + 16);
  v31 = *(v29 + 24);
  v32 = *(v8 + 56);
  v32(v18, 1, 1, v7);
  v33 = v20[11];
  v114 = v7;
  v109 = v8 + 56;
  v112 = v32;
  v32(&v24[v33], 1, 1, v7);
  v34 = &v24[v20[12]];
  v35 = &v24[v20[13]];
  sub_242F03710();
  *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2140, &qword_242F13A90) + 52)] = 7;
  v36 = v20[14];
  v37 = v27;
  *&v24[v36] = 0;
  *(v24 + 15) = 12620;
  *(v24 + 16) = 0xE200000000000000;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  *(v24 + 5) = 1;
  *(v24 + 6) = 0;
  *(v24 + 7) = 0;
  *(v24 + 8) = v30;
  *(v24 + 9) = v31;
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 14) = 0;
  v111 = v33;
  v38 = &v24[v33];
  v40 = v116;
  v39 = v117;
  v41 = v18;
  v42 = v125;
  sub_242CF42A0(v41, v38);
  *v34 = 0;
  *(v34 + 1) = 0;
  v43 = v118;
  v44 = v115 + *(v28 + 32);
  v45 = *(v44 + 80);
  v134[4] = *(v44 + 64);
  v134[5] = v45;
  v135 = *(v44 + 96);
  v46 = *(v44 + 48);
  v134[2] = *(v44 + 32);
  v134[3] = v46;
  v47 = *(v44 + 16);
  v134[0] = *v44;
  v134[1] = v47;
  if (v135 <= 1u)
  {
    v48 = *&v134[0];
    v128[0] = v39;
    v128[1] = v118;
    v128[2] = v40;
    v128[3] = v42;
    LOBYTE(v128[4]) = v37;
    sub_242CF3ABC(v134, v129);
    Instrument.WidgetInfo.instrumentKind.getter(v131);
    memcpy(v132, v131, sizeof(v132));
    memcpy(v133, v131, sizeof(v133));
    if (sub_242D3DE10(v133) == 1)
    {
      sub_242CF3AF4(v134);
      goto LABEL_15;
    }

    memcpy(v129, v133, 0x238uLL);
    if (sub_242C9E788(v129) != 6)
    {
      sub_242CF3AF4(v134);
      sub_242C6D138(v132, &qword_27ECF3198, &qword_242F17EE0);
      goto LABEL_15;
    }

    LODWORD(v115) = v37;
    v49 = sub_242C556B4(v129);
    v50 = *v49;
    v51 = v49[1];

    sub_242C6D138(v132, &qword_27ECF3198, &qword_242F17EE0);
    if (v48)
    {
      if (*(v48 + 16))
      {
        v52 = sub_242CE519C(v50, v51);
        v54 = v53;

        if (v54)
        {
          v55 = (*(v48 + 56) + 32 * v52);
          v56 = *v55;
          v106 = v55[1];
          v107 = v56;
          sub_242CF3AF4(v134);
          v57 = v106;
          *(v24 + 5) = v107;
          *(v24 + 6) = v57;
        }

        else
        {
          sub_242CF3AF4(v134);
        }

        v42 = v125;
        goto LABEL_14;
      }

      sub_242CF3AF4(v134);
    }

LABEL_14:
    LOBYTE(v37) = v115;
  }

LABEL_15:
  v129[71] = v39;
  v129[72] = v43;
  v129[73] = v40;
  v129[74] = v42;
  v130 = v37;
  Instrument.WidgetInfo.instrumentKind.getter(v132);
  memcpy(v133, v132, sizeof(v133));
  if (sub_242D3DE10(v133) == 1)
  {
    v58 = v120;
    goto LABEL_29;
  }

  v59 = v119;
  sub_242F03710();
  v60 = sub_242F04730();
  v61 = v113;
  sub_242F03710();
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98) + 52);
  *(v61 + v62) = 7;
  v63 = v59;
  v64 = v110;
  sub_242CA321C(v63, v110, &qword_27ECF2168, &unk_242F17EA0);
  sub_242C6D138(v61, &qword_27ECF2170, &qword_242F13A98);
  sub_242CF6B3C(v64, v61, &qword_27ECF2168, &unk_242F17EA0);
  *(v61 + v62) = 7;
  v65 = v114;
  memcpy((v61 + *(v114 + 20)), v133, 0x238uLL);
  v66 = v61 + *(v65 + 24);
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  *v66 = v60;
  *(v66 + 24) = 256;
  *(v66 + 32) = 0;
  *(v66 + 40) = 0;
  *(v66 + 50) = -1;
  *(v66 + 48) = 0;
  memcpy(v131, v133, sizeof(v131));

  sub_242CA321C(v132, v129, &qword_27ECF3198, &qword_242F17EE0);
  v67 = Instrument.Kind.defaultVerifierIdentifier.getter();
  v69 = v68;

  *(v66 + 8) = v67;
  *(v66 + 16) = v69;
  memcpy(v131, v133, sizeof(v131));
  if (sub_242C9E788(v131) != 1)
  {
    goto LABEL_22;
  }

  v70 = sub_242C556B4(v131);
  memcpy(v129, v70, 0x228uLL);
  if (sub_242D3DE48(v129) != 3)
  {
    goto LABEL_22;
  }

  v71 = sub_242C65548(v129);
  memcpy(v128, v71, sizeof(v128));
  v72 = sub_242D3DE64(v128);
  if (v72)
  {
    if (v72 == 7)
    {
      sub_242C58D34(v128);

LABEL_36:
      v73 = 1;
      goto LABEL_23;
    }

LABEL_22:

    v73 = 0;
    goto LABEL_23;
  }

  v127 = *sub_242C58D34(v128);
  if (InstrumentDataIdentifier.rawValue.getter() == 0x53656C6369686576 && v94 == 0xEC00000064656570)
  {

    goto LABEL_36;
  }

  v73 = sub_242F06110();

LABEL_23:
  v74 = v108;
  sub_242C6D138(v119, &qword_27ECF2168, &unk_242F17EA0);
  *(v66 + 24) = v73 & 1;
  memcpy(v129, v133, 0x238uLL);
  v75 = sub_242C9E788(v129);
  if (v75 == 2)
  {
    sub_242C556B4(v129);
    sub_242C6D138(v132, &qword_27ECF3198, &qword_242F17EE0);
    goto LABEL_27;
  }

  if (v75 == 8)
  {
LABEL_27:
    *(v66 + 25) = 0;
    goto LABEL_28;
  }

  sub_242C6D138(v132, &qword_27ECF3198, &qword_242F17EE0);
LABEL_28:
  v58 = v120;
  sub_242D39C68(v61, v74, type metadata accessor for Instrument);
  v112(v74, 0, 1, v65);
  sub_242CF42A0(v74, &v24[v111]);
LABEL_29:
  sub_242F03710();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0330, &qword_242F17F00);
  v76 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_242F09510;
  sub_242D39B5C(v24, v77 + v76, type metadata accessor for Slot);
  v131[0] = MEMORY[0x277D84F90];
  sub_242E3BC70(0, 1, 0);
  v78 = v131[0];
  v79 = v121;
  sub_242D39B5C(v77 + v76, v121, type metadata accessor for Slot);
  v81 = *(v79 + 120);
  v80 = *(v79 + 128);

  sub_242D39AFC(v79, type metadata accessor for Slot);
  v83 = *(v78 + 16);
  v82 = *(v78 + 24);
  if (v83 >= v82 >> 1)
  {
    sub_242E3BC70((v82 > 1), v83 + 1, 1);
    v78 = v131[0];
  }

  *(v78 + 16) = v83 + 1;
  v84 = v78 + 16 * v83;
  *(v84 + 32) = v81;
  *(v84 + 40) = v80;

  v86 = sub_242C86440(v85);

  v87 = *(v86 + 16);

  v88 = *(v78 + 16);

  if (v87 == v88)
  {
    v89 = v122;
    sub_242CF6B3C(v126, v122, &qword_27ECF23E8, &unk_242F13C40);
    v90 = v123;
    *(v89 + *(v123 + 20)) = 0;
    v91 = (v89 + v90[6]);
    *v91 = 0x746E65746E6F43;
    v91[1] = 0xE700000000000000;
    v92 = (v89 + v90[7]);
    *v92 = v30;
    v92[1] = v31;
    *(v89 + v90[9]) = v77;
    *(v89 + v90[8]) = 2;
    sub_242D39C68(v89, v124, type metadata accessor for Component);
    return sub_242D39AFC(v24, type metadata accessor for Slot);
  }

  else
  {
    v131[0] = 0;
    v131[1] = 0xE000000000000000;
    sub_242F05A80();

    v131[0] = 0xD000000000000023;
    v131[1] = 0x8000000242F59E80;
    v129[0] = MEMORY[0x277D84F90];
    sub_242E3BC70(0, 1, 0);
    v95 = v129[0];
    v96 = v77 + v76;
    v97 = v121;
    sub_242D39B5C(v96, v121, type metadata accessor for Slot);
    v99 = *(v97 + 120);
    v98 = *(v97 + 128);

    sub_242D39AFC(v97, type metadata accessor for Slot);
    v101 = *(v95 + 16);
    v100 = *(v95 + 24);
    if (v101 >= v100 >> 1)
    {
      sub_242E3BC70((v100 > 1), v101 + 1, 1);
      v95 = v129[0];
    }

    *(v95 + 16) = v101 + 1;
    v102 = v95 + 16 * v101;
    *(v102 + 32) = v99;
    *(v102 + 40) = v98;
    v103 = MEMORY[0x245D26920](v95, MEMORY[0x277D837D0]);
    v105 = v104;

    MEMORY[0x245D26660](v103, v105);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242D1CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8, &unk_242F17F10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - v6;
  v58 = type metadata accessor for Zone(0);
  v8 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v56 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v22 = type metadata accessor for Layout(0);
    if ((*(*(v22 - 8) + 48))(v19, 1, v22))
    {

      return sub_242C6D138(v19, &qword_27ECF2F98, &qword_242F17960);
    }

    else
    {
      v54 = a1;
      v55 = v10;
      v57 = v21;
      v53 = v13;
      v23 = *&v19[*(v22 + 24)];

      result = sub_242C6D138(v19, &qword_27ECF2F98, &qword_242F17960);
      v24 = 0;
      v25 = *(v23 + 16);
      while (1)
      {
        if (v25 == v24)
        {
        }

        if (v24 >= *(v23 + 16))
        {
          break;
        }

        v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v27 = *(v8 + 72);
        sub_242D39B5C(v23 + v26 + v27 * v24++, v16, type metadata accessor for Zone);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v28 = sub_242F04EE0();
        result = sub_242D39AFC(v16, type metadata accessor for Zone);
        if (v28)
        {

          v29 = v60;
          v30 = sub_242D1D29C(v60, v54);
          MEMORY[0x28223BE20](v30);
          *(&v53 - 2) = v29;
          v31 = v56;
          sub_242CE8BC4(sub_242D3E1FC, v59, v56);
          v32 = v58;
          if ((*(v8 + 48))(v31, 1, v58) == 1)
          {

            return sub_242C6D138(v31, &qword_27ECF31B8, &unk_242F17F10);
          }

          v33 = v31;
          v34 = v53;
          sub_242D39C68(v33, v53, type metadata accessor for Zone);
          if (*(v34 + *(v32 + 32) + 96))
          {
            if (*(v34 + *(v32 + 32) + 96) == 1)
            {
              Component.stableIdentifier.getter(v62);
              v61[0] = v62[0];
              sub_242D39D34(v61);
              v35 = sub_242D131A0();
              MEMORY[0x28223BE20](v35);
              *(&v53 - 2) = v34;
              sub_242D1282C(sub_242D3E09C, (&v53 - 4), v36);
              v64 = MEMORY[0x277D84F90];
              v38 = *(v37 + 16);
              if (v38)
              {
                v39 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
                v40 = MEMORY[0x277D84F90];
                v60 = v37;
                v41 = v37 + v26;
                do
                {
                  v42 = v55;
                  sub_242D39B5C(v41, v55, type metadata accessor for Zone);
                  v43 = *(v57 + v39);
                  if (*(v43 + 16) && (v44 = sub_242CE5568(v42), (v45 & 1) != 0))
                  {
                    v46 = (*(v43 + 56) + 112 * v44);
                    v48 = v46[1];
                    v47 = v46[2];
                    v62[0] = *v46;
                    v62[1] = v48;
                    v62[2] = v47;
                    v49 = v46[3];
                    v50 = v46[4];
                    v51 = v46[5];
                    *(v63 + 9) = *(v46 + 89);
                    v62[4] = v50;
                    v63[0] = v51;
                    v62[3] = v49;
                    sub_242CA321C(v62, v61, &qword_27ECF21A8, &qword_242F17990);
                    sub_242D39AFC(v42, type metadata accessor for Zone);
                    v52 = sub_242CF3AF4(v62 + 8);
                    MEMORY[0x245D268D0](v52);
                    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_242F05330();
                    }

                    sub_242F05370();
                    v40 = v64;
                  }

                  else
                  {
                    sub_242D39AFC(v42, type metadata accessor for Zone);
                  }

                  v41 += v27;
                  --v38;
                }

                while (v38);

                v34 = v53;
              }

              else
              {

                v40 = MEMORY[0x277D84F90];
              }

              Component.stableIdentifier.getter(v62);
              v61[0] = v62[0];
              sub_242D392D8(v61, v40, 0);

              return sub_242D39AFC(v34, type metadata accessor for Zone);
            }
          }

          else
          {
            Component.stableIdentifier.getter(v62);
            v61[0] = v62[0];
            sub_242D39DFC(v61);
          }

          return sub_242D39AFC(v34, type metadata accessor for Zone);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_242D1D29C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31D0, &qword_242F17F38);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &isa - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &isa - v9;
  v11 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &isa - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &isa - v14;
  v16 = sub_242F03720();
  v72 = *(v16 - 8);
  v73 = v16;
  MEMORY[0x28223BE20](v16);
  v71 = &isa - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &isa - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &isa - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &isa - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &isa - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &isa - v30;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v32 = sub_242F039D0();
  __swift_project_value_buffer(v32, qword_27ED5D310);
  v76 = a2;
  sub_242CA321C(a2, v31, &qword_27ECF23E8, &unk_242F13C40);
  v77 = a1;
  sub_242CA321C(a1, v25, &qword_27ECFC780, &qword_242F17930);
  v33 = sub_242F039B0();
  v34 = sub_242F05720();
  v35 = v25;
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    v65 = v34;
    v37 = v36;
    v66 = swift_slowAlloc();
    v81[0] = v66;
    *v37 = 136315394;
    v68 = v15;
    v69 = v3;
    sub_242CA321C(v31, v28, &qword_27ECF23E8, &unk_242F13C40);
    v67 = v10;
    v38 = v71;
    isa = v72[2].isa;
    v39 = v73;
    (isa)(v71, v28, v73);
    v40 = sub_242F04F90();
    v72 = v33;
    v41 = v20;
    v42 = v40;
    v64 = v35;
    v44 = v43;
    sub_242C6D138(v28, &qword_27ECF23E8, &unk_242F13C40);
    sub_242C6D138(v31, &qword_27ECF23E8, &unk_242F13C40);
    v45 = v42;
    v20 = v41;
    v46 = sub_242C8FD38(v45, v44, v81);

    *(v37 + 4) = v46;
    *(v37 + 12) = 2080;
    v47 = v64;
    v48 = v70;
    sub_242CA321C(v64, v70, &qword_27ECFC780, &qword_242F17930);
    (isa)(v38, v48, v39);
    v10 = v67;
    v49 = sub_242F04F90();
    v51 = v50;
    sub_242C6D138(v48, &qword_27ECFC780, &qword_242F17930);
    sub_242C6D138(v47, &qword_27ECFC780, &qword_242F17930);
    v52 = sub_242C8FD38(v49, v51, v81);
    v15 = v68;

    *(v37 + 14) = v52;
    v53 = v72;
    _os_log_impl(&dword_242C53000, v72, v65, "Starting component %s transition on zone %s", v37, 0x16u);
    v54 = v66;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v54, -1, -1);
    MEMORY[0x245D287D0](v37, -1, -1);
  }

  else
  {

    sub_242C6D138(v25, &qword_27ECFC780, &qword_242F17930);
    sub_242C6D138(v31, &qword_27ECF23E8, &unk_242F13C40);
  }

  v55 = v79;
  sub_242CA321C(v76, &v15[*(v79 + 20)], &qword_27ECF23E8, &unk_242F13C40);
  sub_242F03710();
  sub_242CA321C(v77, v20, &qword_27ECFC780, &qword_242F17930);
  sub_242D39B5C(v15, v10, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v56 = v78;
  (*(v78 + 56))(v10, 0, 1, v55);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v57 = v81[0];
  if ((*(v56 + 48))(v10, 1, v55) == 1)
  {
    sub_242C6D138(v10, &qword_27ECF31D0, &qword_242F17F38);
    v58 = v75;
    sub_242D37C00(v20, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition, sub_242ED0740, sub_242D02B84, v75);
    sub_242C6D138(v58, &qword_27ECF31D0, &qword_242F17F38);
    sub_242C6D138(v20, &qword_27ECFC780, &qword_242F17930);
    v59 = v81[0];
  }

  else
  {
    v60 = v74;
    sub_242D39C68(v10, v74, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_242CDF290(v60, v20, isUniquelyReferenced_nonNull_native);
    sub_242C6D138(v20, &qword_27ECFC780, &qword_242F17930);
    v59 = v80;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v59;

  sub_242F03A90();
  sub_242D150A0();
  return sub_242D39AFC(v15, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
}

BOOL sub_242D1DAE0(uint64_t a1, uint64_t a2)
{
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_242F04EE0() & 1) == 0;
}

uint64_t sub_242D1DB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Zone(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v13 = type metadata accessor for Layout(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13))
    {

      return sub_242C6D138(v11, &qword_27ECF2F98, &qword_242F17960);
    }

    else
    {
      v14 = *&v11[*(v13 + 24)];

      result = sub_242C6D138(v11, &qword_27ECF2F98, &qword_242F17960);
      v15 = 0;
      v16 = *(v14 + 16);
      while (1)
      {
        if (v16 == v15)
        {
        }

        if (v15 >= *(v14 + 16))
        {
          break;
        }

        sub_242D39B5C(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15++, v8, type metadata accessor for Zone);
        sub_242F03720();
        sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v17 = sub_242F04EE0();
        result = sub_242D39AFC(v8, type metadata accessor for Zone);
        if (v17)
        {

          sub_242D1DE78(a3, a1);
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_242D1DE78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v88 = a1;
  v73 = sub_242F04B60();
  v84 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v82 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_242F04B80();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_242F04BA0();
  v79 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v74 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = v65 - v9;
  v10 = type metadata accessor for ClusterTransitionCoordinator.ComponentTransition(0);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = v11;
  v77 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = v65 - v13;
  v14 = sub_242F03720();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v71 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v65 - v27;
  if (qword_27ECEF4D0 != -1)
  {
    swift_once();
  }

  v29 = sub_242F039D0();
  __swift_project_value_buffer(v29, qword_27ED5D310);
  sub_242CA321C(a2, v28, &qword_27ECF23E8, &unk_242F13C40);
  sub_242CA321C(v88, v22, &qword_27ECFC780, &qword_242F17930);
  v30 = sub_242F039B0();
  v31 = sub_242F05720();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v68 = v31;
    v33 = v32;
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v33 = 136315394;
    v70 = v3;
    v67 = v30;
    sub_242CA321C(v28, v25, &qword_27ECF23E8, &unk_242F13C40);
    v34 = *(v15 + 16);
    v65[1] = v15 + 16;
    v66 = v34;
    v34(v17, v25, v14);
    v35 = sub_242F04F90();
    v37 = v36;
    sub_242C6D138(v25, &qword_27ECF23E8, &unk_242F13C40);
    sub_242C6D138(v28, &qword_27ECF23E8, &unk_242F13C40);
    v38 = sub_242C8FD38(v35, v37, aBlock);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = v87;
    sub_242CA321C(v22, v87, &qword_27ECFC780, &qword_242F17930);
    v66(v17, v39, v14);
    v40 = sub_242F04F90();
    v42 = v41;
    sub_242C6D138(v39, &qword_27ECFC780, &qword_242F17930);
    sub_242C6D138(v22, &qword_27ECFC780, &qword_242F17930);
    v43 = sub_242C8FD38(v40, v42, aBlock);

    *(v33 + 14) = v43;
    v44 = v67;
    _os_log_impl(&dword_242C53000, v67, v68, "Ending component %s transition on zone %s", v33, 0x16u);
    v45 = v69;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v45, -1, -1);
    MEMORY[0x245D287D0](v33, -1, -1);
  }

  else
  {

    sub_242C6D138(v22, &qword_27ECFC780, &qword_242F17930);
    sub_242C6D138(v28, &qword_27ECF23E8, &unk_242F13C40);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v46 = aBlock[0];
  if (!*(aBlock[0] + 16))
  {
  }

  v47 = sub_242CE5568(v88);
  if ((v48 & 1) == 0)
  {
  }

  v49 = v75;
  v50 = v85;
  sub_242D39B5C(*(v46 + 56) + *(v75 + 72) * v47, v85, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);

  sub_242D3DCD0();
  v70 = sub_242F05750();
  v51 = v74;
  sub_242F04B90();
  v52 = v78;
  sub_242F04BF0();
  v79 = *(v79 + 8);
  (v79)(v51, v86);
  v53 = swift_allocObject();
  swift_weakInit();
  v54 = v87;
  sub_242CA321C(v88, v87, &qword_27ECFC780, &qword_242F17930);
  v55 = v77;
  sub_242D39B5C(v50, v77, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  v56 = (*(v71 + 80) + 24) & ~*(v71 + 80);
  v57 = (v72 + *(v49 + 80) + v56) & ~*(v49 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  sub_242CF6B3C(v54, v58 + v56, &qword_27ECFC780, &qword_242F17930);
  sub_242D39C68(v55, v58 + v57, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
  aBlock[4] = sub_242D3DFC0;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_342;
  v59 = _Block_copy(aBlock);

  v60 = v80;
  sub_242F04B70();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_242D3DC24(&qword_27ECFC050, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610, &qword_242F48C80);
  sub_242D3DC6C();
  v61 = v82;
  v62 = v73;
  sub_242F05930();
  v63 = v70;
  MEMORY[0x245D26D30](v52, v60, v61, v59);
  _Block_release(v59);

  (*(v84 + 8))(v61, v62);
  (*(v81 + 8))(v60, v83);
  (v79)(v52, v86);
  return sub_242D39AFC(v85, type metadata accessor for ClusterTransitionCoordinator.ComponentTransition);
}

void *sub_242D1E904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v77 - v4;
  v83 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v83);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78, &qword_242F17938);
  MEMORY[0x28223BE20](v81);
  v89 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v77 - v8;
  MEMORY[0x28223BE20](v9);
  v88 = &v77 - v10;
  v11 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v91[2] = a1;
  sub_242D36D1C(sub_242D39C48, v91, v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v85 = v12;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v78 = v17;
  v79 = v13;
  v90 = MEMORY[0x277D84F90];
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      result = sub_242F06320();
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      do
      {
LABEL_8:
        v21 = __clz(__rbit64(v16)) | (v18 << 6);
        v22 = v85;
        v23 = *(v85 + 48);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
        v25 = v88;
        sub_242CA321C(v23 + *(*(v24 - 8) + 72) * v21, v88, &qword_27ECFC780, &qword_242F17930);
        v26 = (*(v22 + 56) + 112 * v21);
        v27 = *(v26 + 89);
        v29 = v26[4];
        v28 = v26[5];
        v93[3] = v26[3];
        v93[4] = v29;
        v94[0] = v28;
        *(v94 + 9) = v27;
        v31 = v26[1];
        v30 = v26[2];
        v93[0] = *v26;
        v93[1] = v31;
        v93[2] = v30;
        v32 = v81;
        memmove((v25 + *(v81 + 48)), v26, 0x69uLL);
        v33 = v80;
        sub_242CA321C(v25, v80, &qword_27ECF2F78, &qword_242F17938);
        v34 = (v33 + *(v32 + 48));
        v35 = v34[5];
        v95[4] = v34[4];
        v96[0] = v35;
        *(v96 + 9) = *(v34 + 89);
        v36 = v34[1];
        v95[0] = *v34;
        v95[1] = v36;
        v37 = v34[3];
        v95[2] = v34[2];
        v95[3] = v37;
        sub_242CA321C(v93, &v92, &qword_27ECF21A8, &qword_242F17990);
        sub_242C6D138(v95, &qword_27ECF21A8, &qword_242F17990);
        v38 = sub_242F036F0();
        v86 = v39;
        v87 = v38;
        sub_242C6D138(v33, &qword_27ECFC780, &qword_242F17930);
        v40 = v89;
        sub_242CA321C(v25, v89, &qword_27ECF2F78, &qword_242F17938);
        v41 = v40 + *(v32 + 48);
        v42 = sub_242D1162C(*(v41 + 8), *(v41 + 16), *(v41 + 24), *(v41 + 32), *(v41 + 40), *(v41 + 48), *(v41 + 56), *(v41 + 64), *(v41 + 72), *(v41 + 80), *(v41 + 88), *(v41 + 96), *(v41 + 104));
        MEMORY[0x28223BE20](v42);
        sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
        sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        swift_getKeyPath();
        v44 = v82;
        sub_242F03A80();

        v45 = v84;
        sub_242CA321C(v44, v84, &qword_27ECF23E8, &unk_242F13C40);
        sub_242D39AFC(v44, type metadata accessor for Component);
        v46 = sub_242F036F0();
        v48 = v47;
        sub_242C6D138(v45, &qword_27ECF23E8, &unk_242F13C40);
        sub_242C6D138(v88, &qword_27ECF2F78, &qword_242F17938);
        sub_242C6D138(v89, &qword_27ECFC780, &qword_242F17930);
        v19 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_242C83648(0, v19[2] + 1, 1, v19);
        }

        v50 = v19[2];
        v49 = v19[3];
        if (v50 >= v49 >> 1)
        {
          v19 = sub_242C83648((v49 > 1), v50 + 1, 1, v19);
        }

        v16 &= v16 - 1;
        v19[2] = v50 + 1;
        v51 = &v19[4 * v50];
        v52 = v86;
        v51[4] = v87;
        v51[5] = v52;
        v51[6] = v46;
        v51[7] = v48;
        v17 = v78;
        v13 = v79;
        v90 = v19;
      }

      while (v16);
    }
  }

  v53 = sub_242CE7918(MEMORY[0x277D84F90]);
  v89 = v19[2];
  if (v89)
  {
    v54 = 0;
    v55 = v19 + 7;
    while (1)
    {
      if (v54 >= v19[2])
      {
        goto LABEL_31;
      }

      v59 = *(v55 - 3);
      v58 = *(v55 - 2);
      v61 = *(v55 - 1);
      v60 = *v55;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v95[0] = v53;
      v63 = sub_242CE519C(v59, v58);
      v65 = v53[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_32;
      }

      v69 = v64;
      if (v53[3] < v68)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v75 = v63;
      sub_242D02EA4();
      v63 = v75;
      if (v69)
      {
LABEL_16:
        v56 = v63;

        v53 = *&v95[0];
        v57 = (*(*&v95[0] + 56) + 16 * v56);
        *v57 = v61;
        v57[1] = v60;

        goto LABEL_17;
      }

LABEL_25:
      v53 = *&v95[0];
      *(*&v95[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
      v71 = (v53[6] + 16 * v63);
      *v71 = v59;
      v71[1] = v58;
      v72 = (v53[7] + 16 * v63);
      *v72 = v61;
      v72[1] = v60;

      v73 = v53[2];
      v67 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v67)
      {
        goto LABEL_33;
      }

      v53[2] = v74;
LABEL_17:
      ++v54;
      v55 += 4;
      v19 = v90;
      if (v89 == v54)
      {
        goto LABEL_29;
      }
    }

    sub_242D0755C(v68, isUniquelyReferenced_nonNull_native);
    v63 = sub_242CE519C(v59, v58);
    if ((v69 & 1) != (v70 & 1))
    {
      goto LABEL_34;
    }

LABEL_24:
    if (v69)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_29:

  return v53;
}

BOOL sub_242D1F0E8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8, &unk_242F17F10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F78, &qword_242F17938);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  v13 = a2[5];
  v30 = a2[4];
  v31[0] = v13;
  *(v31 + 9) = *(a2 + 89);
  v14 = a2[1];
  v26 = *a2;
  v27 = v14;
  v15 = a2[3];
  v28 = a2[2];
  v29 = v15;
  sub_242CA321C(a1, v24 - v11, &qword_27ECFC780, &qword_242F17930);
  v16 = &v12[*(v10 + 56)];
  v17 = v31[0];
  *(v16 + 4) = v30;
  *(v16 + 5) = v17;
  *(v16 + 89) = *(v31 + 9);
  v18 = v27;
  *v16 = v26;
  *(v16 + 1) = v18;
  v19 = v29;
  *(v16 + 2) = v28;
  *(v16 + 3) = v19;
  v20 = *(a3 + *(type metadata accessor for Layout(0) + 24));
  v24[2] = v12;
  sub_242CA321C(&v26, &v25, &qword_27ECF21A8, &qword_242F17990);
  sub_242CE8BC4(sub_242D3DF3C, v20, v8);
  v21 = type metadata accessor for Zone(0);
  v22 = (*(*(v21 - 8) + 48))(v8, 1, v21) != 1;
  sub_242C6D138(v8, &qword_27ECF31B8, &unk_242F17F10);
  sub_242C6D138(v12, &qword_27ECF2F78, &qword_242F17938);
  return v22;
}

uint64_t sub_242D1F31C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + *(type metadata accessor for Zone(0) + 32) + 96) != 1)
  {
    return 0;
  }

  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_242F04EE0() & 1;
}

uint64_t sub_242D1F3D0(uint64_t a1)
{
  v94 = a1;
  v97 = type metadata accessor for Zone(0);
  v91 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v98 = &v84 - v4;
  MEMORY[0x28223BE20](v5);
  v92 = &v84 - v6;
  v7 = sub_242F03960();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &qword_242F17930;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v84 - v11;
  v95 = v1;
  v13 = *(v1 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v19 = 0;
  v20 = 0;
  v90 = MEMORY[0x277D84F90];
  v99 = v13;
LABEL_4:
  v21 = v19;
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
    v19 = v21;
LABEL_9:
    sub_242CA321C(*(v13 + 48) + *(v93 + 72) * (__clz(__rbit64(v17)) | (v19 << 6)), v12, &qword_27ECFC780, v9);
    sub_242D1FEA8(v12, v95, v94, &v101);
    v17 &= v17 - 1;
    v22 = v9;
    sub_242C6D138(v12, &qword_27ECFC780, v9);
    v23 = *(&v101 + 1);
    if (*(&v101 + 1))
    {
      v86 = v101;
      v24 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_242C8377C(0, v24[2] + 1, 1, v24);
      }

      v26 = v24[2];
      v25 = v24[3];
      v90 = v24;
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v30 = v26 + 1;
        v85 = v26;
        v31 = sub_242C8377C((v25 > 1), v26 + 1, 1, v90);
        v27 = v30;
        v26 = v85;
        v9 = v22;
        v90 = v31;
      }

      else
      {
        v9 = v22;
      }

      v28 = v90;
      v90[2] = v27;
      v29 = &v28[2 * v26];
      v29[4] = v86;
      v29[5] = v23;
      v13 = v99;
      goto LABEL_4;
    }

    v21 = v19;
    v13 = v99;
  }

  while (v17);
  while (1)
  {
LABEL_6:
    v19 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v19);
    ++v21;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  if (!v90[2])
  {
  }

  v19 = v90[5];
  v94 = v90[4];

  v32 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v33 = [v32 standardUserDefaults];
  v34 = sub_242F04F00();
  v35 = [v33 stringForKey_];

  if (!v35)
  {
    v20 = v98;
    if (!v19)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_29;
  }

  v36 = sub_242F04F30();
  v38 = v37;

  v20 = v98;
  if (!v19)
  {
    if (!v38)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_29;
  }

  if (!v38)
  {
LABEL_29:

LABEL_30:

    v39 = [v32 standardUserDefaults];
    *&v101 = v94;
    *(&v101 + 1) = v19;
    v40 = sub_242F06300();
    v41 = sub_242F04F00();
    [v39 setObject:v40 forKey:v41];

    swift_unknownObjectRelease();
    if (qword_27ECEF0A8 != -1)
    {
      goto LABEL_64;
    }

    while (1)
    {
      v42 = sub_242F039A0();
      __swift_project_value_buffer(v42, qword_27ED5D270);

      v43 = v87;
      sub_242F03950();
      v44 = sub_242F03980();
      v45 = sub_242F05780();

      v46 = sub_242F05840();
      v47 = v92;
      v93 = v19;
      if (v46)
      {
        v48 = swift_slowAlloc();
        LODWORD(v90) = v45;
        v49 = v48;
        v50 = swift_slowAlloc();
        v51 = v19;
        v52 = v50;
        v100[0] = v50;
        *v49 = 136315138;
        *&v101 = v94;
        *(&v101 + 1) = v51;
        v53 = sub_242F04F90();
        v55 = sub_242C8FD38(v53, v54, v100);

        *(v49 + 4) = v55;
        v56 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v44, v90, v56, "Setting new active DCA carousel item: ", "%s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v52);
        MEMORY[0x245D287D0](v52, -1, -1);
        MEMORY[0x245D287D0](v49, -1, -1);
      }

      else
      {
      }

      (*(v88 + 8))(v43, v89);
      v57 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
      v58 = v95;
      swift_beginAccess();
      v59 = *(v58 + v57);
      v60 = *(v59 + 16);

      v19 = MEMORY[0x277D84F90];
      if (!v60)
      {
        break;
      }

      v61 = 0;
      v62 = v47 + 96;
      v63 = v91;
      v95 = v47 + 96;
      while (v61 < *(v59 + 16))
      {
        v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v65 = *(v63 + 72);
        sub_242D39B5C(v59 + v64 + v65 * v61, v47, type metadata accessor for Zone);
        if (*(v62 + *(v97 + 32)) == 1)
        {
          sub_242D39C68(v47, v96, type metadata accessor for Zone);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_242E3BF10(0, *(v19 + 16) + 1, 1);
            v63 = v91;
            v19 = v101;
          }

          v68 = *(v19 + 16);
          v67 = *(v19 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_242E3BF10((v67 > 1), v68 + 1, 1);
            v63 = v91;
            v19 = v101;
          }

          *(v19 + 16) = v68 + 1;
          sub_242D39C68(v96, v19 + v64 + v68 * v65, type metadata accessor for Zone);
          v47 = v92;
          v62 = v95;
        }

        else
        {
          sub_242D39AFC(v47, type metadata accessor for Zone);
        }

        ++v61;
        v20 = v98;
        v13 = v99;
        if (v60 == v61)
        {
          goto LABEL_47;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      swift_once();
    }

    v63 = v91;
LABEL_47:

    v107 = MEMORY[0x277D84F90];
    v69 = *(v19 + 16);
    if (v69)
    {
      v70 = v19 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v71 = MEMORY[0x277D84F90];
      v72 = *(v63 + 72);
      do
      {
        sub_242D39B5C(v70, v20, type metadata accessor for Zone);
        if (*(v13 + 16) && (v73 = sub_242CE5568(v20), (v74 & 1) != 0))
        {
          v75 = (*(v13 + 56) + 112 * v73);
          v77 = v75[1];
          v76 = v75[2];
          v101 = *v75;
          v102 = v77;
          v103 = v76;
          v78 = v75[3];
          v79 = v75[4];
          v80 = v75[5];
          *(v106 + 9) = *(v75 + 89);
          v105 = v79;
          v106[0] = v80;
          v104 = v78;
          sub_242CA321C(&v101, v100, &qword_27ECF21A8, &qword_242F17990);
          sub_242D39AFC(v20, type metadata accessor for Zone);
          v81 = sub_242D1162C(*(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1), v104, *(&v104 + 1), v105, *(&v105 + 1), *&v106[0], *(&v106[0] + 1), *&v106[1], BYTE8(v106[1]));
          MEMORY[0x245D268D0](v81);
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_242F05330();
            v20 = v98;
          }

          sub_242F05370();
          v71 = v107;
        }

        else
        {
          sub_242D39AFC(v20, type metadata accessor for Zone);
        }

        v70 += v72;
        --v69;
      }

      while (v69);
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
    }

    *&v101 = v94;
    *(&v101 + 1) = v93;
    sub_242D392D8(&v101, v71, 0);
  }

  if (v94 != v36 || v38 != v19)
  {
    v83 = sub_242F06110();

    if (v83)
    {
      return swift_bridgeObjectRelease_n();
    }

    goto LABEL_30;
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_242D1FEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v48 = a3;
  v51 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B0, &qword_242F17F08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_242F03720();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v43 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31B8, &unk_242F17F10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Zone(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v23 = *(a2 + v22);
  v49 = a1;

  sub_242CE8BC4(sub_242D3DE70, v23, v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &qword_27ECF31B8;
    v25 = &unk_242F17F10;
    v26 = v17;
LABEL_3:
    result = sub_242C6D138(v26, v24, v25);
LABEL_10:
    v34 = v51;
    *v51 = 0;
    v34[1] = 0;
    return result;
  }

  sub_242D39C68(v17, v21, type metadata accessor for Zone);
  v28 = sub_242F036F0();
  if (!*(v48 + 16))
  {

    goto LABEL_9;
  }

  sub_242CE519C(v28, v29);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_9:
    result = sub_242D39AFC(v21, type metadata accessor for Zone);
    goto LABEL_10;
  }

  sub_242F036E0();

  v33 = v46;
  v32 = v47;
  if ((*(v46 + 48))(v12, 1, v47) == 1)
  {
    sub_242D39AFC(v21, type metadata accessor for Zone);
    v24 = &qword_27ECF31B0;
    v25 = &qword_242F17F08;
LABEL_13:
    v26 = v12;
    goto LABEL_3;
  }

  v35 = v43;
  (*(v33 + 32))(v43, v12, v32);
  v36 = v44;
  v37 = (*(v33 + 16))(v44, v35, v32);
  MEMORY[0x28223BE20](v37);
  *(&v43 - 2) = v36;
  v12 = v45;
  sub_242CE8B5C(sub_242D3DF1C, v38, v45);
  sub_242C6D138(v36, &qword_27ECF23E8, &unk_242F13C40);
  v39 = type metadata accessor for Component(0);
  if ((*(*(v39 - 8) + 48))(v12, 1, v39) == 1)
  {
    (*(v33 + 8))(v35, v32);
    sub_242D39AFC(v21, type metadata accessor for Zone);
    v24 = &qword_27ECF2730;
    v25 = &qword_242F17940;
    goto LABEL_13;
  }

  Component.stableIdentifier.getter(v50);
  (*(v33 + 8))(v35, v32);
  sub_242D39AFC(v21, type metadata accessor for Zone);
  v40 = v50[0];
  v41 = v50[1];
  result = sub_242D39AFC(v12, type metadata accessor for Component);
  if (!v41)
  {
    goto LABEL_10;
  }

  v42 = v51;
  *v51 = v40;
  v42[1] = v41;
  return result;
}

uint64_t CarouselModel.Direction<>.init(direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v8 = *(v4 - 8);
  v5 = (*(v8 + 48))(a1, 2, v4);
  if (!v5)
  {
    sub_242CF6B3C(a1, a2, &qword_27ECF23E8, &unk_242F13C40);
  }

  v6 = *(v8 + 56);

  return v6(a2, v5, 2, v4);
}

uint64_t sub_242D20588(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v5 = type metadata accessor for Zone(0);
  v66 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3010, &qword_242F17A00);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = (v47 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3018, &unk_242F17A08);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (v47 - v17);
  v19 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v49 = v19;
  v20 = *(v3 + v19);
  v21 = *(v20 + 16);
  v63 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v68 = (v11 + 56);
  v69 = v21;
  v67 = (v11 + 48);
  v65 = v20;

  v23 = 0;
  v62 = 0;
  v51 = v3;
  v47[1] = a2;
  v48 = v15;
  while (v23 == v69)
  {
    v24 = 1;
    v23 = v69;
LABEL_8:
    (*v68)(v15, v24, 1, v10);
    sub_242CF6B3C(v15, v18, &qword_27ECF3018, &unk_242F17A08);
    if ((*v67)(v18, 1, v10) == 1)
    {
    }

    v28 = *v18;
    sub_242D39C68(v18 + *(v10 + 48), v9, type metadata accessor for Zone);
    swift_getAtKeyPath();
    if (v71 == 1 && (v29 = *(v3 + v63), *(v29 + 16)) && (v30 = sub_242CE5568(v9), (v31 & 1) != 0))
    {
      v32 = (*(v29 + 56) + 112 * v30);
      v34 = v32[1];
      v33 = v32[2];
      v71 = *v32;
      v72 = v34;
      v73 = v33;
      v35 = *(v32 + 89);
      v37 = v32[4];
      v36 = v32[5];
      v74 = v32[3];
      *v75 = v37;
      *&v75[16] = v36;
      *&v75[25] = v35;
      v38 = v71;
      v59 = v72;
      v60 = *(&v71 + 1);
      v58 = *(&v72 + 1);
      v56 = *(&v73 + 1);
      v57 = v73;
      v54 = *(&v74 + 1);
      v55 = v74;
      v52 = *&v75[8];
      v53 = v37;
      v39 = *&v75[24];
      v40 = v35 >> 56;
      v41 = HIBYTE(v35);
      sub_242CA321C(&v71, &v70, &qword_27ECF21A8, &qword_242F17990);
      sub_242D1162C(v60, v59, v58, v57, v56, v55, v54, v53, v52, *(&v52 + 1), v39, v40, v41);
      sub_242D39B5C(v9, v61, type metadata accessor for Zone);

      v42 = v62;
      sub_242D3922C(v50);
      v62 = v42;
      v3 = v51;
      v60 = v38;

      v43 = v49;
      swift_beginAccess();
      v44 = *(v3 + v43);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v43) = v44;
      if (result)
      {
        v15 = v48;
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_242D37E6C(v44);
        v44 = result;
        *(v3 + v43) = result;
        v15 = v48;
        if ((v28 & 0x8000000000000000) != 0)
        {
LABEL_17:
          __break(1u);
        }
      }

      if (v28 >= v44[2])
      {
        goto LABEL_21;
      }

      v45 = v44 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v28;
      v46 = v61;
      sub_242D39CD0(v61, v45);
      *(v3 + v43) = v44;
      swift_endAccess();

      sub_242D39AFC(v9, type metadata accessor for Zone);
      result = sub_242D39AFC(v46, type metadata accessor for Zone);
    }

    else
    {
      result = sub_242D39AFC(v9, type metadata accessor for Zone);
    }
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v23 >= *(v65 + 16))
    {
      goto LABEL_20;
    }

    v25 = v65 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v23;
    v26 = *(v10 + 48);
    v27 = v64;
    *v64 = v23;
    sub_242D39B5C(v25, v27 + v26, type metadata accessor for Zone);
    sub_242CF6B3C(v27, v15, &qword_27ECF3010, &qword_242F17A00);
    v24 = 0;
    ++v23;
    goto LABEL_8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_242D20B28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v50 = v1;
  v51 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v38[-v6];
  v48 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v48);
  v45 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v38[-v9];
  v68 = type metadata accessor for Component(0);
  v49 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v52 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v38[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-v15];
  v17 = *v4;
  v18 = v4[1];
  v19 = v4[2];
  v20 = v4[3];
  v21 = *(v4 + 32);
  v62[0] = *v4;
  v62[1] = v18;
  v62[2] = v19;
  v62[3] = v20;
  LOBYTE(v62[4]) = v21;
  Instrument.WidgetInfo.instrumentKind.getter(v66);
  memcpy(v67, v66, 0x238uLL);
  v22 = sub_242D3DE10(v67);
  v47 = v13;
  if (v22 != 1)
  {
    v39 = v21;
    v40 = v20;
    v41 = v19;
    v42 = v18;
    v43 = v17;
    v23 = *(v50 + *(v48 + 28));
    v24 = *(v23 + 16);

    v25 = v49;
    v26 = v44;
    v53 = v24;
    if (v24)
    {
      v27 = 0;
      while (1)
      {
        if (v27 >= *(v23 + 16))
        {
          __break(1u);
LABEL_28:
          v25 = sub_242C83620(0, v25[2] + 1, 1, v25);
          v31 = v26;
          *(v26 + v13) = v25;
          goto LABEL_22;
        }

        sub_242D39B5C(v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + v25[9] * v27, v16, type metadata accessor for Component);
        v13 = *&v16[*(v68 + 36)];
        if (!*(v13 + 16))
        {
          goto LABEL_11;
        }

        v28 = type metadata accessor for Slot(0);
        sub_242CA321C(v13 + *(v28 + 36) + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)), v26, &qword_27ECF0B08, &unk_242F17EB0);
        v13 = type metadata accessor for Instrument(0);
        if ((*(*(v13 - 8) + 48))(v26, 1, v13) == 1)
        {
          break;
        }

        memcpy(v60, (v26 + *(v13 + 20)), 0x238uLL);
        sub_242CF6BA4(v60, v62);
        sub_242D39AFC(v26, type metadata accessor for Instrument);
        memcpy(v62, v60, 0x238uLL);
        nullsub_2();
        memcpy(v65, v62, sizeof(v65));
LABEL_13:
        memcpy(v63, v67, sizeof(v63));
        nullsub_2();
        memcpy(v62, v65, 0x238uLL);
        memcpy(&v62[71], v63, 0x238uLL);
        memcpy(v64, v65, sizeof(v64));
        if (sub_242D3DE10(v64) == 1)
        {
          memcpy(v60, &v62[71], 0x238uLL);
          if (sub_242D3DE10(v60) == 1)
          {
            memcpy(v61, v62, sizeof(v61));
            sub_242CF6BA4(v67, v59);
            sub_242C6D138(v61, &qword_27ECF3198, &qword_242F17EE0);
            sub_242D39AFC(v16, type metadata accessor for Component);

            return sub_242C6D138(v66, &qword_27ECF3198, &qword_242F17EE0);
          }

          sub_242CF6BA4(v67, v61);
          goto LABEL_5;
        }

        memcpy(v61, v62, sizeof(v61));
        memcpy(v59, v62, sizeof(v59));
        memcpy(v60, &v62[71], 0x238uLL);
        if (sub_242D3DE10(v60) == 1)
        {
          memcpy(v58, v62, sizeof(v58));
          v13 = &qword_27ECF3198;
          sub_242CA321C(v66, v57, &qword_27ECF3198, &qword_242F17EE0);
          sub_242CA321C(v61, v57, &qword_27ECF3198, &qword_242F17EE0);
          sub_242CF6C60(v58);
LABEL_5:
          memcpy(v60, v62, sizeof(v60));
          sub_242C6D138(v60, &qword_27ECF3190, &qword_242F17ED8);
          sub_242D39AFC(v16, type metadata accessor for Component);
          goto LABEL_6;
        }

        memcpy(v55, &v62[71], sizeof(v55));
        sub_242CA321C(v66, v54, &qword_27ECF3198, &qword_242F17EE0);
        sub_242CA321C(v61, v54, &qword_27ECF3198, &qword_242F17EE0);
        v13 = _s14CarPlayAssetUI10InstrumentV4KindO2eeoiySbAE_AEtFZ_0(v59);
        memcpy(v56, v55, sizeof(v56));
        sub_242CF6C60(v56);
        memcpy(v57, v59, sizeof(v57));
        sub_242CF6C60(v57);
        memcpy(v58, v62, sizeof(v58));
        sub_242C6D138(v58, &qword_27ECF3198, &qword_242F17EE0);
        sub_242D39AFC(v16, type metadata accessor for Component);
        if (v13)
        {

          return sub_242C6D138(v66, &qword_27ECF3198, &qword_242F17EE0);
        }

LABEL_6:
        if (v53 == ++v27)
        {
          goto LABEL_19;
        }
      }

      sub_242C6D138(v26, &qword_27ECF0B08, &unk_242F17EB0);
LABEL_11:
      sub_242CFB3C4(v65);
      goto LABEL_13;
    }

LABEL_19:

    sub_242C6D138(v66, &qword_27ECF3198, &qword_242F17EE0);
    v13 = v47;
    v18 = v42;
    v17 = v43;
    v20 = v40;
    v19 = v41;
    LOBYTE(v21) = v39;
  }

  v62[0] = v17;
  v62[1] = v18;
  v62[2] = v19;
  v62[3] = v20;
  LOBYTE(v62[4]) = v21;
  v26 = v50;
  v29 = v45;
  sub_242D39B5C(v50, v45, type metadata accessor for Zone);
  sub_242D1BF1C(v29, v13);
  sub_242D39AFC(v29, type metadata accessor for Zone);
  sub_242D39B5C(v13, v52, type metadata accessor for Component);
  v13 = *(v48 + 28);
  v25 = *(v26 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + v13) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_28;
  }

  v31 = v26;
LABEL_22:
  v32 = v49;
  v34 = v25[2];
  v33 = v25[3];
  if (v34 >= v33 >> 1)
  {
    v25 = sub_242C83620((v33 > 1), v34 + 1, 1, v25);
    *(v31 + v13) = v25;
  }

  v25[2] = v34 + 1;
  sub_242D39C68(v52, v25 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v34, type metadata accessor for Component);
  v35 = v46;
  (v32[7])(v46, 1, 1, v68);
  v36 = v47;
  sub_242D2ECD4(v47, v35);
  sub_242C6D138(v35, &qword_27ECF2730, &qword_242F17940);
  return sub_242D39AFC(v36, type metadata accessor for Component);
}

void sub_242D2150C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v98 - v7;
  v101 = type metadata accessor for Component(0);
  v116 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v108 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v118 = &v98 - v10;
  MEMORY[0x28223BE20](v11);
  v123 = &v98 - v12;
  MEMORY[0x28223BE20](v13);
  v114 = &v98 - v14;
  MEMORY[0x28223BE20](v15);
  v125 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v98 - v18;
  v105 = type metadata accessor for Zone(0);
  v19 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v119 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v98 - v22;
  MEMORY[0x28223BE20](v23);
  v132 = &v98 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3010, &qword_242F17A00);
  v25 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v121 = (&v98 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3018, &unk_242F17A08);
  MEMORY[0x28223BE20](v27 - 8);
  v124 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v130 = &v98 - v30;
  v32 = *a1;
  v31 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8, &qword_242F0D2C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_242F09510;
    v34 = qword_27ECEEF60;

    if (v34 != -1)
    {
LABEL_87:
      swift_once();
    }

    swift_beginAccess();
    v35 = byte_27ECF1000;
    v36 = dword_27ECF1004;
    if (qword_27ECEEED8 != -1)
    {
      swift_once();
    }

    v136[0] = v35;
    *&v136[4] = v36;
    *&v136[8] = xmmword_27ECF0E90;
    *&v136[24] = xmmword_27ECF0EA0;
    *&v136[40] = unk_27ECF0EB0;
    v137 = xmmword_27ECF0E90;
    v138 = xmmword_27ECF0EA0;
    *&v139 = unk_27ECF0EB0;
    sub_242CB5A7C(v136);
    v37 = v141;
    *(v33 + 128) = v140;
    *(v33 + 144) = v37;
    *(v33 + 160) = v142;
    v38 = v137;
    *(v33 + 64) = *&v136[32];
    *(v33 + 80) = v38;
    v39 = v139;
    *(v33 + 96) = v138;
    *(v33 + 112) = v39;
    v40 = *&v136[16];
    *(v33 + 32) = *v136;
    *(v33 + 48) = v40;
    VisibilityConfiguration.init(arrayLiteral:)(v33, v149);
    v148[0] = v32;
    v148[1] = v31;
    v148[2] = v149[0];
    sub_242CFB420(v148);
    memcpy(v149, v148, 0x238uLL);
    v41 = v124;
  }

  else
  {
    v42 = *(a1 + 16);
    v43 = *(a1 + 24);
    v148[0] = *a1;
    v148[1] = v31;
    v148[2] = v42;
    v148[3] = v43;
    sub_242CFB44C(v148);
    memcpy(v149, v148, 0x238uLL);

    v41 = v124;
  }

  memcpy(v148, v149, sizeof(v148));
  v44 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zones;
  swift_beginAccess();
  v115 = v44;
  v45 = *(v3 + v44);
  v46 = *(v45 + 16);
  v120 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels;
  v128 = (v25 + 56);
  v129 = v46;
  v127 = (v25 + 48);
  v100 = (v116 + 56);
  v122 = v45;

  v47 = 0;
  v107 = 0;
  v31 = v132;
  v33 = v109;
  v113 = v3;
  v104 = a2;
  v110 = v19;
  while (1)
  {
    if (v47 == v129)
    {
      v48 = 1;
      v134 = v129;
    }

    else
    {
      if (v47 >= *(v122 + 16))
      {
        goto LABEL_76;
      }

      v49 = v47 + 1;
      v50 = v122 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v47;
      v51 = *(v33 + 48);
      v52 = v121;
      *v121 = v47;
      sub_242D39B5C(v50, v52 + v51, type metadata accessor for Zone);
      v53 = v52;
      v41 = v124;
      sub_242CF6B3C(v53, v124, &qword_27ECF3010, &qword_242F17A00);
      v48 = 0;
      v134 = v49;
    }

    (*v128)(v41, v48, 1, v33);
    v25 = v130;
    sub_242CF6B3C(v41, v130, &qword_27ECF3018, &unk_242F17A08);
    if ((*v127)(v25, 1, v33) == 1)
    {
      break;
    }

    v131 = *v25;
    sub_242D39C68(v25 + *(v33 + 48), v31, type metadata accessor for Zone);
    swift_getAtKeyPath();
    if (v136[0] == 1 && (v25 = *(v3 + v120), *(v25 + 16)) && (v54 = sub_242CE5568(v31), (v55 & 1) != 0))
    {
      v56 = (*(v25 + 56) + 112 * v54);
      v58 = v56[1];
      v57 = v56[2];
      v143 = *v56;
      v144 = v58;
      v145 = v57;
      v59 = *(v56 + 89);
      v61 = v56[4];
      v60 = v56[5];
      v146 = v56[3];
      v147[0] = v61;
      v147[1] = v60;
      *(&v147[1] + 9) = v59;
      v135 = *(&v143 + 1);
      v117 = v143;
      v62 = *(&v144 + 1);
      v133 = v144;
      v64 = *(&v145 + 1);
      v63 = v145;
      v65 = *(&v146 + 1);
      v19 = v146;
      v126 = *(v147 + 8);
      v66 = v61;
      v67 = *(&v147[1] + 1);
      v68 = v59 >> 56;
      v69 = HIBYTE(v59);
      sub_242CA321C(&v143, v136, &qword_27ECF21A8, &qword_242F17990);
      v70 = v64;
      v3 = v113;
      sub_242D1162C(v135, v133, v62, v63, v70, v19, v65, v66, v126, *(&v126 + 1), v67, v68, v69);
      swift_getKeyPath();
      swift_getKeyPath();
      v71 = v106;
      sub_242F03A80();

      v25 = type metadata accessor for Layout(0);
      if ((*(*(v25 - 8) + 48))(v71, 1, v25))
      {
        sub_242C6D138(v71, &qword_27ECF2F98, &qword_242F17960);
      }

      else
      {
        v31 = *(v71 + *(v25 + 24));

        sub_242C6D138(v71, &qword_27ECF2F98, &qword_242F17960);
        v33 = 0;
        v72 = *(v31 + 16);
        v32 = v110;
        v73 = v99;
        a2 = &qword_27ECF2260;
        while (v72 != v33)
        {
          if (v33 >= *(v31 + 16))
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          sub_242D39B5C(v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v32[9] * v33++, v73, type metadata accessor for Zone);
          sub_242F03720();
          sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v25 = sub_242F04EE0();
          sub_242D39AFC(v73, type metadata accessor for Zone);
          if (v25)
          {

            v112 = 1;
            goto LABEL_27;
          }
        }
      }

      v112 = 0;
LABEL_27:
      v74 = v119;
      sub_242D39B5C(v132, v119, type metadata accessor for Zone);
      v111 = *(v105 + 28);
      v75 = *(v74 + v111);
      v32 = v75[2];

      sub_242CF6BA4(v149, v136);
      v33 = v116;
      v31 = v114;
      v41 = v124;
      if (v32)
      {
        a2 = 0;
        v133 = v75;
        v135 = v32;
        do
        {
          v25 = a2;
          while (1)
          {
            if (v25 >= v32)
            {
              __break(1u);
LABEL_73:
              __break(1u);
              goto LABEL_74;
            }

            v32 = ((*(v33 + 80) + 32) & ~*(v33 + 80));
            v19 = v75;
            v76 = v32 + v75;
            v77 = *(v33 + 72);
            sub_242D39B5C(&v76[v77 * v25], v31, type metadata accessor for Component);
            a2 = (v25 + 1);
            if (__OFADD__(v25, 1))
            {
              goto LABEL_73;
            }

            if (sub_242D224F0(v31, v148))
            {
              break;
            }

            sub_242D39AFC(v31, type metadata accessor for Component);
            ++v25;
            v32 = v135;
            v75 = v19;
            if (a2 == v135)
            {
              goto LABEL_65;
            }
          }

          v78 = v125;
          v79 = sub_242D39C68(v31, v125, type metadata accessor for Component);
          v103 = &v98;
          MEMORY[0x28223BE20](v79);
          v97[2] = v78;
          v25 = v133;
          v33 = v107;
          v80 = sub_242CDAC68(sub_242D3E1FC, v97, v133);
          v107 = v33;
          if (v81)
          {
            v31 = *(v25 + 16);
            v82 = v31;
            v33 = v119;
          }

          else
          {
            v31 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              goto LABEL_86;
            }

            *&v126 = v80;
            v3 = (v25 + 16);
            v83 = *(v25 + 16);
            if (v31 != v83)
            {
              v33 = v32 + v31 * v77;
              while (v31 < v83)
              {
                v133 = v25;
                v91 = v123;
                sub_242D39B5C(v25 + v33, v123, type metadata accessor for Component);
                sub_242F03720();
                sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                v25 = sub_242F04EE0();
                sub_242D39AFC(v91, type metadata accessor for Component);
                if (v25)
                {
                  v25 = v133;
                }

                else
                {
                  v92 = v126;
                  if (v31 == v126)
                  {
                    v25 = v133;
                  }

                  else
                  {
                    v93 = v133;
                    if ((v126 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_77;
                    }

                    v3 = *v3;
                    if (v126 >= v3)
                    {
                      goto LABEL_78;
                    }

                    v25 = v126 * v77;
                    sub_242D39B5C(v32 + v133 + v126 * v77, v118, type metadata accessor for Component);
                    if (v31 >= v3)
                    {
                      goto LABEL_79;
                    }

                    v3 = v108;
                    sub_242D39B5C(v93 + v33, v108, type metadata accessor for Component);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v133 = sub_242D37E58(v133);
                    }

                    v94 = v32 + v133 + v25;
                    v25 = v133;
                    sub_242D3A00C(v3, v94);
                    if (v31 >= *(v25 + 16))
                    {
                      goto LABEL_80;
                    }

                    sub_242D3A00C(v118, v25 + v33);
                    v92 = v126;
                  }

                  *&v126 = v92 + 1;
                }

                ++v31;
                v3 = (v25 + 16);
                v83 = *(v25 + 16);
                v33 += v77;
                if (v31 == v83)
                {
                  goto LABEL_39;
                }
              }

LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_39:
            v82 = v126;
            if (v31 < v126)
            {
              goto LABEL_83;
            }

            v33 = v119;
            if ((v126 & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }
          }

          v3 = v25;
          v84 = v82;
          v85 = v82 - v31;
          v25 = v31 + v85;
          if (__OFADD__(v31, v85))
          {
            goto LABEL_85;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v87 = v111;
          *(v33 + v111) = v3;
          if (!isUniquelyReferenced_nonNull_native || v25 > v3[3] >> 1)
          {
            if (v31 <= v25)
            {
              v88 = v25;
            }

            else
            {
              v88 = v31;
            }

            v3 = sub_242C83620(isUniquelyReferenced_nonNull_native, v88, 1, v3);
            *(v33 + v87) = v3;
          }

          v75 = v19;
          sub_242D39EC4(v84, v31, 0);
          v133 = v3;
          *(v33 + v87) = v3;
          v89 = v102;
          (*v100)(v102, 1, 1, v101);
          v90 = v125;
          sub_242D30AAC(v125, v89, v112);
          sub_242C6D138(v89, &qword_27ECF2730, &qword_242F17940);
          sub_242D39AFC(v90, type metadata accessor for Component);
          v32 = v135;
          v33 = v116;
          v3 = v113;
          v31 = v114;
          v41 = v124;
        }

        while (a2 != v135);
      }

LABEL_65:

      sub_242CF6C60(v149);
      v95 = v115;
      swift_beginAccess();
      v25 = *(v3 + v95);
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v95) = v25;
      if ((v96 & 1) == 0)
      {
        v25 = sub_242D37E6C(v25);
        *(v3 + v115) = v25;
      }

      a2 = v104;
      v19 = v110;
      v33 = v119;
      v31 = v132;
      if ((v131 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      if (v131 >= *(v25 + 16))
      {
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
        goto LABEL_87;
      }

      sub_242D39CD0(v119, v25 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v131);
      *(v3 + v115) = v25;
      swift_endAccess();

      v25 = type metadata accessor for Zone;
      sub_242D39AFC(v31, type metadata accessor for Zone);
      sub_242D39AFC(v33, type metadata accessor for Zone);
      v33 = v109;
      v47 = v134;
    }

    else
    {
      sub_242D39AFC(v31, type metadata accessor for Zone);
      v47 = v134;
    }
  }

  sub_242CF6C60(v149);
}

uint64_t sub_242D224F0(uint64_t a1, const void *a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Slot(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Component(0);
  v11 = *(a1 + *(result + 36));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v6 + 36);
    v14 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = MEMORY[0x277D84F90];
    v16 = *(v7 + 72);
    do
    {
      sub_242D39B5C(v14, v9, type metadata accessor for Slot);
      v17 = type metadata accessor for Instrument(0);
      if ((*(*(v17 - 8) + 48))(&v9[v13], 1, v17) == 1)
      {
        result = sub_242D39AFC(v9, type metadata accessor for Slot);
      }

      else
      {
        sub_242CA321C(&v9[v13], v5, &qword_27ECF0B08, &unk_242F17EB0);
        memcpy(v28, &v5[*(v17 + 20)], 0x238uLL);
        sub_242CF6BA4(v28, v27);
        sub_242D39AFC(v5, type metadata accessor for Instrument);
        sub_242D39AFC(v9, type metadata accessor for Slot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_242C838D8(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_242C838D8((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        result = memcpy(&v15[568 * v19 + 32], v28, 0x238uLL);
      }

      v14 += v16;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v20 = *(v15 + 2);
  v21 = v24;
  if (v20)
  {
    v22 = 0;
    v23 = 32;
    while (v22 < *(v15 + 2))
    {
      memcpy(v28, &v15[v23], 0x238uLL);
      memcpy(v27, v28, sizeof(v27));
      memcpy(v26, v21, sizeof(v26));
      sub_242CF6BA4(v28, &v25);
      if (_s14CarPlayAssetUI10InstrumentV4KindO2eeoiySbAE_AEtFZ_0(v27))
      {

        sub_242CF6C60(v28);
        return 1;
      }

      ++v22;
      result = sub_242CF6C60(v28);
      v23 += 568;
      if (v20 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_242D22874()
{
  v1 = v0;
  v2 = type metadata accessor for Zone(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - v7;
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Layout(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  sub_242F03A80();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_242C6D138(v12, &qword_27ECF2F98, &qword_242F17960);
  }

  result = sub_242D39C68(v12, v16, type metadata accessor for Layout);
  v18 = *&v16[*(v13 + 24)];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      sub_242D39B5C(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v5, type metadata accessor for Zone);
      if (v5[*(v2 + 32) + 96] < 2u)
      {
        break;
      }

      ++v20;
      result = sub_242D39AFC(v5, type metadata accessor for Zone);
      if (v19 == v20)
      {
        return sub_242D39AFC(v16, type metadata accessor for Layout);
      }
    }

    v21 = v33;
    sub_242D39C68(v5, v33, type metadata accessor for Zone);
    v22 = v35;
    sub_242D39C68(v21, v35, type metadata accessor for Zone);
    v23 = *(v34 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
    if (*(v23 + 16))
    {
      v24 = sub_242CE5568(v22);
      if (v25)
      {
        v26 = (*(v23 + 56) + 112 * v24);
        v28 = v26[1];
        v27 = v26[2];
        v37[0] = *v26;
        v37[1] = v28;
        v37[2] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[5];
        *&v38[9] = *(v26 + 89);
        v37[4] = v30;
        *v38 = v31;
        v37[3] = v29;
        sub_242CA321C(v37, v36, &qword_27ECF21A8, &qword_242F17990);
        sub_242CF3AF4(v37 + 8);
        sub_242D33B3C(1);
      }
    }

    sub_242D39AFC(v22, type metadata accessor for Zone);
  }

  return sub_242D39AFC(v16, type metadata accessor for Layout);
}

uint64_t sub_242D22CA0()
{
  v1 = v0;
  v2 = type metadata accessor for Zone(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - v7;
  MEMORY[0x28223BE20](v8);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F98, &qword_242F17960);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Layout(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v1;
  sub_242F03A80();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_242C6D138(v12, &qword_27ECF2F98, &qword_242F17960);
  }

  result = sub_242D39C68(v12, v16, type metadata accessor for Layout);
  v18 = *&v16[*(v13 + 24)];
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = 0;
    while (1)
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        return result;
      }

      sub_242D39B5C(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20, v5, type metadata accessor for Zone);
      if (v5[*(v2 + 32) + 96] < 2u)
      {
        break;
      }

      ++v20;
      result = sub_242D39AFC(v5, type metadata accessor for Zone);
      if (v19 == v20)
      {
        return sub_242D39AFC(v16, type metadata accessor for Layout);
      }
    }

    v21 = v33;
    sub_242D39C68(v5, v33, type metadata accessor for Zone);
    v22 = v35;
    sub_242D39C68(v21, v35, type metadata accessor for Zone);
    v23 = *(v34 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
    if (*(v23 + 16))
    {
      v24 = sub_242CE5568(v22);
      if (v25)
      {
        v26 = (*(v23 + 56) + 112 * v24);
        v28 = v26[1];
        v27 = v26[2];
        v37[0] = *v26;
        v37[1] = v28;
        v37[2] = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[5];
        *&v38[9] = *(v26 + 89);
        v37[4] = v30;
        *v38 = v31;
        v37[3] = v29;
        sub_242CA321C(v37, v36, &qword_27ECF21A8, &qword_242F17990);
        sub_242CF3AF4(v37 + 8);
        sub_242D347D8(0.0);
      }
    }

    sub_242D39AFC(v22, type metadata accessor for Zone);
  }

  return sub_242D39AFC(v16, type metadata accessor for Layout);
}

uint64_t ClusterTransitionCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EB0, &qword_242F17568);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__focusOrder;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC0, &qword_242F175B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_242C6D138(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone1RequestContent, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242C6D138(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_zone2RequestContent, &qword_27ECF2EC8, &qword_242F175C0);
  v5 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningRequestContent;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8, &qword_242F17610);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v8 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__requestContentTransitions;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EE8, &qword_242F17660);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningComponent, v6);
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__componentTransitions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F00, &qword_242F176F8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeLayout;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F10, &qword_242F17748);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningLayout, v6);
  v14 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__layoutTransition;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F28, &qword_242F177E0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v7(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__transitioningAppearance, v6);
  v16 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__activeAppearance;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F40, &qword_242F17878);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__appearanceTransition;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F50, &qword_242F178C8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v20 = OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator__blackBackgroundTreatment;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear), *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillAppear + 8));
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear), *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentWillDisappear + 8));
  sub_242C655DC(*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear), *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_instrumentDidDisappear + 8));

  return v0;
}

uint64_t ClusterTransitionCoordinator.__deallocating_deinit()
{
  ClusterTransitionCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242D23580@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ClusterTransitionCoordinator(0);
  result = sub_242F03A10();
  *a2 = result;
  return result;
}

uint64_t ClusterTransitionCoordinator.updateRequestContent(with:for:)(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  LOBYTE(a2) = *a2;
  sub_242CA321C(a1, &v8 - v5, &qword_27ECF2EC8, &qword_242F175C0);
  if (a2)
  {
    return sub_242D144C0(v6);
  }

  else
  {
    return sub_242D14384(v6);
  }
}

uint64_t sub_242D23678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for Component(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v19 = MEMORY[0x28223BE20](v16);
  if (*(a2 + 56) || (v20 = *(a2 + 48)) == 0)
  {
    v50 = *(v17 + 56);

    return v50(a3, 1, 1, v10, v19);
  }

  v21 = *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v21 + 16))
  {
    return (*(v17 + 56))(a3, 1, 1, v10, v19);
  }

  v63 = &v51 - v18;
  v64 = v17;
  v62 = *(a2 + 17);
  v22 = *(a2 + 40);

  v23 = sub_242CE5568(a1);
  if ((v24 & 1) == 0)
  {

LABEL_16:
    v17 = v64;
    return (*(v17 + 56))(a3, 1, 1, v10, v19);
  }

  v51 = v9;
  v52 = v22;
  v25 = (*(v21 + 56) + 112 * v23);
  v27 = v25[1];
  v26 = v25[2];
  v67 = *v25;
  v68 = v27;
  v69 = v26;
  v28 = *(v25 + 89);
  v30 = v25[4];
  v29 = v25[5];
  v70 = v25[3];
  *v71 = v30;
  *&v71[16] = v29;
  *&v71[25] = v28;
  v60 = v67;
  v61 = a3;
  v58 = v68;
  v59 = *(&v67 + 1);
  v57 = *(&v68 + 1);
  v31 = *(&v69 + 1);
  v55 = v70;
  v56 = v69;
  v54 = *(&v70 + 1);
  v53 = *&v71[8];
  v32 = v30;
  v33 = *&v71[24];
  v34 = v28 >> 56;
  v35 = HIBYTE(v28);
  sub_242CA321C(&v67, v66, &qword_27ECF21A8, &qword_242F17990);
  v36 = v31;
  v37 = v60;
  sub_242D1162C(v59, v58, v57, v56, v36, v55, v54, v32, v53, *(&v53 + 1), v33, v34, v35);
  v38 = *(*v37 + 144);
  swift_beginAccess();
  v66[0] = *(v37 + v38);
  v66[1] = sub_242D29B10;
  v66[2] = 0;
  v66[3] = sub_242CF33D8;
  v66[4] = 0;
  v66[5] = sub_242CF3448;
  v66[6] = 0;
  v65[0] = MEMORY[0x277D84F98];

  sub_242CF2908(v66, 1, v65);
  v39 = v65[0];
  if (!*(v65[0] + 16))
  {

LABEL_15:
    a3 = v61;

    goto LABEL_16;
  }

  v40 = sub_242CE519C(v52, v20);
  v42 = v41;

  if ((v42 & 1) == 0)
  {

    goto LABEL_15;
  }

  sub_242D39B5C(*(v39 + 56) + *(v64 + 72) * v40, v15, type metadata accessor for Component);

  v43 = v63;
  v44 = sub_242D39C68(v15, v63, type metadata accessor for Component);
  MEMORY[0x28223BE20](v44);
  sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
  sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_242F03A80();

  v46 = v51;
  sub_242CA321C(v12, v51, &qword_27ECF23E8, &unk_242F13C40);
  sub_242D39AFC(v12, type metadata accessor for Component);
  sub_242F03720();
  sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v47 = sub_242F04EE0();

  sub_242C6D138(v46, &qword_27ECF23E8, &unk_242F13C40);
  if (v47)
  {
    v48 = v61;
    sub_242D39C68(v43, v61, type metadata accessor for Component);
    return (*(v64 + 56))(v48, 0, 1, v10);
  }

  a3 = v61;
  if (v62)
  {
    sub_242D39AFC(v63, type metadata accessor for Component);
    goto LABEL_16;
  }

  sub_242D39C68(v63, v61, type metadata accessor for Component);
  return (*(v64 + 56))(a3, 0, 1, v10);
}

uint64_t sub_242D23D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v43 = a4;
  v45 = a3;
  v8 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_242F03960();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  if (qword_27ECEF0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_242F039A0();
  __swift_project_value_buffer(v22, qword_27ED5D270);
  sub_242CA321C(a1, v21, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242D39B5C(a2, v15, type metadata accessor for Zone);
  sub_242F03950();
  v23 = sub_242F03980();
  v41 = sub_242F05780();
  if ((sub_242F05840() & 1) == 0)
  {

    (*(v11 + 8))(v13, v44);
    sub_242D39AFC(v15, type metadata accessor for Zone);
    sub_242C6D138(v21, &qword_27ECF2EC8, &qword_242F175C0);
    goto LABEL_18;
  }

  v38 = v10;
  v39 = a2;
  v40 = v5;
  v5 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v46[0] = v24;
  *v5 = 136315394;
  sub_242CA321C(v21, v18, &qword_27ECF2EC8, &qword_242F175C0);
  v25 = type metadata accessor for RequestContentModel(0);
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    sub_242C6D138(v18, &qword_27ECF2EC8, &qword_242F175C0);
LABEL_8:

    v26 = 0xD000000000000015;
    v28 = 0x8000000242F5A1F0;
    goto LABEL_9;
  }

  v26 = RequestContentModel.displayName.getter();
  v28 = v27;
  sub_242D39AFC(v18, type metadata accessor for RequestContentModel);
  if (!v28)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_242C6D138(v21, &qword_27ECF2EC8, &qword_242F175C0);
  v29 = sub_242C8FD38(v26, v28, v46);

  *(v5 + 4) = v29;
  *(v5 + 12) = 2080;
  v30 = v15[*(v42 + 40)];
  v31 = 0x31656E6F7ALL;
  if (v30)
  {
    v31 = 0x32656E6F7ALL;
  }

  if (v30 == 2)
  {
    v32 = 0xD000000000000015;
  }

  else
  {
    v32 = v31;
  }

  if (v30 == 2)
  {
    v33 = 0x8000000242F5A1F0;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  sub_242D39AFC(v15, type metadata accessor for Zone);
  v34 = sub_242C8FD38(v32, v33, v46);

  *(v5 + 14) = v34;
  v35 = sub_242F03940();
  _os_signpost_emit_with_name_impl(&dword_242C53000, v23, v41, v35, "RequestContent transition - rotation: ", "newContent: %s, ZoneRegion: %s", v5, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245D287D0](v24, -1, -1);
  MEMORY[0x245D287D0](v5, -1, -1);

  (*(v11 + 8))(v13, v44);
  LOBYTE(v5) = v40;
  v10 = v38;
  a2 = v39;
LABEL_18:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_242CA321C(v43, v10, &qword_27ECF23E8, &unk_242F13C40);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
    (*(*(v37 - 8) + 56))(v10, 0, 2, v37);
    ClusterTransitionCoordinator.rotateCarousel(zone:direction:dismissRequestContent:animated:)(a2, v10, 0, v5 & 1);

    return sub_242D39AFC(v10, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  }

  return result;
}

uint64_t ClusterTransitionCoordinator.rotateCarousel(zone:direction:dismissRequestContent:animated:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v268 = a4;
  v261 = a3;
  v291 = a2;
  v6 = sub_242F03960();
  v275 = *(v6 - 8);
  v276 = v6;
  MEMORY[0x28223BE20](v6);
  v280 = v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = type metadata accessor for RequestContentModel(0);
  v270 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v260 = v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v262 = v250 - v10;
  MEMORY[0x28223BE20](v11);
  v264 = v250 - v12;
  MEMORY[0x28223BE20](v13);
  v263 = (v250 - v14);
  MEMORY[0x28223BE20](v15);
  v269 = v250 - v16;
  MEMORY[0x28223BE20](v17);
  v271 = v250 - v18;
  MEMORY[0x28223BE20](v19);
  v273 = v250 - v20;
  v287 = sub_242F03720();
  v283 = *(v287 - 8);
  MEMORY[0x28223BE20](v287);
  v279 = v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF23E8, &unk_242F13C40);
  MEMORY[0x28223BE20](v22 - 8);
  v278 = v250 - v23;
  v24 = type metadata accessor for ClusterTransitionCoordinator.ListDirection(0);
  MEMORY[0x28223BE20](v24 - 8);
  v266 = v250 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v290 = (v250 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3020, &qword_242F17A18);
  MEMORY[0x28223BE20](v28 - 8);
  v265 = v250 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v267 = v250 - v31;
  MEMORY[0x28223BE20](v32);
  *&v288 = v250 - v33;
  MEMORY[0x28223BE20](v34);
  v289 = v250 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2730, &qword_242F17940);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v250 - v37;
  *&v292 = type metadata accessor for Component(0);
  v39 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v277 = v250 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v281 = v250 - v42;
  MEMORY[0x28223BE20](v43);
  v274 = v250 - v44;
  MEMORY[0x28223BE20](v45);
  v284 = v250 - v46;
  MEMORY[0x28223BE20](v47);
  v282 = v250 - v48;
  MEMORY[0x28223BE20](v49);
  v286 = (v250 - v50);
  MEMORY[0x28223BE20](v51);
  v53 = v250 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = v250 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v250 - v58;
  sub_242CA321C(a1, v250 - v58, &qword_27ECFC780, &qword_242F17930);
  v285 = v4;
  v60 = *(v4 + OBJC_IVAR____TtC14CarPlayAssetUI28ClusterTransitionCoordinator_carouselModels);
  if (!*(v60 + 16) || (v61 = sub_242CE5568(v59), (v62 & 1) == 0))
  {
    sub_242C6D138(v59, &qword_27ECFC780, &qword_242F17930);
    (*(v39 + 56))(v38, 1, 1, v292);
    goto LABEL_8;
  }

  v251 = v53;
  v252 = v60;
  v258 = v56;
  v259 = v59;
  v63 = (*(v60 + 56) + 112 * v61);
  v65 = v63[1];
  v64 = v63[2];
  v303 = *v63;
  v304 = v65;
  v305 = v64;
  v66 = *(v63 + 89);
  v68 = v63[4];
  v67 = v63[5];
  v306 = v63[3];
  *v307 = v68;
  *&v307[16] = v67;
  *&v307[25] = v66;
  v256 = v304;
  v257 = *(&v303 + 1);
  v69 = v305;
  v70 = v306;
  v254 = v68;
  *&v255 = *(&v304 + 1);
  v253 = *&v307[8];
  v71 = *&v307[24];
  v72 = v66 >> 56;
  v73 = HIBYTE(v66);
  sub_242CA321C(&v303, &v298, &qword_27ECF21A8, &qword_242F17990);
  sub_242D1162C(v257, v256, v255, v69, *(&v69 + 1), v70, *(&v70 + 1), v254, v253, *(&v253 + 1), v71, v72, v73);
  v74 = v290;
  sub_242D39B5C(v291, v290, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3008, &qword_242F179F8);
  v76 = *(v75 - 8);
  v77 = v76 + 48;
  v257 = *(v76 + 48);
  v78 = v257(v74, 2, v75);
  v79 = v288;
  if (!v78)
  {
    sub_242CF6B3C(v74, v288, &qword_27ECF23E8, &unk_242F13C40);
  }

  v81 = *(v76 + 56);
  v80 = v76 + 56;
  v290 = v81;
  (v81)(v79, v78, 2, v75);
  v82 = v79;
  v83 = v289;
  sub_242CF6B3C(v82, v289, &qword_27ECF3020, &qword_242F17A18);
  sub_242D2E420(v83, v38);

  sub_242C6D138(v83, &qword_27ECF3020, &qword_242F17A18);
  v84 = (*(v39 + 48))(v38, 1, v292);
  v86 = v258;
  v85 = v259;
  if (v84 != 1)
  {
    sub_242D39C68(v38, v258, type metadata accessor for Component);
    v91 = v252;
    if (!*(v252 + 16) || (v92 = sub_242CE5568(v85), (v93 & 1) == 0))
    {
      sub_242D39AFC(v86, type metadata accessor for Component);
      v87 = &qword_27ECFC780;
      v88 = &qword_242F17930;
      v89 = v85;
      return sub_242C6D138(v89, v87, v88);
    }

    v250[1] = v77;
    *&v253 = v80;
    v254 = v75;
    v94 = (*(v91 + 56) + 112 * v92);
    v96 = v94[1];
    v95 = v94[2];
    v298 = *v94;
    v299 = v96;
    v300 = v95;
    v97 = *(v94 + 89);
    v99 = v94[4];
    v98 = v94[5];
    v301 = v94[3];
    v302[0] = v99;
    v302[1] = v98;
    *(&v302[1] + 9) = v97;
    *&v288 = *(&v298 + 1);
    v289 = v298;
    v100 = *(&v299 + 1);
    v256 = v299;
    v101 = v300;
    v103 = *(&v301 + 1);
    v102 = v301;
    v255 = *(v302 + 8);
    v104 = v99;
    v105 = *(&v302[1] + 1);
    v106 = v97 >> 56;
    v107 = HIBYTE(v97);
    sub_242CA321C(&v298, &v295, &qword_27ECF21A8, &qword_242F17990);
    v108 = v103;
    v109 = v258;
    v110 = sub_242D1162C(v288, v256, v100, v101, *(&v101 + 1), v102, v108, v104, v255, *(&v255 + 1), v105, v106, v107);
    MEMORY[0x28223BE20](v110);
    sub_242D3DC24(&qword_27ECF2FF8, type metadata accessor for Component, &protocol conformance descriptor for Component);
    sub_242D3DC24(&qword_27ECF3000, type metadata accessor for Component, &protocol conformance descriptor for Component);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v112 = v286;
    sub_242F03A80();

    v113 = v251;
    sub_242D39C68(v112, v251, type metadata accessor for Component);
    sub_242D3DC24(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v114 = v287;
    if (sub_242F04EE0())
    {
      sub_242D39AFC(v113, type metadata accessor for Component);
      v115 = v109;
LABEL_14:
      sub_242D39AFC(v115, type metadata accessor for Component);
      v87 = &qword_27ECFC780;
      v88 = &qword_242F17930;
      v89 = v259;
      return sub_242C6D138(v89, v87, v88);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v116 = v259;
    if (v295 == 1)
    {
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v117 = sub_242F039D0();
      __swift_project_value_buffer(v117, qword_27ED5D310);
      v118 = v282;
      sub_242D39B5C(v109, v282, type metadata accessor for Component);
      v119 = sub_242F039B0();
      v120 = sub_242F05700();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v295 = v122;
        *v121 = 136315138;
        v123 = v118;
        v124 = v278;
        sub_242CA321C(v123, v278, &qword_27ECF23E8, &unk_242F13C40);
        (*(v283 + 16))(v279, v124, v114);
        v125 = sub_242F04F90();
        v127 = v126;
        sub_242C6D138(v124, &qword_27ECF23E8, &unk_242F13C40);
        sub_242D39AFC(v282, type metadata accessor for Component);
        v128 = sub_242C8FD38(v125, v127, &v295);

        *(v121 + 4) = v128;
        _os_log_impl(&dword_242C53000, v119, v120, "In an active layout transition. Preventing component transition %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v122);
        MEMORY[0x245D287D0](v122, -1, -1);
        MEMORY[0x245D287D0](v121, -1, -1);

        sub_242D39AFC(v251, type metadata accessor for Component);
        v115 = v258;
        goto LABEL_14;
      }

      sub_242D39AFC(v118, type metadata accessor for Component);
      v139 = v113;
      goto LABEL_47;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_242F03A80();

    v129 = v295;
    if (!*(v295 + 16))
    {

      v132 = v280;
LABEL_28:
      v140 = v277;
      v131 = v281;
      v133 = v284;
LABEL_30:
      if (qword_27ECEF0A8 != -1)
      {
        swift_once();
      }

      v141 = sub_242F039A0();
      __swift_project_value_buffer(v141, qword_27ED5D270);
      sub_242D39B5C(v113, v133, type metadata accessor for Component);
      v142 = v274;
      sub_242D39B5C(v113, v274, type metadata accessor for Component);
      sub_242D39B5C(v109, v131, type metadata accessor for Component);
      sub_242D39B5C(v109, v140, type metadata accessor for Component);
      sub_242F03950();
      v143 = sub_242F03980();
      LODWORD(v292) = sub_242F05780();
      if (sub_242F05840())
      {
        v286 = v143;
        v144 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        v293 = v289;
        *v144 = 136315906;
        v145 = v284;
        v146 = v278;
        sub_242CA321C(v284, v278, &qword_27ECF23E8, &unk_242F13C40);
        v147 = *(v283 + 16);
        v283 += 16;
        *&v288 = v147;
        v147(v279, v146, v114);
        v148 = sub_242F04F90();
        v150 = v149;
        sub_242C6D138(v146, &qword_27ECF23E8, &unk_242F13C40);
        sub_242D39AFC(v145, type metadata accessor for Component);
        v151 = sub_242C8FD38(v148, v150, &v293);

        *(v144 + 4) = v151;
        *(v144 + 12) = 2080;
        Component.stableIdentifier.getter(&v295);
        v152 = v142;
        if (*(&v295 + 1))
        {
          *v294 = v295;
          v153 = sub_242F04F90();
          v155 = v154;
          sub_242D39AFC(v152, type metadata accessor for Component);
        }

        else
        {
          v155 = 0x8000000242F5A160;
          sub_242D39AFC(v142, type metadata accessor for Component);
          v153 = 0xD00000000000002DLL;
        }

        v156 = sub_242C8FD38(v153, v155, &v293);

        *(v144 + 14) = v156;
        *(v144 + 22) = 2080;
        v157 = v281;
        v158 = v278;
        sub_242CA321C(v281, v278, &qword_27ECF23E8, &unk_242F13C40);
        (v288)(v279, v158, v287);
        v159 = sub_242F04F90();
        v161 = v160;
        sub_242C6D138(v158, &qword_27ECF23E8, &unk_242F13C40);
        sub_242D39AFC(v157, type metadata accessor for Component);
        v162 = sub_242C8FD38(v159, v161, &v293);

        *(v144 + 24) = v162;
        *(v144 + 32) = 2080;
        v163 = v277;
        Component.stableIdentifier.getter(&v295);
        v164 = v286;
        if (*(&v295 + 1))
        {
          *v294 = v295;
          v165 = sub_242F04F90();
          v167 = v166;
          sub_242D39AFC(v163, type metadata accessor for Component);
        }

        else
        {
          v167 = 0x8000000242F5A160;
          sub_242D39AFC(v163, type metadata accessor for Component);
          v165 = 0xD00000000000002DLL;
        }

        v109 = v258;
        v116 = v259;
        v113 = v251;
        v168 = v280;
        v169 = v292;
        v170 = sub_242C8FD38(v165, v167, &v293);

        *(v144 + 34) = v170;
        v171 = sub_242F03940();
        _os_signpost_emit_with_name_impl(&dword_242C53000, v164, v169, v171, "Dynamic Content area transition started.", "Starting Component: %s, Starting Instrument kind: %s, Target Component: %s, Target Instrument kind: %s", v144, 0x2Au);
        v172 = v289;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v172, -1, -1);
        MEMORY[0x245D287D0](v144, -1, -1);

        (*(v275 + 8))(v168, v276);
      }

      else
      {

        (*(v275 + 8))(v132, v276);
        sub_242D39AFC(v140, type metadata accessor for Component);
        sub_242D39AFC(v131, type metadata accessor for Component);
        sub_242D39AFC(v142, type metadata accessor for Component);
        sub_242D39AFC(v284, type metadata accessor for Component);
        v116 = v259;
      }

      v173 = v252;
      if (!*(v252 + 16) || (v174 = sub_242CE5568(v116), (v175 & 1) == 0))
      {
        v139 = v113;
LABEL_47:
        sub_242D39AFC(v139, type metadata accessor for Component);
        v196 = v109;
LABEL_48:
        sub_242D39AFC(v196, type metadata accessor for Component);
        v87 = &qword_27ECFC780;
        v88 = &qword_242F17930;
        v89 = v116;
        return sub_242C6D138(v89, v87, v88);
      }

      v176 = (*(v173 + 56) + 112 * v174);
      v178 = v176[1];
      v177 = v176[2];
      v295 = *v176;
      v296[0] = v178;
      v296[1] = v177;
      v179 = *(v176 + 89);
      v181 = v176[4];
      v180 = v176[5];
      v296[2] = v176[3];
      v297[0] = v181;
      v297[1] = v180;
      *(&v297[1] + 9) = v179;
      *&v292 = *(&v295 + 1);
      v182 = *(&v296[0] + 1);
      v289 = *&v296[0];
      v183 = v296[1];
      v184 = v296[2];
      v185 = v181;
      v288 = *(v297 + 8);
      v186 = *(&v297[1] + 1);
      v187 = v179 >> 56;
      v188 = HIBYTE(v179);
      sub_242CA321C(&v295, v294, &qword_27ECF21A8, &qword_242F17990);
      sub_242D1162C(v292, v289, v182, v183, *(&v183 + 1), v184, *(&v184 + 1), v185, v288, *(&v288 + 1), v186, v187, v188);
      v189 = v266;
      sub_242D39B5C(v291, v266, type metadata accessor for ClusterTransitionCoordinator.ListDirection);
      v190 = v254;
      v191 = v257(v189, 2, v254);
      v192 = v265;
      if (!v191)
      {
        sub_242CF6B3C(v189, v265, &qword_27ECF23E8, &unk_242F13C40);
      }

      (v290)(v192, v191, 2, v190);
      v193 = v192;
      v194 = v267;
      sub_242CF6B3C(v193, v267, &qword_27ECF3020, &qword_242F17A18);
      sub_242D32994(v194, v268 & 1);

      sub_242C6D138(v194, &qword_27ECF3020, &qword_242F17A18);
      v195 = v251;
LABEL_65:
      sub_242D39AFC(v195, type metadata accessor for Component);
      v115 = v258;
      goto LABEL_14;
    }

    v130 = sub_242CE5568(v116);
    v132 = v280;
    v131 = v281;
    v133 = v284;
    if ((v134 & 1) == 0)
    {

      v140 = v277;
      goto LABEL_30;
    }

    v135 = v273;
    sub_242D39B5C(*(v129 + 56) + *(v270 + 72) * v130, v273, type metadata accessor for RequestContentModel);

    v136 = v271;
    sub_242D39B5C(v135, v271, type metadata accessor for RequestContentModel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v138 = type metadata accessor for RequestContentModel;
    if (EnumCaseMultiPayload > 1)
    {
      if ((EnumCaseMultiPayload - 2) >= 2)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (EnumCaseMultiPayload)
    {
      v138 = type metadata accessor for PopoverModel;
LABEL_53:
      sub_242D39AFC(v136, v138);
LABEL_54:
      v199 = v269;
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v200 = sub_242F039D0();
      __swift_project_value_buffer(v200, qword_27ED5D310);
      sub_242D39B5C(v135, v199, type metadata accessor for RequestContentModel);
      v201 = sub_242F039B0();
      v202 = sub_242F05700();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *&v295 = v204;
        *v203 = 136315138;
        v205 = RequestContentModel.displayName.getter();
        if (v206)
        {
          v207 = v205;
        }

        else
        {
          v207 = 0xD000000000000015;
        }

        v208 = v199;
        if (v206)
        {
          v209 = v206;
        }

        else
        {
          v209 = 0x8000000242F5A1F0;
        }

        sub_242D39AFC(v208, type metadata accessor for RequestContentModel);
        v210 = sub_242C8FD38(v207, v209, &v295);

        *(v203 + 4) = v210;
        _os_log_impl(&dword_242C53000, v201, v202, "Preventing carousel rotation. Showing floating content. %s", v203, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v204);
        MEMORY[0x245D287D0](v204, -1, -1);
        MEMORY[0x245D287D0](v203, -1, -1);

        v211 = v135;
LABEL_64:
        sub_242D39AFC(v211, type metadata accessor for RequestContentModel);
        v195 = v113;
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    sub_242D39AFC(v136, type metadata accessor for RequestContentModel);
    v197 = v263;
    sub_242D39B5C(v135, v263, type metadata accessor for RequestContentModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_242D39AFC(v197, type metadata accessor for RequestContentModel);
      v198 = v264;
    }

    else
    {
      v213 = v197[2];
      v212 = v197[3];
      v214 = *v197;
      v296[0] = v197[1];
      v296[1] = v213;
      v215 = v197[4];
      v296[2] = v212;
      v297[0] = v215;
      v295 = v214;
      v198 = v264;
      if ((BYTE9(v212) & 1) == 0)
      {
        v226 = 0;
        v220 = v297[0];
        v221 = *(v296 + 8);
        v222 = *(&v296[1] + 8);
        v223 = BYTE8(v296[2]);
        v224 = BYTE1(v296[0]);
        v225 = v296[0];
LABEL_75:
        LOBYTE(v296[0]) = v225;
        BYTE1(v296[0]) = v224;
        *(v296 + 8) = v221;
        *(&v296[1] + 8) = v222;
        BYTE8(v296[2]) = v223;
        BYTE9(v296[2]) = v226;
        v297[0] = v220;
        if ((v225 & 1) == 0)
        {
          if (qword_27ECEF4D0 != -1)
          {
            swift_once();
          }

          v239 = sub_242F039D0();
          __swift_project_value_buffer(v239, qword_27ED5D310);
          v199 = v262;
          sub_242D39B5C(v135, v262, type metadata accessor for RequestContentModel);
          v240 = sub_242F039B0();
          v241 = sub_242F05700();
          if (os_log_type_enabled(v240, v241))
          {
            v242 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            v294[0] = v243;
            *v242 = 136315138;
            v244 = RequestContentModel.displayName.getter();
            v246 = v199;
            if (v245)
            {
              v247 = v244;
            }

            else
            {
              v247 = 0xD000000000000015;
            }

            if (v245)
            {
              v248 = v245;
            }

            else
            {
              v248 = 0x8000000242F5A1F0;
            }

            sub_242D39AFC(v246, type metadata accessor for RequestContentModel);
            v249 = sub_242C8FD38(v247, v248, v294);

            *(v242 + 4) = v249;
            _os_log_impl(&dword_242C53000, v240, v241, "Preventing carousel rotation. non-dismissible content is active.  %s", v242, 0xCu);
            __swift_destroy_boxed_opaque_existential_2Tm(v243);
            MEMORY[0x245D287D0](v243, -1, -1);
            MEMORY[0x245D287D0](v242, -1, -1);

            sub_242D3A090(&v295);
            v211 = v135;
            goto LABEL_64;
          }

          sub_242D3A090(&v295);
LABEL_67:
          sub_242D39AFC(v199, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v135, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v113, type metadata accessor for Component);
          v196 = v258;
          goto LABEL_48;
        }

        if ((v261 & 1) == 0)
        {
          sub_242D39AFC(v135, type metadata accessor for RequestContentModel);
          sub_242D3A090(&v295);
          goto LABEL_99;
        }

        v292 = v220;
        if (qword_27ECEF4D0 != -1)
        {
          swift_once();
        }

        v227 = sub_242F039D0();
        __swift_project_value_buffer(v227, qword_27ED5D310);
        v228 = v260;
        sub_242D39B5C(v135, v260, type metadata accessor for RequestContentModel);
        v229 = sub_242F039B0();
        v230 = sub_242F05700();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v294[0] = v232;
          *v231 = 136315138;
          v233 = RequestContentModel.displayName.getter();
          if (v234)
          {
            v235 = v233;
          }

          else
          {
            v235 = 0xD000000000000015;
          }

          if (v234)
          {
            v236 = v234;
          }

          else
          {
            v236 = 0x8000000242F5A1F0;
          }

          sub_242D39AFC(v228, type metadata accessor for RequestContentModel);
          v237 = sub_242C8FD38(v235, v236, v294);

          *(v231 + 4) = v237;
          _os_log_impl(&dword_242C53000, v229, v230, "Rotation requested while widget content is active. Turning off Request Content. %s", v231, 0xCu);
          __swift_destroy_boxed_opaque_existential_2Tm(v232);
          MEMORY[0x245D287D0](v232, -1, -1);
          MEMORY[0x245D287D0](v231, -1, -1);
        }

        else
        {

          v238 = sub_242D39AFC(v228, type metadata accessor for RequestContentModel);
        }

        if (v292)
        {
          (v292)(v238);
        }

        sub_242D3A090(&v295);
        sub_242D39AFC(v273, type metadata accessor for RequestContentModel);
        v109 = v258;
        v113 = v251;
        v132 = v280;
        v114 = v287;
        goto LABEL_28;
      }

      sub_242D3A090(&v295);
    }

    sub_242D39B5C(v135, v198, type metadata accessor for RequestContentModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_242D39AFC(v198, type metadata accessor for RequestContentModel);
LABEL_98:
      sub_242D39AFC(v135, type metadata accessor for RequestContentModel);
LABEL_99:
      v140 = v277;
      v109 = v258;
      v131 = v281;
      goto LABEL_30;
    }

    v217 = v198[2];
    v216 = v198[3];
    v218 = *v198;
    v296[0] = v198[1];
    v296[1] = v217;
    v219 = v198[4];
    v296[2] = v216;
    v297[0] = v219;
    v295 = v218;
    if ((BYTE9(v216) & 1) == 0)
    {
      sub_242D3A090(&v295);
      goto LABEL_98;
    }

    v220 = v297[0];
    v221 = *(v296 + 8);
    v222 = *(&v296[1] + 8);
    v223 = BYTE8(v296[2]);
    v224 = BYTE1(v296[0]);
    v225 = v296[0];
    v226 = 1;
    goto LABEL_75;
  }

  sub_242C6D138(v259, &qword_27ECFC780, &qword_242F17930);
LABEL_8:
  v87 = &qword_27ECF2730;
  v88 = &qword_242F17940;
  v89 = v38;
  return sub_242C6D138(v89, v87, v88);
}

uint64_t sub_242D2614C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2168, &unk_242F17EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Instrument(0);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v61 = a1[2];
  v62 = v15;
  v63 = a1[4];
  v16 = a1[1];
  v59 = *a1;
  v60 = v16;
  v17 = v61;
  if (BYTE8(v15))
  {
    if (BYTE8(v15) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF03D8, &qword_242F0D2C0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_242F09510;
      v19 = qword_27ECEEF60;

      if (v19 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v20 = byte_27ECF1000;
      v21 = dword_27ECF1004;
      if (qword_27ECEEED8 != -1)
      {
        swift_once();
      }

      v58[0] = v20;
      *&v58[4] = v21;
      *&v58[8] = xmmword_27ECF0E90;
      *&v58[24] = xmmword_27ECF0EA0;
      *&v58[40] = unk_27ECF0EB0;
      *&v58[48] = xmmword_27ECF0E90;
      *&v58[64] = xmmword_27ECF0EA0;
      *&v58[80] = unk_27ECF0EB0;
      sub_242CB5A7C(v58);
      v22 = *&v58[80];
      v23 = *&v58[112];
      *(v18 + 128) = *&v58[96];
      *(v18 + 144) = v23;
      v24 = *&v58[48];
      v25 = *&v58[64];
      *(v18 + 64) = *&v58[32];
      *(v18 + 80) = v24;
      *(v18 + 160) = *&v58[128];
      *(v18 + 96) = v25;
      *(v18 + 112) = v22;
      v26 = *&v58[16];
      *(v18 + 32) = *v58;
      *(v18 + 48) = v26;
      VisibilityConfiguration.init(arrayLiteral:)(v18, &v56);

      v27 = type metadata accessor for PopoverModel(0);
      return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    else
    {
      v46 = type metadata accessor for PopoverModel(0);
      v47 = *(*(v46 - 8) + 56);

      return v47(a2, 1, 1, v46);
    }
  }

  else
  {
    v55 = a2;
    v30 = *(&v61 + 1);
    v29 = v62;
    v31 = *(&v60 + 1);
    *v58 = *(&v60 + 1);
    *&v58[8] = v61;
    v52 = v62;
    v53 = *(&v60 + 1);
    *&v58[24] = v62;
    v54 = *(&v61 + 1);
    v50 = v12;
    sub_242CFB44C(v58);
    sub_242CF6A84(v31, v17, v30, v29, 0);

    sub_242F03710();
    v49 = sub_242F04730();
    sub_242F03710();
    sub_242CA321C(v7, v14, &qword_27ECF2168, &unk_242F17EA0);
    sub_242C6D138(v7, &qword_27ECF2168, &unk_242F17EA0);
    v48 = v17;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2170, &qword_242F13A98);
    v51 = v2;
    v33 = *(v32 + 52);
    *&v14[v33] = 7;
    sub_242CA321C(v10, v7, &qword_27ECF2168, &unk_242F17EA0);
    sub_242C6D138(v14, &qword_27ECF2170, &qword_242F13A98);
    sub_242CA321C(v7, v14, &qword_27ECF2168, &unk_242F17EA0);
    sub_242C6D138(v7, &qword_27ECF2168, &unk_242F17EA0);
    *&v14[v33] = 7;
    v34 = v50;
    memcpy(&v14[*(v50 + 20)], v58, 0x238uLL);
    v35 = *(v34 + 24);

    v36 = &v14[v35];
    *(v36 + 12) = 256;
    *(v36 + 4) = 0;
    *(v36 + 5) = 0;
    v36[50] = -1;
    *(v36 + 24) = 0;
    *(v36 + 1) = 0;
    *(v36 + 2) = 0;
    *v36 = v49;
    sub_242C6D138(v10, &qword_27ECF2168, &unk_242F17EA0);
    sub_242CF6AD8(v53, v48, v54, v52, 0);
    v36[24] = 0;
    LOBYTE(v30) = v60;
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v39 = v62;
    *(v38 + 3) = v61;
    *(v38 + 4) = v39;
    *(v38 + 5) = v63;
    v40 = v60;
    *(v38 + 1) = v59;
    *(v38 + 2) = v40;
    v41 = v14;
    v42 = v55;
    sub_242D39C68(v41, v55, type metadata accessor for Instrument);
    v43 = type metadata accessor for PopoverModel(0);
    *(v42 + v43[5]) = v30;
    v44 = (v42 + v43[6]);
    *v44 = sub_242D3D7FC;
    v44[1] = v37;
    v45 = (v42 + v43[7]);
    *v45 = sub_242D3D804;
    v45[1] = v38;
    (*(*(v43 - 1) + 56))(v42, 0, 1, v43);
    return sub_242D3D834(&v59, &v57);
  }
}

uint64_t sub_242D2675C(void (**a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, int a5)
{
  v136 = a5;
  v135 = a4;
  v138 = a3;
  v151 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v120 - v8;
  v133 = type metadata accessor for Zone(0);
  v124 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = v9;
  v126 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_242F042C0();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3178, &qword_242F4AA50);
  MEMORY[0x28223BE20](v11 - 8);
  v145 = &v120 - v12;
  v13 = type metadata accessor for PopoverModel(0);
  v14 = *(v13 - 8);
  v143 = v13;
  v144 = v14;
  MEMORY[0x28223BE20](v13);
  v123 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v15;
  MEMORY[0x28223BE20](v16);
  v121 = &v120 - v17;
  v18 = type metadata accessor for RequestContentModel(0);
  v150 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v131 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v137 = &v120 - v21;
  MEMORY[0x28223BE20](v22);
  v130 = &v120 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3180, &unk_242F17EC0);
  MEMORY[0x28223BE20](v27);
  v29 = &v120 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8, &qword_242F175C0);
  MEMORY[0x28223BE20](v30 - 8);
  v132 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v142 = &v120 - v33;
  MEMORY[0x28223BE20](v34);
  v141 = &v120 - v35;
  MEMORY[0x28223BE20](v36);
  v140 = &v120 - v37;
  MEMORY[0x28223BE20](v38);
  v149 = &v120 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = (&v120 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v120 - v44;
  swift_getKeyPath();
  swift_getKeyPath();
  v146 = v5;
  sub_242F03A80();

  v46 = v152;
  v47 = *(v152 + 16);
  v147 = a2;
  if (v47 && (v48 = sub_242CE5568(a2), (v49 & 1) != 0))
  {
    sub_242D39B5C(*(v46 + 56) + v150[9] * v48, v45, type metadata accessor for RequestContentModel);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v150;
  v139 = v150[7];
  v139(v45, v50, 1, v18);
  v52 = *(v27 + 48);
  sub_242CA321C(v45, v29, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242CA321C(v151, &v29[v52], &qword_27ECF2EC8, &qword_242F175C0);
  v53 = v51[6];
  v54 = v53(v29, 1, v18);
  v148 = v53;
  if (v54 == 1)
  {
    sub_242C6D138(v45, &qword_27ECF2EC8, &qword_242F175C0);
    if (v53(&v29[v52], 1, v18) == 1)
    {
      return sub_242C6D138(v29, &qword_27ECF2EC8, &qword_242F175C0);
    }

    goto LABEL_10;
  }

  sub_242CA321C(v29, v42, &qword_27ECF2EC8, &qword_242F175C0);
  if (v53(&v29[v52], 1, v18) == 1)
  {
    sub_242C6D138(v45, &qword_27ECF2EC8, &qword_242F175C0);
    sub_242D39AFC(v42, type metadata accessor for RequestContentModel);
LABEL_10:
    sub_242C6D138(v29, &qword_27ECF3180, &unk_242F17EC0);
    goto LABEL_11;
  }

  sub_242D39C68(&v29[v52], v26, type metadata accessor for RequestContentModel);
  v65 = _s14CarPlayAssetUI19RequestContentModelO2eeoiySbAC_ACtFZ_0(v42, v26);
  sub_242D39AFC(v26, type metadata accessor for RequestContentModel);
  sub_242C6D138(v45, &qword_27ECF2EC8, &qword_242F175C0);
  sub_242D39AFC(v42, type metadata accessor for RequestContentModel);
  result = sub_242C6D138(v29, &qword_27ECF2EC8, &qword_242F175C0);
  if ((v65 & 1) == 0)
  {
LABEL_11:
    v153 = 0;
    v154 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 0;
    v120 = (v56 + 16);
    *(v56 + 24) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v146;
    sub_242F03A80();

    v58 = v152;
    if (*(v152 + 16))
    {
      v59 = sub_242CE5568(v147);
      v60 = v149;
      v62 = v140;
      v61 = v141;
      if (v63)
      {
        sub_242D39B5C(*(v58 + 56) + v150[9] * v59, v149, type metadata accessor for RequestContentModel);
        v64 = 0;
      }

      else
      {
        v64 = 1;
      }
    }

    else
    {
      v64 = 1;
      v60 = v149;
      v62 = v140;
      v61 = v141;
    }

    v139(v60, v64, 1, v18);
    sub_242CA321C(v60, v62, &qword_27ECF2EC8, &qword_242F175C0);
    v66 = v148;
    if (v148(v62, 1, v18) == 1)
    {
      sub_242C6D138(v62, &qword_27ECF2EC8, &qword_242F175C0);
      v67 = v142;
LABEL_20:
      sub_242CA321C(v151, v61, &qword_27ECF2EC8, &qword_242F175C0);
      if (v66(v61, 1, v18) == 1)
      {
        sub_242C6D138(v61, &qword_27ECF2EC8, &qword_242F175C0);
LABEL_22:
        v68 = 0;
        goto LABEL_41;
      }

      sub_242D39B5C(v61, v137, type metadata accessor for RequestContentModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v73 = type metadata accessor for PopoverModel;
      }

      else
      {
        if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
        {
          sub_242D39AFC(v137, type metadata accessor for RequestContentModel);
          sub_242D39AFC(v61, type metadata accessor for RequestContentModel);
          goto LABEL_22;
        }

        v73 = type metadata accessor for RequestContentModel;
      }

      sub_242D39AFC(v137, v73);
      v62 = v61;
LABEL_36:
      sub_242D39AFC(v62, type metadata accessor for RequestContentModel);
      if (qword_27ECEF4D0 != -1)
      {
        swift_once();
      }

      v74 = sub_242F039D0();
      __swift_project_value_buffer(v74, qword_27ED5D310);
      v75 = sub_242F039B0();
      v76 = sub_242F05720();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_242C53000, v75, v76, "RequestContent - Either presenting or dismissing floating content.", v77, 2u);
        MEMORY[0x245D287D0](v77, -1, -1);
      }

      v68 = v136;
LABEL_41:
      sub_242CA321C(v60, v67, &qword_27ECF2EC8, &qword_242F175C0);
      if (v148(v67, 1, v18) == 1)
      {
        sub_242C6D138(v67, &qword_27ECF2EC8, &qword_242F175C0);
        v78 = v145;
        (*(v144 + 56))(v145, 1, 1, v143);
      }

      else
      {
        v79 = v131;
        sub_242D39B5C(v67, v131, type metadata accessor for RequestContentModel);
        v80 = swift_getEnumCaseMultiPayload();
        v81 = v144;
        v78 = v145;
        v82 = v143;
        if (v80 == 1)
        {
          sub_242D39C68(v79, v145, type metadata accessor for PopoverModel);
          (*(v81 + 56))(v78, 0, 1, v82);
        }

        else
        {
          (*(v144 + 56))(v145, 1, 1, v143);
          sub_242D39AFC(v79, type metadata accessor for RequestContentModel);
        }

        sub_242D39AFC(v67, type metadata accessor for RequestContentModel);
        if ((*(v81 + 48))(v78, 1, v82) != 1)
        {
          v88 = v68;
          v89 = v121;
          sub_242D39C68(v78, v121, type metadata accessor for PopoverModel);
          v90 = v56;
          v91 = v123;
          sub_242D39B5C(v89, v123, type metadata accessor for PopoverModel);
          v92 = (*(v81 + 80) + 24) & ~*(v81 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = v57;
          sub_242D39C68(v91, v84 + v92, type metadata accessor for PopoverModel);
          v153 = sub_242D3D95C;
          v154 = v84;
          v93 = v89;
          v83 = sub_242D3D95C;
          sub_242D39C68(v93, v91, type metadata accessor for PopoverModel);
          v94 = swift_allocObject();
          *(v94 + 16) = v57;
          v95 = v91;
          v56 = v90;
          sub_242D39C68(v95, v94 + v92, type metadata accessor for PopoverModel);
          v96 = *(v90 + 16);
          v97 = *(v90 + 24);
          *(v90 + 16) = sub_242D3DB74;
          *(v90 + 24) = v94;
          swift_retain_n();
          v98 = v96;
          LOBYTE(v96) = v88;
          sub_242C655DC(v98, v97);
          v85 = 0;
          if (v96)
          {
LABEL_48:
            v86 = v147;
            v87 = *(v147 + *(v133 + 40));
            if (v87 != 2)
            {
              v150 = v56;
              if (qword_27ECEF800 != -1)
              {
                swift_once();
              }

              v145 = qword_27ED5D358;
              v108 = v127;
              v109 = sub_242F042B0();
              v148 = &v120;
              MEMORY[0x28223BE20](v109);
              *(&v120 - 6) = v57;
              v110 = v87 & 1;
              *(&v120 - 40) = v110;
              *(&v120 - 4) = v151;
              *(&v120 - 3) = v86;
              *(&v120 - 2) = &v153;
              v111 = v126;
              sub_242D39B5C(v86, v126, type metadata accessor for Zone);
              v112 = v57;
              v113 = (*(v124 + 80) + 24) & ~*(v124 + 80);
              v114 = v113 + v125;
              v115 = (((v113 + v125) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
              v116 = swift_allocObject();
              *(v116 + 16) = v112;
              sub_242D39C68(v111, v116 + v113, type metadata accessor for Zone);
              *(v116 + v114) = v110;
              *(v116 + (v114 & 0xFFFFFFFFFFFFFFF8) + 8) = v150;
              v117 = (v116 + v115);
              v118 = v138;
              v119 = v135;
              *v117 = v138;
              v117[1] = v119;

              sub_242C5573C(v118, v119);
              sub_242F03D40();

              (*(v128 + 8))(v108, v129);
              sub_242C6D138(v149, &qword_27ECF2EC8, &qword_242F175C0);

              v106 = v153;
              v107 = v154;
              return sub_242C655DC(v106, v107);
            }

LABEL_57:
            sub_242C6D138(v149, &qword_27ECF2EC8, &qword_242F175C0);

            v106 = v83;
            v107 = v84;
            return sub_242C655DC(v106, v107);
          }

LABEL_51:
          v150 = v56;
          v99 = v134;
          sub_242CA321C(v147, v134, &qword_27ECFC780, &qword_242F17930);
          v100 = v132;
          sub_242CA321C(v151, v132, &qword_27ECF2EC8, &qword_242F175C0);
          swift_getKeyPath();
          swift_getKeyPath();
          v101 = sub_242F03A70();
          sub_242E080E0(v100, v99);
          v101(&v152, 0);

          if ((v85 & 1) == 0)
          {
            v102 = (v83)(v102);
          }

          v103 = *v120;
          if (*v120)
          {
            v104 = v150[3];

            v103(v105);
            v102 = sub_242C655DC(v103, v104);
          }

          if (v138)
          {
            v138(v102);
          }

          goto LABEL_57;
        }
      }

      sub_242C6D138(v78, &qword_27ECF3178, &qword_242F4AA50);
      v83 = 0;
      v84 = 0;
      v85 = 1;
      if (v68)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    v69 = v130;
    sub_242D39B5C(v62, v130, type metadata accessor for RequestContentModel);
    v70 = swift_getEnumCaseMultiPayload();
    v67 = v142;
    if (v70 == 1)
    {
      v71 = type metadata accessor for PopoverModel;
    }

    else
    {
      if (v70 != 2 && v70 != 3)
      {
        sub_242D39AFC(v69, type metadata accessor for RequestContentModel);
        sub_242D39AFC(v62, type metadata accessor for RequestContentModel);
        goto LABEL_20;
      }

      v71 = type metadata accessor for RequestContentModel;
    }

    sub_242D39AFC(v69, v71);
    goto LABEL_36;
  }

  return result;
}