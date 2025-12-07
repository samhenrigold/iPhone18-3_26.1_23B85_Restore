uint64_t _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v12 = a2[1];
      v13 = a2[2];
      v14 = a1[1];
      v15 = a1[2];
      v19[0] = v2 & 1;
      v20 = v14;
      v21 = v15;
      v16[0] = v3 & 1;
      v17 = v12;
      v18 = v13;
      v11 = _s19NewsPersonalization0B6ScriptV6MomentO04TaskD0V2eeoiySbAG_AGtFZ_0(v19, v16);
      return v11 & 1;
    }

    goto LABEL_21;
  }

  if (v3 < 0)
  {
LABEL_21:
    v11 = 0;
    return v11 & 1;
  }

  if (v2)
  {
    v4 = 6581861;
  }

  else
  {
    v4 = 0x7472617473;
  }

  if (v2)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v3)
  {
    v6 = 6581861;
  }

  else
  {
    v6 = 0x7472617473;
  }

  if (v3)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 != v6 || v5 != v7)
  {
    v9 = sub_1C6D7A130();

    return v9 & 1;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v17 = *(a1 + 48);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v21 = *a1;
  v22 = v2;
  LOBYTE(v23) = v12;
  v18 = v6;
  v19 = v7;
  LOBYTE(v20) = v13;
  sub_1C6B35FD4(v21, v2, v12);
  sub_1C6B35FD4(v6, v7, v13);
  v14 = sub_1C6CA3F90(&v21, &v18);
  sub_1C6B360B4(v18, v19, v20);
  sub_1C6B360B4(v21, v22, v23);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v21 = v4;
    v22 = v3;
    v23 = v5;
    if (v9 >> 1 != 0xFFFFFFFF)
    {
      v18 = v9;
      v19 = v8;
      v20 = v10;
      sub_1C6CA5798(v4, v3, v5);
      sub_1C6CA5798(v9, v8, v10);
      sub_1C6CA5798(v4, v3, v5);
      v16 = _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(&v21, &v18);
      sub_1C6CA5570(v18, v19, v20);
      sub_1C6CA5570(v21, v22, v23);
      sub_1C6CA555C(v4, v3, v5);
      if (v16)
      {
        goto LABEL_10;
      }

      return 0;
    }

    sub_1C6CA5798(v4, v3, v5);
    sub_1C6CA5798(v9, v8, v10);
    sub_1C6CA5798(v4, v3, v5);
    sub_1C6CA5570(v4, v3, v5);
LABEL_7:
    sub_1C6CA555C(v4, v3, v5);
    sub_1C6CA555C(v9, v8, v10);
    return 0;
  }

  sub_1C6CA5798(v4, v3, v5);
  sub_1C6CA5798(v9, v8, v10);
  if (v9 >> 1 != 0xFFFFFFFF)
  {
    goto LABEL_7;
  }

  sub_1C6CA555C(v4, v3, v5);
LABEL_10:

  return sub_1C6B62C6C(v17, v11);
}

uint64_t sub_1C6CA441C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        v5 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v7 = v6;
        if (v5 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v7 == v8)
        {
          v9 = 1;
LABEL_43:

          return v9 & 1;
        }

LABEL_42:
        v9 = sub_1C6D7A130();
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (v4 == 2)
    {
      v13 = 5131843;
      v14 = v3;
      v15 = 0xE300000000000000;
      v16 = 1313887045;
      if (v3 != 2)
      {
        v16 = 1330659671;
      }

      v17 = 0x696C6F505F4E4E43;
      if (v3)
      {
        v15 = 0xEC00000073636974;
      }

      else
      {
        v17 = 5131843;
      }

      if (v3 <= 1u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v14 <= 1)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      v20 = 0xE300000000000000;
      v21 = 1313887045;
      if (*a2 != 2)
      {
        v21 = 1330659671;
      }

      if (*a2)
      {
        v13 = 0x696C6F505F4E4E43;
        v20 = 0xEC00000073636974;
      }

      if (*a2 <= 1u)
      {
        v22 = v13;
      }

      else
      {
        v22 = v21;
      }

      if (*a2 <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (v18 != v22 || v19 != v23)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

LABEL_41:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_41;
  }

  v10 = a1[1];
  if (v3 == *a2 && v10 == a2[1])
  {
LABEL_40:
    v9 = 1;
    return v9 & 1;
  }

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV3TagO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        v5 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
        v7 = v6;
        if (v5 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v7 == v8)
        {
          v9 = 1;
LABEL_42:

          return v9 & 1;
        }

LABEL_41:
        v9 = sub_1C6D7A130();
        goto LABEL_42;
      }
    }

    else if (v4 == 2)
    {
      v13 = 5131843;
      v14 = v3;
      v15 = 0xE300000000000000;
      v16 = 1313887045;
      if (v3 != 2)
      {
        v16 = 1330659671;
      }

      v17 = 0x696C6F505F4E4E43;
      if (v3)
      {
        v15 = 0xEC00000073636974;
      }

      else
      {
        v17 = 5131843;
      }

      if (v3 <= 1u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v14 <= 1)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0xE400000000000000;
      }

      v20 = 0xE300000000000000;
      v21 = 1313887045;
      if (*a2 != 2)
      {
        v21 = 1330659671;
      }

      if (*a2)
      {
        v13 = 0x696C6F505F4E4E43;
        v20 = 0xEC00000073636974;
      }

      if (*a2 <= 1u)
      {
        v22 = v13;
      }

      else
      {
        v22 = v21;
      }

      if (*a2 <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (v18 != v22 || v19 != v23)
      {
        goto LABEL_41;
      }

      v9 = 1;
      return v9 & 1;
    }

LABEL_40:
    v9 = 0;
    return v9 & 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_40;
  }

  v10 = a1[1];
  if (v3 == *a2 && v10 == a2[1])
  {
    v9 = 1;
    return v9 & 1;
  }

  return sub_1C6D7A130();
}

uint64_t _s19NewsPersonalization0B6ScriptV4StepV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = a2[3];
  if (v2 < 0)
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  v7 = *a1;
  if (!v2)
  {
    if (!*(a2 + 16))
    {
      v13 = a1[1];
      if (v7 == *a2 && v13 == a2[1])
      {
        goto LABEL_10;
      }

      if (sub_1C6D7A130())
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v4 == 1)
    {
      v8 = PersonalizationScript.Tag.CommonFeed.rawValue.getter();
      v10 = v9;
      if (v8 == PersonalizationScript.Tag.CommonFeed.rawValue.getter() && v10 == v11)
      {

        goto LABEL_10;
      }

      v14 = sub_1C6D7A130();

      if (v14)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  if (v4 != 2 || (sub_1C6B627EC(v7, *a2) & 1) == 0)
  {
    return 0;
  }

LABEL_10:

  return sub_1C6B56CFC(v3, v5);
}

uint64_t _s19NewsPersonalization0B6ScriptV4TaskV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (v7)
    {
      v11 = *a1 == *a2 && v3 == v7;
      if (v11 || (sub_1C6D7A130() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    v12 = 0;
    return v12 & 1;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_1C6B62230(v4, v5, v6);
  sub_1C6B62230(v8, v9, v10);
  v12 = _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(&v17, &v14);
  sub_1C6B62288(v14, v15, v16);
  sub_1C6B62288(v17, v18, v19);
  return v12 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO07NumericD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = *(a1 + 24);
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  v4 = *(a1 + 56);
  v22 = *(a1 + 88);
  v23 = *(a1 + 80);
  v21 = *(a1 + 96);
  v19 = *(a1 + 72);
  v20 = *(a1 + 104);
  v31 = *(a1 + 112);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v28 = *(a2 + 64);
  v29 = *(a1 + 64);
  v17 = *(a2 + 88);
  v18 = *(a2 + 80);
  v16 = *(a2 + 96);
  v14 = *(a2 + 72);
  v15 = *(a2 + 104);
  v30 = *(a2 + 112);
  if ((sub_1C6B62918(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v4 < 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v39 = v2;
    v40 = v3;
    v41 = v27;
    v42 = v26;
    v43 = v25;
    v44 = v24;
    v45 = v4 & 0x7F;
    v32 = v6;
    v33 = v5;
    v34 = v8;
    v35 = v7;
    v36 = v10;
    v37 = v9;
    v38 = v11 & 0x7F;
    if ((_s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v39, &v32) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v11 < 0 || v2 != v6)
  {
    goto LABEL_12;
  }

  if (v31 < 0)
  {
    if (v30 < 0)
    {
      v39 = v29;
      v40 = v19;
      v41 = v23;
      v42 = v22;
      v43 = v21;
      v44 = v20;
      v45 = v31 & 0x7F;
      v32 = v28;
      v33 = v14;
      v34 = v18;
      v35 = v17;
      v36 = v16;
      v37 = v15;
      v38 = v30 & 0x7F;
      v12 = _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v39, &v32);
      return v12 & 1;
    }

    goto LABEL_12;
  }

  if (v30 < 0)
  {
LABEL_12:
    v12 = 0;
    return v12 & 1;
  }

  v12 = v29 == v28;
  return v12 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 17);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 17);
  v10 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *a2;
  v11 = *(a2 + 40);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v21 = v2;
  v22 = v3;
  LOBYTE(v23) = v12;
  v19 = v8;
  LOBYTE(v20) = v13;
  sub_1C6B35FD4(v2, v3, v12);
  sub_1C6B35FD4(v18, v8, v13);
  LOBYTE(v8) = sub_1C6CA3F90(&v21, &v18);
  sub_1C6B360B4(v18, v19, v20);
  sub_1C6B360B4(v21, v22, v23);
  v14 = 0;
  if ((v8 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    if (v6 >> 1 == 0xFFFFFFFF)
    {
      sub_1C6CA5798(v6, v5, v7);
      v15 = v17;
      sub_1C6CA5798(v10, v17, v11);
      if (v10 >> 1 == 0xFFFFFFFF)
      {
        sub_1C6CA555C(v6, v5, v7);
        v14 = 1;
        return v14 & 1;
      }
    }

    else
    {
      v21 = v6;
      v22 = v5;
      v23 = v7;
      v15 = v17;
      if (v10 >> 1 != 0xFFFFFFFF)
      {
        v18 = v10;
        v19 = v17;
        v20 = v11;
        sub_1C6CA5798(v6, v5, v7);
        sub_1C6CA5798(v10, v17, v11);
        sub_1C6CA5798(v6, v5, v7);
        v14 = _s19NewsPersonalization0B6ScriptV6MomentO2eeoiySbAE_AEtFZ_0(&v21, &v18);
        sub_1C6CA5570(v18, v19, v20);
        sub_1C6CA5570(v21, v22, v23);
        sub_1C6CA555C(v6, v5, v7);
        return v14 & 1;
      }

      sub_1C6CA5798(v6, v5, v7);
      sub_1C6CA5798(v10, v17, v11);
      sub_1C6CA5798(v6, v5, v7);
      sub_1C6CA5570(v6, v5, v7);
    }

    sub_1C6CA555C(v6, v5, v7);
    sub_1C6CA555C(v10, v15, v11);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV9AssertionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v7 = a1[3];
  v6 = a1[4];
  v8 = *(a1 + 5);
  v9 = *(a1 + 112);
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v15 = *(a2 + 5);
  v16 = *(a2 + 112);
  if ((v9 & 0x40) != 0)
  {
    if ((a2[14] & 0x40) != 0)
    {
      v39 = *a1;
      v40 = v2;
      v41 = v4;
      v42 = v5 & 1;
      v45 = v7;
      v46 = v6;
      *&v47 = v8;
      v28 = v11;
      v29 = v10;
      LOWORD(v30) = v13 & 0x1FF;
      v31 = v12;
      v32 = v14;
      *&v33 = v15;
      v26 = _s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(&v39, &v28);
      return v26 & 1;
    }

    goto LABEL_5;
  }

  if ((a2[14] & 0x40) != 0)
  {
LABEL_5:
    v26 = 0;
    return v26 & 1;
  }

  v17 = *(a1 + 18) | (*(a1 + 11) << 32);
  v18 = *(a1 + 7);
  v19 = *(a1 + 9);
  v20 = *(a1 + 11);
  v21 = a1[13];
  v22 = *(a2 + 7);
  v23 = *(a2 + 9);
  v24 = *(a2 + 11);
  v25 = a2[13];
  v39 = v3;
  v40 = v2;
  v41 = v4;
  v42 = v5;
  v43 = v17;
  v44 = WORD2(v17);
  v45 = v7;
  v46 = v6;
  v47 = v8;
  v48 = v18;
  v49 = v19;
  v50 = v20;
  v51 = v21;
  v52 = v9;
  v28 = v11;
  v29 = v10;
  v30 = v13;
  v31 = v12;
  v32 = v14;
  v33 = v15;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v16;
  v26 = _s19NewsPersonalization0B6ScriptV9AssertionO07NumericD0V2eeoiySbAG_AGtFZ_0(&v39, &v28);
  return v26 & 1;
}

uint64_t _s19NewsPersonalization0B6ScriptV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = sub_1C6B55D88(v3, v7);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v2 == v6 && v5 == v9;
  if (!v11 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  return sub_1C6B5623C(v4, v8);
}

unint64_t sub_1C6CA5070()
{
  result = qword_1EC1D8788;
  if (!qword_1EC1D8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8788);
  }

  return result;
}

unint64_t sub_1C6CA50C4()
{
  result = qword_1EC1D8790;
  if (!qword_1EC1D8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8790);
  }

  return result;
}

unint64_t sub_1C6CA5118()
{
  result = qword_1EC1D8798;
  if (!qword_1EC1D8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8798);
  }

  return result;
}

unint64_t sub_1C6CA516C()
{
  result = qword_1EC1D87A8;
  if (!qword_1EC1D87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87A8);
  }

  return result;
}

unint64_t sub_1C6CA51C0()
{
  result = qword_1EC1D87B0;
  if (!qword_1EC1D87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87B0);
  }

  return result;
}

unint64_t sub_1C6CA5214()
{
  result = qword_1EC1D87B8;
  if (!qword_1EC1D87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87B8);
  }

  return result;
}

unint64_t sub_1C6CA5268()
{
  result = qword_1EC1D87C0;
  if (!qword_1EC1D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87C0);
  }

  return result;
}

unint64_t sub_1C6CA52BC()
{
  result = qword_1EC1D87C8;
  if (!qword_1EC1D87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87C8);
  }

  return result;
}

unint64_t sub_1C6CA5310()
{
  result = qword_1EC1D87D0;
  if (!qword_1EC1D87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87D0);
  }

  return result;
}

unint64_t sub_1C6CA5364()
{
  result = qword_1EC1D87D8;
  if (!qword_1EC1D87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87D8);
  }

  return result;
}

unint64_t sub_1C6CA53B8()
{
  result = qword_1EC1D87E0;
  if (!qword_1EC1D87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87E0);
  }

  return result;
}

unint64_t sub_1C6CA540C()
{
  result = qword_1EC1D87E8;
  if (!qword_1EC1D87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87E8);
  }

  return result;
}

unint64_t sub_1C6CA5460()
{
  result = qword_1EC1D87F8;
  if (!qword_1EC1D87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D87F8);
  }

  return result;
}

unint64_t sub_1C6CA54B4()
{
  result = qword_1EC1D8800;
  if (!qword_1EC1D8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8800);
  }

  return result;
}

unint64_t sub_1C6CA5508()
{
  result = qword_1EC1D8808;
  if (!qword_1EC1D8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8808);
  }

  return result;
}

unint64_t sub_1C6CA555C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_1C6CA5570(result, a2, a3);
  }

  return result;
}

uint64_t sub_1C6CA5570(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t sub_1C6CA5580()
{
  result = qword_1EC1D8818;
  if (!qword_1EC1D8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8818);
  }

  return result;
}

unint64_t sub_1C6CA55D4()
{
  result = qword_1EC1D8820;
  if (!qword_1EC1D8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8820);
  }

  return result;
}

unint64_t sub_1C6CA5628()
{
  result = qword_1EC1D8828;
  if (!qword_1EC1D8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8828);
  }

  return result;
}

unint64_t sub_1C6CA567C()
{
  result = qword_1EC1D8830;
  if (!qword_1EC1D8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8830);
  }

  return result;
}

unint64_t sub_1C6CA56D0()
{
  result = qword_1EC1D8838;
  if (!qword_1EC1D8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8838);
  }

  return result;
}

void sub_1C6CA5724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (a7 < 0)
  {
    a8(a1, a2, a3);

    a9(a4, a5, a6);
  }
}

unint64_t sub_1C6CA5798(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    return sub_1C6CA57AC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1C6CA57AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
  }

  return result;
}

unint64_t sub_1C6CA57BC()
{
  result = qword_1EC1D8848;
  if (!qword_1EC1D8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8848);
  }

  return result;
}

unint64_t sub_1C6CA5810()
{
  result = qword_1EC1D8850;
  if (!qword_1EC1D8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8850);
  }

  return result;
}

unint64_t sub_1C6CA5864()
{
  result = qword_1EC1D8860;
  if (!qword_1EC1D8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8860);
  }

  return result;
}

unint64_t sub_1C6CA58B8()
{
  result = qword_1EC1D8868;
  if (!qword_1EC1D8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8868);
  }

  return result;
}

unint64_t sub_1C6CA590C()
{
  result = qword_1EC1D8878;
  if (!qword_1EC1D8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8878);
  }

  return result;
}

unint64_t sub_1C6CA5960()
{
  result = qword_1EC1D8888;
  if (!qword_1EC1D8888)
  {
    sub_1C6B6052C(255, &qword_1EC1D8880, &type metadata for PersonalizationScript.BrowseRequirement);
    sub_1C6CA59E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8888);
  }

  return result;
}

unint64_t sub_1C6CA59E8()
{
  result = qword_1EC1D8890;
  if (!qword_1EC1D8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8890);
  }

  return result;
}

unint64_t sub_1C6CA5A3C()
{
  result = qword_1EC1D88A0;
  if (!qword_1EC1D88A0)
  {
    sub_1C6B6052C(255, &qword_1EC1D8880, &type metadata for PersonalizationScript.BrowseRequirement);
    sub_1C6CA5AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88A0);
  }

  return result;
}

unint64_t sub_1C6CA5AC4()
{
  result = qword_1EC1D88A8;
  if (!qword_1EC1D88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88A8);
  }

  return result;
}

unint64_t sub_1C6CA5B18()
{
  result = qword_1EC1D88B8;
  if (!qword_1EC1D88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88B8);
  }

  return result;
}

unint64_t sub_1C6CA5B6C()
{
  result = qword_1EC1D88C8;
  if (!qword_1EC1D88C8)
  {
    sub_1C6B6052C(255, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
    sub_1C6CA5BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88C8);
  }

  return result;
}

unint64_t sub_1C6CA5BF4()
{
  result = qword_1EC1D88D0;
  if (!qword_1EC1D88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88D0);
  }

  return result;
}

unint64_t sub_1C6CA5C48()
{
  result = qword_1EC1D88D8;
  if (!qword_1EC1D88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88D8);
  }

  return result;
}

unint64_t sub_1C6CA5C9C()
{
  result = qword_1EC1D88E8;
  if (!qword_1EC1D88E8)
  {
    sub_1C6B6052C(255, &qword_1EC1D88C0, &type metadata for PersonalizationScript.HeadlineCondition);
    sub_1C6CA5D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88E8);
  }

  return result;
}

unint64_t sub_1C6CA5D24()
{
  result = qword_1EC1D88F0;
  if (!qword_1EC1D88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88F0);
  }

  return result;
}

unint64_t sub_1C6CA5D78()
{
  result = qword_1EC1D88F8;
  if (!qword_1EC1D88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D88F8);
  }

  return result;
}

unint64_t sub_1C6CA5DCC()
{
  result = qword_1EC1D8900;
  if (!qword_1EC1D8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8900);
  }

  return result;
}

unint64_t sub_1C6CA5E20()
{
  result = qword_1EC1D8908;
  if (!qword_1EC1D8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8908);
  }

  return result;
}

unint64_t sub_1C6CA5E74()
{
  result = qword_1EC1D8910;
  if (!qword_1EC1D8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8910);
  }

  return result;
}

unint64_t sub_1C6CA5EC8()
{
  result = qword_1EC1D8918;
  if (!qword_1EC1D8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8918);
  }

  return result;
}

unint64_t sub_1C6CA5F1C()
{
  result = qword_1EC1D8928;
  if (!qword_1EC1D8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8928);
  }

  return result;
}

unint64_t sub_1C6CA5F70()
{
  result = qword_1EC1D8940;
  if (!qword_1EC1D8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8940);
  }

  return result;
}

unint64_t sub_1C6CA5FC4()
{
  result = qword_1EC1D8950;
  if (!qword_1EC1D8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8950);
  }

  return result;
}

unint64_t sub_1C6CA6018()
{
  result = qword_1EC1D8958;
  if (!qword_1EC1D8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8958);
  }

  return result;
}

unint64_t sub_1C6CA606C()
{
  result = qword_1EC1D8960;
  if (!qword_1EC1D8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8960);
  }

  return result;
}

unint64_t sub_1C6CA60C0()
{
  result = qword_1EC1D8968;
  if (!qword_1EC1D8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8968);
  }

  return result;
}

unint64_t sub_1C6CA6114()
{
  result = qword_1EC1D8970;
  if (!qword_1EC1D8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8970);
  }

  return result;
}

unint64_t sub_1C6CA6168()
{
  result = qword_1EC1D8990;
  if (!qword_1EC1D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8990);
  }

  return result;
}

unint64_t sub_1C6CA61BC()
{
  result = qword_1EC1D89A8;
  if (!qword_1EC1D89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89A8);
  }

  return result;
}

unint64_t sub_1C6CA6210()
{
  result = qword_1EC1D89B0;
  if (!qword_1EC1D89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89B0);
  }

  return result;
}

unint64_t sub_1C6CA6264()
{
  result = qword_1EC1D89B8;
  if (!qword_1EC1D89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89B8);
  }

  return result;
}

unint64_t sub_1C6CA62B8()
{
  result = qword_1EC1D89C8;
  if (!qword_1EC1D89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89C8);
  }

  return result;
}

unint64_t sub_1C6CA630C()
{
  result = qword_1EC1D89D8;
  if (!qword_1EC1D89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89D8);
  }

  return result;
}

unint64_t sub_1C6CA6360()
{
  result = qword_1EC1D89E8;
  if (!qword_1EC1D89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89E8);
  }

  return result;
}

unint64_t sub_1C6CA63B4()
{
  result = qword_1EC1D89F0;
  if (!qword_1EC1D89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89F0);
  }

  return result;
}

unint64_t sub_1C6CA6408()
{
  result = qword_1EC1D89F8;
  if (!qword_1EC1D89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D89F8);
  }

  return result;
}

unint64_t sub_1C6CA645C()
{
  result = qword_1EC1D8A00;
  if (!qword_1EC1D8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A00);
  }

  return result;
}

unint64_t sub_1C6CA64B0()
{
  result = qword_1EC1D8A08;
  if (!qword_1EC1D8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A08);
  }

  return result;
}

unint64_t sub_1C6CA6504()
{
  result = qword_1EC1D8A10;
  if (!qword_1EC1D8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A10);
  }

  return result;
}

unint64_t sub_1C6CA6558()
{
  result = qword_1EC1D8A18;
  if (!qword_1EC1D8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A18);
  }

  return result;
}

unint64_t sub_1C6CA65AC()
{
  result = qword_1EC1D8A28;
  if (!qword_1EC1D8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A28);
  }

  return result;
}

unint64_t sub_1C6CA6600()
{
  result = qword_1EC1D8A30;
  if (!qword_1EC1D8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A30);
  }

  return result;
}

unint64_t sub_1C6CA6654()
{
  result = qword_1EC1D8A38;
  if (!qword_1EC1D8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A38);
  }

  return result;
}

unint64_t sub_1C6CA66A8()
{
  result = qword_1EC1D8A48;
  if (!qword_1EC1D8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A48);
  }

  return result;
}

unint64_t sub_1C6CA66FC()
{
  result = qword_1EC1D8A50;
  if (!qword_1EC1D8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A50);
  }

  return result;
}

unint64_t sub_1C6CA6750()
{
  result = qword_1EC1D8A58;
  if (!qword_1EC1D8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A58);
  }

  return result;
}

unint64_t sub_1C6CA67A4()
{
  result = qword_1EC1D8A60;
  if (!qword_1EC1D8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A60);
  }

  return result;
}

unint64_t sub_1C6CA67F8()
{
  result = qword_1EC1D8A70;
  if (!qword_1EC1D8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A70);
  }

  return result;
}

unint64_t sub_1C6CA684C()
{
  result = qword_1EC1D8A78;
  if (!qword_1EC1D8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A78);
  }

  return result;
}

unint64_t sub_1C6CA68A0()
{
  result = qword_1EC1D8A88;
  if (!qword_1EC1D8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A88);
  }

  return result;
}

unint64_t sub_1C6CA68F4()
{
  result = qword_1EC1D8A90;
  if (!qword_1EC1D8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A90);
  }

  return result;
}

unint64_t sub_1C6CA6948()
{
  result = qword_1EC1D8A98;
  if (!qword_1EC1D8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8A98);
  }

  return result;
}

unint64_t sub_1C6CA699C()
{
  result = qword_1EC1D8AA8;
  if (!qword_1EC1D8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AA8);
  }

  return result;
}

unint64_t sub_1C6CA69F0()
{
  result = qword_1EC1D8AC8;
  if (!qword_1EC1D8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AC8);
  }

  return result;
}

unint64_t sub_1C6CA6A44()
{
  result = qword_1EC1D8AE0;
  if (!qword_1EC1D8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AE0);
  }

  return result;
}

unint64_t sub_1C6CA6A98()
{
  result = qword_1EC1D8AE8;
  if (!qword_1EC1D8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AE8);
  }

  return result;
}

unint64_t sub_1C6CA6AEC()
{
  result = qword_1EC1D8AF0;
  if (!qword_1EC1D8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AF0);
  }

  return result;
}

unint64_t sub_1C6CA6B40()
{
  result = qword_1EC1D8AF8;
  if (!qword_1EC1D8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8AF8);
  }

  return result;
}

unint64_t sub_1C6CA6B94()
{
  result = qword_1EC1D8B08;
  if (!qword_1EC1D8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B08);
  }

  return result;
}

unint64_t sub_1C6CA6BE8()
{
  result = qword_1EC1D8B10;
  if (!qword_1EC1D8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B10);
  }

  return result;
}

unint64_t sub_1C6CA6C3C()
{
  result = qword_1EC1D8B20;
  if (!qword_1EC1D8B20)
  {
    sub_1C6B6052C(255, &qword_1EC1D8B18, &type metadata for PersonalizationScript.Task);
    sub_1C6CA6CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B20);
  }

  return result;
}

unint64_t sub_1C6CA6CC4()
{
  result = qword_1EC1D8B28;
  if (!qword_1EC1D8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B28);
  }

  return result;
}

unint64_t sub_1C6CA6D18()
{
  result = qword_1EC1D8B38;
  if (!qword_1EC1D8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B38);
  }

  return result;
}

unint64_t sub_1C6CA6D6C()
{
  result = qword_1EC1D8B40;
  if (!qword_1EC1D8B40)
  {
    sub_1C6B6052C(255, &qword_1EC1D8B18, &type metadata for PersonalizationScript.Task);
    sub_1C6CA6DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B40);
  }

  return result;
}

unint64_t sub_1C6CA6DF4()
{
  result = qword_1EC1D8B48;
  if (!qword_1EC1D8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B48);
  }

  return result;
}

unint64_t sub_1C6CA6E48()
{
  result = qword_1EC1D8B50;
  if (!qword_1EC1D8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B50);
  }

  return result;
}

unint64_t sub_1C6CA6E9C()
{
  result = qword_1EC1D8B58;
  if (!qword_1EC1D8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B58);
  }

  return result;
}

unint64_t sub_1C6CA6EF0()
{
  result = qword_1EC1D8B60;
  if (!qword_1EC1D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B60);
  }

  return result;
}

unint64_t sub_1C6CA6F44()
{
  result = qword_1EC1D8B78;
  if (!qword_1EC1D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B78);
  }

  return result;
}

unint64_t sub_1C6CA6F98()
{
  result = qword_1EC1D8B80;
  if (!qword_1EC1D8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B80);
  }

  return result;
}

void sub_1C6CA6FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1C6CA7054()
{
  result = qword_1EC1D8B90;
  if (!qword_1EC1D8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B90);
  }

  return result;
}

unint64_t sub_1C6CA70AC()
{
  result = qword_1EC1D8B98;
  if (!qword_1EC1D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8B98);
  }

  return result;
}

unint64_t sub_1C6CA7104()
{
  result = qword_1EC1D8BA0;
  if (!qword_1EC1D8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BA0);
  }

  return result;
}

unint64_t sub_1C6CA715C()
{
  result = qword_1EC1D8BA8;
  if (!qword_1EC1D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BA8);
  }

  return result;
}

unint64_t sub_1C6CA71B4()
{
  result = qword_1EC1D8BB0;
  if (!qword_1EC1D8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BB0);
  }

  return result;
}

unint64_t sub_1C6CA720C()
{
  result = qword_1EC1D8BB8;
  if (!qword_1EC1D8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BB8);
  }

  return result;
}

unint64_t sub_1C6CA7264()
{
  result = qword_1EC1D8BC0;
  if (!qword_1EC1D8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BC0);
  }

  return result;
}

unint64_t sub_1C6CA72BC()
{
  result = qword_1EC1D8BC8;
  if (!qword_1EC1D8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BC8);
  }

  return result;
}

unint64_t sub_1C6CA7314()
{
  result = qword_1EC1D8BD0;
  if (!qword_1EC1D8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BD0);
  }

  return result;
}

unint64_t sub_1C6CA736C()
{
  result = qword_1EC1D8BD8;
  if (!qword_1EC1D8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BD8);
  }

  return result;
}

unint64_t sub_1C6CA73C4()
{
  result = qword_1EC1D8BE0;
  if (!qword_1EC1D8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BE0);
  }

  return result;
}

unint64_t sub_1C6CA741C()
{
  result = qword_1EC1D8BE8;
  if (!qword_1EC1D8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BE8);
  }

  return result;
}

unint64_t sub_1C6CA7474()
{
  result = qword_1EC1D8BF0;
  if (!qword_1EC1D8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BF0);
  }

  return result;
}

unint64_t sub_1C6CA74CC()
{
  result = qword_1EC1D8BF8;
  if (!qword_1EC1D8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8BF8);
  }

  return result;
}

unint64_t sub_1C6CA7524()
{
  result = qword_1EC1D8C00;
  if (!qword_1EC1D8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C00);
  }

  return result;
}

unint64_t sub_1C6CA757C()
{
  result = qword_1EC1D8C08;
  if (!qword_1EC1D8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C08);
  }

  return result;
}

unint64_t sub_1C6CA75D4()
{
  result = qword_1EC1D8C10;
  if (!qword_1EC1D8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C10);
  }

  return result;
}

unint64_t sub_1C6CA762C()
{
  result = qword_1EC1D8C18;
  if (!qword_1EC1D8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C18);
  }

  return result;
}

unint64_t sub_1C6CA7684()
{
  result = qword_1EC1D8C20;
  if (!qword_1EC1D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C20);
  }

  return result;
}

unint64_t sub_1C6CA76DC()
{
  result = qword_1EC1D8C28;
  if (!qword_1EC1D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C28);
  }

  return result;
}

unint64_t sub_1C6CA7734()
{
  result = qword_1EC1D8C30;
  if (!qword_1EC1D8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C30);
  }

  return result;
}

unint64_t sub_1C6CA778C()
{
  result = qword_1EC1D8C38;
  if (!qword_1EC1D8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C38);
  }

  return result;
}

unint64_t sub_1C6CA77E4()
{
  result = qword_1EC1D8C40;
  if (!qword_1EC1D8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C40);
  }

  return result;
}

unint64_t sub_1C6CA783C()
{
  result = qword_1EC1D8C48;
  if (!qword_1EC1D8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C48);
  }

  return result;
}

unint64_t sub_1C6CA7894()
{
  result = qword_1EC1D8C50;
  if (!qword_1EC1D8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C50);
  }

  return result;
}

unint64_t sub_1C6CA78EC()
{
  result = qword_1EC1D8C58;
  if (!qword_1EC1D8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C58);
  }

  return result;
}

unint64_t sub_1C6CA7944()
{
  result = qword_1EC1D8C60;
  if (!qword_1EC1D8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C60);
  }

  return result;
}

unint64_t sub_1C6CA799C()
{
  result = qword_1EC1D8C68;
  if (!qword_1EC1D8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C68);
  }

  return result;
}

unint64_t sub_1C6CA79F4()
{
  result = qword_1EC1D8C70;
  if (!qword_1EC1D8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C70);
  }

  return result;
}

unint64_t sub_1C6CA7A4C()
{
  result = qword_1EC1D8C78;
  if (!qword_1EC1D8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C78);
  }

  return result;
}

unint64_t sub_1C6CA7AA4()
{
  result = qword_1EC1D8C80;
  if (!qword_1EC1D8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C80);
  }

  return result;
}

unint64_t sub_1C6CA7AFC()
{
  result = qword_1EC1D8C88;
  if (!qword_1EC1D8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C88);
  }

  return result;
}

unint64_t sub_1C6CA7B54()
{
  result = qword_1EC1D8C90;
  if (!qword_1EC1D8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C90);
  }

  return result;
}

unint64_t sub_1C6CA7BAC()
{
  result = qword_1EC1D8C98;
  if (!qword_1EC1D8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8C98);
  }

  return result;
}

unint64_t sub_1C6CA7C04()
{
  result = qword_1EC1D8CA0;
  if (!qword_1EC1D8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CA0);
  }

  return result;
}

unint64_t sub_1C6CA7C5C()
{
  result = qword_1EC1D8CA8;
  if (!qword_1EC1D8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CA8);
  }

  return result;
}

unint64_t sub_1C6CA7CB4()
{
  result = qword_1EC1D8CB0;
  if (!qword_1EC1D8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CB0);
  }

  return result;
}

unint64_t sub_1C6CA7D0C()
{
  result = qword_1EC1D8CB8;
  if (!qword_1EC1D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CB8);
  }

  return result;
}

uint64_t sub_1C6CA7D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CA7DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization0B6ScriptV6MomentOSg(void *a1)
{
  if ((*a1 >> 1) > 0x80000000)
  {
    return -(*a1 >> 1);
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C6CA7E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 56) >> 3) & 0xFFFFFFE0 | (*(a1 + 56) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C6CA7EF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 112) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 113) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA7F84(uint64_t result, char a2)
{
  v2 = *(result + 80) & 0x83;
  v3 = *(result + 112) & 0x83;
  *(result + 56) &= 0x83uLL;
  *(result + 80) = v2;
  *(result + 112) = v3 | ((a2 & 1) << 6);
  return result;
}

uint64_t sub_1C6CA7FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 3) & 0xFFFFFFE0 | (*(a1 + 24) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA802C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C6CA80C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CA812C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 2 * ~a2;
    }
  }

  return result;
}

uint64_t sub_1C6CA81B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C6CA81FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA829C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 17))
  {
    return (*a1 + 63);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x3E | (*(a1 + 16) >> 7)) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6CA82F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6CA83AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 17))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6CA8400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1C6CA84A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA84F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA8584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CA85CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C6CA8658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 3) & 0xFFFFFFE0 | (*(a1 + 16) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C6CA86AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA8724(uint64_t result, char a2)
{
  v2 = *(result + 48) & 3 | (a2 << 7);
  *(result + 16) &= 0x83uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1C6CA8768(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_1C6CA87CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 2 * ~a2;
    }
  }

  return result;
}

uint64_t sub_1C6CA8868(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C6CA88C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationScript.ScreenValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PersonalizationScript.ScreenValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C6CA89AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CA89F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6CA8A6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6CA8AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationScript.Tag.CommonFeed(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationScript.Tag.CommonFeed(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C6CA8C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C6CA8CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C6CA8E6C()
{
  result = qword_1EC1D8CC0;
  if (!qword_1EC1D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CC0);
  }

  return result;
}

unint64_t sub_1C6CA8EC4()
{
  result = qword_1EC1D8CC8;
  if (!qword_1EC1D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CC8);
  }

  return result;
}

unint64_t sub_1C6CA8F1C()
{
  result = qword_1EC1D8CD0;
  if (!qword_1EC1D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CD0);
  }

  return result;
}

unint64_t sub_1C6CA8F74()
{
  result = qword_1EC1D8CD8;
  if (!qword_1EC1D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CD8);
  }

  return result;
}

unint64_t sub_1C6CA8FCC()
{
  result = qword_1EC1D8CE0;
  if (!qword_1EC1D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CE0);
  }

  return result;
}

unint64_t sub_1C6CA9024()
{
  result = qword_1EC1D8CE8;
  if (!qword_1EC1D8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CE8);
  }

  return result;
}

unint64_t sub_1C6CA907C()
{
  result = qword_1EC1D8CF0;
  if (!qword_1EC1D8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CF0);
  }

  return result;
}

unint64_t sub_1C6CA90D4()
{
  result = qword_1EC1D8CF8;
  if (!qword_1EC1D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8CF8);
  }

  return result;
}

unint64_t sub_1C6CA912C()
{
  result = qword_1EC1D8D00;
  if (!qword_1EC1D8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D00);
  }

  return result;
}

unint64_t sub_1C6CA9184()
{
  result = qword_1EC1D8D08;
  if (!qword_1EC1D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D08);
  }

  return result;
}

unint64_t sub_1C6CA91DC()
{
  result = qword_1EC1D8D10;
  if (!qword_1EC1D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D10);
  }

  return result;
}

unint64_t sub_1C6CA9234()
{
  result = qword_1EC1D8D18;
  if (!qword_1EC1D8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D18);
  }

  return result;
}

unint64_t sub_1C6CA928C()
{
  result = qword_1EC1D8D20;
  if (!qword_1EC1D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D20);
  }

  return result;
}

unint64_t sub_1C6CA92E4()
{
  result = qword_1EC1D8D28;
  if (!qword_1EC1D8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D28);
  }

  return result;
}

unint64_t sub_1C6CA933C()
{
  result = qword_1EC1D8D30;
  if (!qword_1EC1D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D30);
  }

  return result;
}

unint64_t sub_1C6CA9394()
{
  result = qword_1EC1D8D38;
  if (!qword_1EC1D8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D38);
  }

  return result;
}

unint64_t sub_1C6CA93EC()
{
  result = qword_1EC1D8D40;
  if (!qword_1EC1D8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D40);
  }

  return result;
}

unint64_t sub_1C6CA9444()
{
  result = qword_1EC1D8D48;
  if (!qword_1EC1D8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D48);
  }

  return result;
}

unint64_t sub_1C6CA949C()
{
  result = qword_1EC1D8D50;
  if (!qword_1EC1D8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D50);
  }

  return result;
}

unint64_t sub_1C6CA94F4()
{
  result = qword_1EC1D8D58;
  if (!qword_1EC1D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D58);
  }

  return result;
}

unint64_t sub_1C6CA954C()
{
  result = qword_1EC1D8D60;
  if (!qword_1EC1D8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D60);
  }

  return result;
}

unint64_t sub_1C6CA95A4()
{
  result = qword_1EC1D8D68;
  if (!qword_1EC1D8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D68);
  }

  return result;
}

unint64_t sub_1C6CA95FC()
{
  result = qword_1EC1D8D70;
  if (!qword_1EC1D8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D70);
  }

  return result;
}

unint64_t sub_1C6CA9654()
{
  result = qword_1EC1D8D78;
  if (!qword_1EC1D8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D78);
  }

  return result;
}

unint64_t sub_1C6CA96AC()
{
  result = qword_1EC1D8D80;
  if (!qword_1EC1D8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D80);
  }

  return result;
}

unint64_t sub_1C6CA9704()
{
  result = qword_1EC1D8D88;
  if (!qword_1EC1D8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D88);
  }

  return result;
}

unint64_t sub_1C6CA975C()
{
  result = qword_1EC1D8D90;
  if (!qword_1EC1D8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D90);
  }

  return result;
}

unint64_t sub_1C6CA97B4()
{
  result = qword_1EC1D8D98;
  if (!qword_1EC1D8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8D98);
  }

  return result;
}

unint64_t sub_1C6CA980C()
{
  result = qword_1EC1D8DA0;
  if (!qword_1EC1D8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DA0);
  }

  return result;
}

unint64_t sub_1C6CA9864()
{
  result = qword_1EC1D8DA8;
  if (!qword_1EC1D8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DA8);
  }

  return result;
}

unint64_t sub_1C6CA98BC()
{
  result = qword_1EC1D8DB0;
  if (!qword_1EC1D8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DB0);
  }

  return result;
}

unint64_t sub_1C6CA9914()
{
  result = qword_1EC1D8DB8;
  if (!qword_1EC1D8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DB8);
  }

  return result;
}

unint64_t sub_1C6CA996C()
{
  result = qword_1EC1D8DC0;
  if (!qword_1EC1D8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DC0);
  }

  return result;
}

unint64_t sub_1C6CA99C4()
{
  result = qword_1EC1D8DC8;
  if (!qword_1EC1D8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DC8);
  }

  return result;
}

unint64_t sub_1C6CA9A1C()
{
  result = qword_1EC1D8DD0;
  if (!qword_1EC1D8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DD0);
  }

  return result;
}

unint64_t sub_1C6CA9A74()
{
  result = qword_1EC1D8DD8;
  if (!qword_1EC1D8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DD8);
  }

  return result;
}

unint64_t sub_1C6CA9ACC()
{
  result = qword_1EC1D8DE0;
  if (!qword_1EC1D8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DE0);
  }

  return result;
}

unint64_t sub_1C6CA9B24()
{
  result = qword_1EC1D8DE8;
  if (!qword_1EC1D8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DE8);
  }

  return result;
}

unint64_t sub_1C6CA9B7C()
{
  result = qword_1EC1D8DF0;
  if (!qword_1EC1D8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DF0);
  }

  return result;
}

unint64_t sub_1C6CA9BD4()
{
  result = qword_1EC1D8DF8;
  if (!qword_1EC1D8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8DF8);
  }

  return result;
}

unint64_t sub_1C6CA9C2C()
{
  result = qword_1EC1D8E00;
  if (!qword_1EC1D8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E00);
  }

  return result;
}

unint64_t sub_1C6CA9C84()
{
  result = qword_1EC1D8E08;
  if (!qword_1EC1D8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E08);
  }

  return result;
}

unint64_t sub_1C6CA9CDC()
{
  result = qword_1EC1D8E10;
  if (!qword_1EC1D8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E10);
  }

  return result;
}

unint64_t sub_1C6CA9D34()
{
  result = qword_1EC1D8E18;
  if (!qword_1EC1D8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E18);
  }

  return result;
}

unint64_t sub_1C6CA9D8C()
{
  result = qword_1EC1D8E20;
  if (!qword_1EC1D8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E20);
  }

  return result;
}

unint64_t sub_1C6CA9DE4()
{
  result = qword_1EC1D8E28;
  if (!qword_1EC1D8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E28);
  }

  return result;
}

unint64_t sub_1C6CA9E3C()
{
  result = qword_1EC1D8E30;
  if (!qword_1EC1D8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E30);
  }

  return result;
}

unint64_t sub_1C6CA9E94()
{
  result = qword_1EC1D8E38;
  if (!qword_1EC1D8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E38);
  }

  return result;
}

unint64_t sub_1C6CA9EEC()
{
  result = qword_1EC1D8E40;
  if (!qword_1EC1D8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E40);
  }

  return result;
}

unint64_t sub_1C6CA9F44()
{
  result = qword_1EC1D8E48;
  if (!qword_1EC1D8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E48);
  }

  return result;
}

unint64_t sub_1C6CA9F9C()
{
  result = qword_1EC1D8E50;
  if (!qword_1EC1D8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E50);
  }

  return result;
}

unint64_t sub_1C6CA9FF4()
{
  result = qword_1EC1D8E58;
  if (!qword_1EC1D8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E58);
  }

  return result;
}

unint64_t sub_1C6CAA04C()
{
  result = qword_1EC1D8E60;
  if (!qword_1EC1D8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E60);
  }

  return result;
}

unint64_t sub_1C6CAA0A4()
{
  result = qword_1EC1D8E68;
  if (!qword_1EC1D8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E68);
  }

  return result;
}

unint64_t sub_1C6CAA0FC()
{
  result = qword_1EC1D8E70;
  if (!qword_1EC1D8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E70);
  }

  return result;
}

unint64_t sub_1C6CAA154()
{
  result = qword_1EC1D8E78;
  if (!qword_1EC1D8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E78);
  }

  return result;
}

unint64_t sub_1C6CAA1AC()
{
  result = qword_1EC1D8E80;
  if (!qword_1EC1D8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E80);
  }

  return result;
}

unint64_t sub_1C6CAA200(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C6CAA24C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C6CAA298(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C6CAA2E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C6CAA330(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C6D79F50();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C6CAA37C()
{
  result = qword_1EC1D8E88;
  if (!qword_1EC1D8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E88);
  }

  return result;
}

unint64_t sub_1C6CAA3D0()
{
  result = qword_1EC1D8E90;
  if (!qword_1EC1D8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E90);
  }

  return result;
}

unint64_t sub_1C6CAA424()
{
  result = qword_1EC1D8E98;
  if (!qword_1EC1D8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8E98);
  }

  return result;
}

unint64_t sub_1C6CAA478()
{
  result = qword_1EC1D8EA0;
  if (!qword_1EC1D8EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8EA0);
  }

  return result;
}

void sub_1C6CAA5C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77770();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CAAA18(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D77290();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  (*(v21 + 16))(v33 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v5)
    {
      sub_1C6CAAAAC(&qword_1EC1D8EA8, MEMORY[0x1E69B4740], MEMORY[0x1E69B4750]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4740];
      a5[4] = sub_1C6CAAAAC(&qword_1EC1D8EB0, MEMORY[0x1E69B4740], &protocol conformance descriptor for ArticleSaveEvent.Model);
      a5[5] = sub_1C6CAAAAC(&qword_1EC1D8EB8, v28, &protocol conformance descriptor for ArticleSaveEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3640];
      v31 = sub_1C6D76F90();
      v32 = *(v31 - 8);
      (*(v32 + 104))(a5, v30, v31);
      (*(v32 + 56))(a5, 0, 1, v31);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a5, 1, 1, v27);
  }
}

void sub_1C6CAAA18(uint64_t a1)
{
  if (!qword_1EDCE60A8)
  {
    sub_1C6D77780();
    sub_1C6CAAAAC(&qword_1EDCE5F70, MEMORY[0x1E69B4758], MEMORY[0x1E69B4728]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60A8);
    }
  }
}

uint64_t sub_1C6CAAAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CAAB04(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  sub_1C6B3C9DC();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CABAC0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v50 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6CABB2C(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v61 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v48 - v19;
  v51 = a1;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v57 = v8;
  v22 = *v1;
  v23 = v1[2];
  v24 = v21;
  v25 = sub_1C6D797F0();
  *(v25 + 16) = v24;
  v62 = v25;
  v60 = v24;
  v52 = v25 + 32;
  bzero((v25 + 32), 4 * v24);
  v26 = v5;
  v27 = 0;
  v28 = *(v22 + 16);
  v48 = v26 + 16;
  v49 = v26;
  v58 = (v11 + 48);
  v59 = (v11 + 56);
  v53 = v22;
  v54 = (v26 + 32);
  v55 = v28;
  v56 = (v26 + 8);
  while (1)
  {
    v29 = v61;
    if (v27 == v60)
    {
      v30 = 1;
      v27 = v60;
    }

    else
    {
      if (v27 >= v60)
      {
        goto LABEL_18;
      }

      if (__OFADD__(v27, 1))
      {
        goto LABEL_19;
      }

      v31 = v49;
      v32 = v50;
      v33 = v51 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27;
      v34 = *(v10 + 48);
      *v50 = v27;
      (*(v31 + 16))(v32 + v34, v33, v4);
      sub_1C6CABB84(v32, v29, sub_1C6CABAC0);
      v30 = 0;
      ++v27;
    }

    (*v59)(v29, v30, 1, v10);
    sub_1C6CABB84(v29, v20, sub_1C6CABB2C);
    if ((*v58)(v20, 1, v10) == 1)
    {
      return v62;
    }

    v35 = *v20;
    v36 = v57;
    (*v54)(v57, &v20[*(v10 + 48)], v4);
    sub_1C6CABBEC();
    v37 = sub_1C6D78E10();
    if (v37 != v55)
    {
      break;
    }

    LODWORD(v64) = 0;
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v48 - 4) = v53;
    *(&v48 - 6) = v23;
    *(&v48 - 2) = &v64;
    *(&v48 - 1) = v39;
    sub_1C6D78DC0();
    v40 = expf(-(v23 + *&v64));
    (*v56)(v36, v4);
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }

    if (v35 >= *(v62 + 16))
    {
      goto LABEL_17;
    }

    *(v52 + 4 * v35) = 1.0 / (v40 + 1.0);
  }

  v41 = v55;

  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000010, 0x80000001C6DA4390);
  v63 = v41;
  v42 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v42);

  MEMORY[0x1CCA55B00](0xD000000000000022, 0x80000001C6DA43B0);
  v63 = sub_1C6D78E10();
  v43 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v43);

  MEMORY[0x1CCA55B00](0x69736E656D696420, 0xEB00000000736E6FLL);
  v44 = v64;
  v45 = v65;
  sub_1C6CABC44();
  swift_allocError();
  *v46 = v44;
  v46[1] = v45;
  swift_willThrow();
  (*v56)(v36, v4);
  return v62;
}

void sub_1C6CAB0E0(const float *a1, int a2, int a3, int a4, uint64_t a5, float *__C, int64_t __N)
{
  if (a1)
  {
    if (__N < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (__N <= 0x7FFFFFFF)
    {
      if ((__N & 0x8000000000000000) == 0)
      {
        vDSP_dotpr(a1, 1, (a5 + 32), 1, __C, __N);
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EDCE9D38 != -1)
  {
LABEL_11:
    swift_once();
  }

  v7 = qword_1EDCE9D40;
  v8 = sub_1C6D79AA0();
  sub_1C6D78D30("Failed to find a base address while scoring embeddings", 54, 2, &dword_1C6B09000, v7, v8, MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1C6CAB1B4()
{
  if (*v0)
  {
    return 1935763810;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_1C6CAB1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C6CAB2D0(uint64_t a1)
{
  v2 = sub_1C6CAB52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CAB30C(uint64_t a1)
{
  v2 = sub_1C6CAB52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmbeddingParameters.encode(to:)(void *a1)
{
  sub_1C6CAB808(0, &qword_1EDCDF5F8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CAB52C();

  sub_1C6D7A300();
  v13 = v10;
  v12[7] = 0;
  sub_1C6CAB580();
  sub_1C6CAB86C(&qword_1EDCDF9E0, MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
  sub_1C6D7A090();

  if (!v2)
  {
    v12[6] = 1;
    sub_1C6D7A070();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C6CAB52C()
{
  result = qword_1EDCE2338;
  if (!qword_1EDCE2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2338);
  }

  return result;
}

void sub_1C6CAB580()
{
  if (!qword_1EDCE6620)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6620);
    }
  }
}

uint64_t EmbeddingParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CAB808(0, &qword_1EC1D8EC0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CAB52C();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1C6CAB580();
  v15[7] = 0;
  sub_1C6CAB86C(&qword_1EC1D8EC8, MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
  sub_1C6D79FF0();
  v11 = v16;
  v15[6] = 1;
  sub_1C6D79FD0();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  *a2 = v11;
  *(a2 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1C6CAB808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6CAB52C();
    v7 = a3(a1, &type metadata for EmbeddingParameters.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C6CAB86C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C6CAB580();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1C6CAB910(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1C6CAB958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C6CAB9BC()
{
  result = qword_1EC1D8ED0;
  if (!qword_1EC1D8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8ED0);
  }

  return result;
}

unint64_t sub_1C6CABA14()
{
  result = qword_1EDCE2328;
  if (!qword_1EDCE2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2328);
  }

  return result;
}

unint64_t sub_1C6CABA6C()
{
  result = qword_1EDCE2330;
  if (!qword_1EDCE2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2330);
  }

  return result;
}

void sub_1C6CABAC0(uint64_t a1)
{
  if (!qword_1EC1D8ED8)
  {
    sub_1C6B3C9DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D8ED8);
    }
  }
}

void sub_1C6CABB2C(uint64_t a1)
{
  if (!qword_1EC1D8EE0)
  {
    sub_1C6CABAC0(255);
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D8EE0);
    }
  }
}

uint64_t sub_1C6CABB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6CABBEC()
{
  result = qword_1EC1D8EE8;
  if (!qword_1EC1D8EE8)
  {
    sub_1C6B3C9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8EE8);
  }

  return result;
}

unint64_t sub_1C6CABC44()
{
  result = qword_1EC1D8EF0;
  if (!qword_1EC1D8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8EF0);
  }

  return result;
}

uint64_t sub_1C6CABCCC()
{
  sub_1C6CAC044(v0 + OBJC_IVAR____TtCCC19NewsPersonalization22CollabEmbeddingManager15CollabEmbedding14TokenEmbedding_embedding, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);

  sub_1C6CAC044(v0 + OBJC_IVAR____TtCCC19NewsPersonalization22CollabEmbeddingManager15CollabEmbedding14TokenEmbedding____lazy_storage___shapedArray, sub_1C6CABFEC);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CABD90()
{

  return swift_deallocClassInstance();
}

void *CollabEmbeddingManager.deinit()
{

  return v0;
}

uint64_t CollabEmbeddingManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CollabEmbeddingManager.CollabEmbedding.TokenEmbedding(uint64_t a1)
{
  result = qword_1EC1D8F08;
  if (!qword_1EC1D8F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6CABF0C(uint64_t a1)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(319);
  if (v1 <= 0x3F)
  {
    sub_1C6CABFEC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C6CABFEC(uint64_t a1)
{
  if (!qword_1EC1D8F18)
  {
    sub_1C6B3C9DC();
    v1 = sub_1C6D79C00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D8F18);
    }
  }
}

uint64_t sub_1C6CAC044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserEmbeddingManager.__allocating_init(directory:writeHumanReadableParametersToDisk:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(a1, a2);
  return v4;
}

void UserEmbeddingManager.userEmbedding.getter(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock;
  os_unfair_lock_lock_with_options();
  v4 = v1 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding;
  v5 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding);
  if (v5)
  {
    v6 = *(v4 + 8);
    *a1 = v5;
    *(a1 + 8) = v6;
    v7 = *(v1 + v3);

    v8 = v7;
  }

  else
  {
    if (qword_1EDCE9D38 != -1)
    {
      swift_once();
    }

    v9 = qword_1EDCE9D40;
    v10 = sub_1C6D79AC0();
    sub_1C6D78D30("User embedding requested, but not loaded, loading parameters", 60, 2, &dword_1C6B09000, v9, v10, MEMORY[0x1E69E7CC0]);
    sub_1C6CAEDD8(&v13);
    v11 = v13;
    v12 = v14;
    *v4 = v13;
    *(v4 + 8) = v12;

    *a1 = v11;
    *(a1 + 8) = v12;
    v8 = *(v1 + v3);
  }

  os_unfair_lock_unlock(v8);
}

Swift::Void __swiftcall UserEmbeddingManager.clearCachedUserEmbedding()()
{
  v1 = v0;
  v25 = *MEMORY[0x1E69E9840];
  v2 = sub_1C6D75DE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock;
  os_unfair_lock_lock_with_options();
  if (qword_1EDCE9D38 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCE9D40;
  v9 = sub_1C6D79AC0();
  sub_1C6D78D30("Clearing cached user embedding", 30, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
  v10 = [objc_opt_self() defaultManager];
  sub_1C6D75D60();
  v11 = sub_1C6D75D30();
  (*(v3 + 8))(v6, v2);
  v23 = 0;
  v12 = [v10 removeItemAtURL:v11 error:&v23];

  if (v12)
  {
    v13 = v23;
  }

  else
  {
    v14 = v23;
    v15 = sub_1C6D75CC0();

    swift_willThrow();
    v16 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C6D7E630;
    v23 = 0;
    v24 = 0xE000000000000000;
    v22[1] = v15;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v18 = v23;
    v19 = v24;
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = sub_1C6B2064C();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_1C6D78D30("Failed to clear user embedding with error: %{public}@", 53, 2, &dword_1C6B09000, v8, v16, v17);
  }

  v20 = v1 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding;
  *v20 = 0;
  *(v20 + 8) = 0;

  v21 = sub_1C6D79AC0();
  sub_1C6D78D30("Cleared cached user embedding", 29, 2, &dword_1C6B09000, v8, v21, MEMORY[0x1E69E7CC0]);
  os_unfair_lock_unlock(*(v1 + v7));
}

void __swiftcall UserEmbeddingManager.LogisticRegressionClassifierConfiguration.init(l2Penalty:l1Penalty:maximumIterations:stepSize:convergenceThreshold:)(NewsPersonalization::UserEmbeddingManager::LogisticRegressionClassifierConfiguration *__return_ptr retstr, Swift::Double_optional l2Penalty, Swift::Double_optional l1Penalty, Swift::Int_optional maximumIterations, Swift::Double_optional stepSize, Swift::Double_optional convergenceThreshold)
{
  retstr->l2Penalty.value = *&l2Penalty.is_nil;
  retstr->l2Penalty.is_nil = l1Penalty.is_nil;
  *(&retstr->l1Penalty.value + 7) = maximumIterations.value;
  BYTE6(retstr->maximumIterations.value) = maximumIterations.is_nil;
  *(&retstr->stepSize.value + 5) = *&stepSize.is_nil;
  BYTE4(retstr->convergenceThreshold.value) = convergenceThreshold.is_nil;
  *(&retstr[1].l2Penalty.value + 3) = v6;
  BYTE2(retstr[1].l1Penalty.value) = v7 & 1;
  *(&retstr[1].maximumIterations.value + 1) = v8;
  LOBYTE(retstr[1].stepSize.value) = v9 & 1;
}

unint64_t sub_1C6CAC728()
{
  v1 = 0x746C616E6550316CLL;
  v2 = *v0;
  v3 = 0xD000000000000011;
  v4 = 0x657A695370657473;
  if (v2 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0x746C616E6550326CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C6CAC7BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C6CAFA2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6CAC7F0(uint64_t a1)
{
  v2 = sub_1C6CAF104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CAC82C(uint64_t a1)
{
  v2 = sub_1C6CAF104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserEmbeddingManager.LogisticRegressionClassifierConfiguration.encode(to:)(void *a1)
{
  sub_1C6CAF158(0, &qword_1EC1D8F20, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v16 = *(v1 + 32);
  v15 = *(v1 + 40);
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  v12 = *(v1 + 64);
  v11[3] = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CAF104();
  sub_1C6D7A300();
  v24 = 0;
  v9 = v19;
  sub_1C6D7A010();
  if (!v9)
  {
    v23 = 1;
    sub_1C6D7A010();
    v22 = 2;
    sub_1C6D7A020();
    v21 = 3;
    sub_1C6D7A010();
    v20 = 4;
    sub_1C6D7A010();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t UserEmbeddingManager.LogisticRegressionClassifierConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CAF158(0, &qword_1EC1D8F30, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CAF104();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v40 = 0;
    v11 = sub_1C6D79F70();
    v35 = v12 & 1;
    v39 = 1;
    v13 = sub_1C6D79F70();
    v34 = v14 & 1;
    v38 = 2;
    v30 = sub_1C6D79F80();
    v33 = v15 & 1;
    v37 = 3;
    v29 = sub_1C6D79F70();
    v32 = v16 & 1;
    v36 = 4;
    v17 = sub_1C6D79F70();
    v20 = v19;
    v21 = *(v7 + 8);
    v28 = v17;
    v21(v10, v6);
    v31 = v20 & 1;
    v22 = v35;
    v23 = v34;
    v24 = v33;
    v25 = v32;
    *a2 = v11;
    *(a2 + 8) = v22;
    *(a2 + 16) = v13;
    *(a2 + 24) = v23;
    v26 = v29;
    *(a2 + 32) = v30;
    *(a2 + 40) = v24;
    *(a2 + 48) = v26;
    *(a2 + 56) = v25;
    *(a2 + 64) = v28;
    *(a2 + 72) = v20 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C6CACD6C@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B0F9A0(0, &unk_1EDCEA300, MEMORY[0x1E6966320]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1C6B0F56C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v18[-v11];
  v13 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier;
  swift_beginAccess();
  sub_1C6CAFBE8(v1 + v13, v12);
  sub_1C6B0F9A0(0, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
  v15 = v14;
  v16 = *(v14 - 8);
  if ((*(v16 + 48))(v12, 1, v14) != 1)
  {
    return (*(v16 + 32))(a1, v12, v15);
  }

  sub_1C6CAF718(v12);
  sub_1C6C0742C(&unk_1F4671740);
  sub_1C6B0F5E0();
  sub_1C6D78920();
  sub_1C6D78950();
  (*(v16 + 16))(v8, a1, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  swift_beginAccess();
  sub_1C6CAF444(v8, v1 + v13);
  return swift_endAccess();
}

uint64_t UserEmbeddingManager.__allocating_init(directory:)(uint64_t a1)
{
  v2 = sub_1C6D75DE0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = swift_allocObject();
  UserEmbeddingManager.init(directory:writeHumanReadableParametersToDisk:)(v7, 0);
  (*(v3 + 8))(a1, v2);
  return v8;
}

uint64_t UserEmbeddingManager.generateEmbedding(history:configuration:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[3];
  *(v3 + 48) = a3[2];
  *(v3 + 64) = v6;
  *(v3 + 73) = *(a3 + 57);
  v7 = a3[1];
  *(v3 + 16) = *a3;
  *(v3 + 32) = v7;
  v8 = swift_task_alloc();
  *(v3 + 96) = v8;
  *v8 = v3;
  v8[1] = sub_1C6CAD228;

  return UserEmbeddingManager.generateEmbedding(history:configuration:writeHumanReadableHistoryToDisk:)(a1, a2, (v3 + 16), 0);
}

uint64_t sub_1C6CAD228()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6CAD35C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t UserEmbeddingManager.generateEmbedding(history:configuration:writeHumanReadableHistoryToDisk:)(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(v5 + 104) = a2;
  *(v5 + 112) = v4;
  *(v5 + 68) = a4;
  *(v5 + 96) = a1;
  sub_1C6B0FA4C(0, &unk_1EDCEA3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v5 + 120) = swift_task_alloc();
  v7 = sub_1C6D75DE0();
  *(v5 + 128) = v7;
  *(v5 + 136) = *(v7 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  sub_1C6B0F9A0(0, &qword_1EDCEA2E0, MEMORY[0x1E6966340]);
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();
  sub_1C6B0F56C(0);
  *(v5 + 192) = swift_task_alloc();
  sub_1C6B0F9A0(0, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
  *(v5 + 200) = v9;
  *(v5 + 208) = *(v9 - 8);
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  sub_1C6B0F9A0(0, &unk_1EDCEA300, MEMORY[0x1E6966320]);
  *(v5 + 240) = v10;
  *(v5 + 248) = *(v10 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v11 = sub_1C6D78EB0();
  *(v5 + 272) = v11;
  *(v5 + 280) = *(v11 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  v12 = *a3;
  *(v5 + 69) = *(a3 + 8);
  v13 = a3[2];
  *(v5 + 312) = v12;
  *(v5 + 320) = v13;
  *(v5 + 70) = *(a3 + 24);
  *(v5 + 328) = a3[4];
  *(v5 + 71) = *(a3 + 40);
  v14 = a3[6];
  *(v5 + 440) = *(a3 + 56);
  v15 = a3[8];
  *(v5 + 336) = v14;
  *(v5 + 344) = v15;
  *(v5 + 441) = *(a3 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C6CAD728, 0, 0);
}

uint64_t sub_1C6CAD728()
{
  v1 = v0;
  if (qword_1EDCE9D38 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v0[44] = qword_1EDCE9D40;
  sub_1C6B1D314(0);
  v0[45] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = MEMORY[0x1E69E6530];
  v6 = *(v2 + 16);
  v7 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v7;
  *(v4 + 32) = v6;
  sub_1C6D79AC0();
  sub_1C6D78D30("Generating user embedding from %lu embeddings", v40);

  sub_1C6D78EA0();
  v8 = sub_1C6CB05F8(v2);
  v1[46] = v8;
  v9 = v8;
  sub_1C6CAF43C(sub_1C6CB0B78, 0);
  sub_1C6D78EA0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6D7EB10;
  v11 = v9[2];
  *(v10 + 56) = v5;
  *(v10 + 64) = v7;
  *(v10 + 32) = v11;
  v12 = sub_1C6D78E90();
  v13 = sub_1C6D78E90();
  v20 = v12 - v13;
  if (v12 < v13)
  {
    __break(1u);
    return MEMORY[0x1EEDBFB70](v13, v14, v15, v16, v17, v18, v19);
  }

  v21 = *(v1 + 69);
  v22 = v1[38];
  v24 = v1[35];
  v23 = v1[36];
  v25 = v1[34];
  v26 = MEMORY[0x1E69E6438];
  *(v10 + 96) = MEMORY[0x1E69E63B0];
  *(v10 + 104) = v26;
  *(v10 + 72) = v20 / 1000000.0;
  sub_1C6D79AC0();
  sub_1C6D78D30("Generated %lu features from embeddings in  %.0f milliseconds", v41, v42);

  sub_1C6D78EA0();
  v27 = *(v24 + 8);
  v1[47] = v27;
  v1[48] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v22, v25);
  v28 = *(v24 + 32);
  v1[49] = v28;
  v1[50] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v28(v22, v23, v25);
  sub_1C6B0F5E0();
  sub_1C6D78920();
  if (v21)
  {
    if (*(v1 + 70))
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C6D78910();
    if (*(v1 + 70))
    {
LABEL_6:
      if (*(v1 + 71))
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  sub_1C6D78900();
  if (*(v1 + 71))
  {
LABEL_7:
    if (v1[55])
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  sub_1C6D788D0();
  if (v1[55])
  {
LABEL_8:
    if (*(v1 + 441))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  sub_1C6D788F0();
  if ((*(v1 + 441) & 1) == 0)
  {
LABEL_9:
    sub_1C6D788E0();
  }

LABEL_10:
  v29 = v1[28];
  v30 = v1[29];
  v31 = v1[25];
  v32 = v1[26];
  v33 = v1[24];
  v34 = v1[14];
  (*(v1[31] + 32))(v1[33], v1[32], v1[30]);
  sub_1C6CACD6C(v30);
  sub_1C6D78930();
  (*(v32 + 32))(v33, v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v35 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier;
  swift_beginAccess();
  sub_1C6CAF444(v33, v34 + v35);
  swift_endAccess();
  sub_1C6CACD6C(v29);
  v1[10] = v9;
  v36 = swift_task_alloc();
  v1[51] = v36;
  sub_1C6B0FA4C(0, &qword_1EDCDFA90, sub_1C6B3CA34, MEMORY[0x1E69E62F8]);
  v38 = v37;
  v19 = sub_1C6CAF4A8();
  *v36 = v1;
  v36[1] = sub_1C6CADE08;
  v17 = v1[25];
  v13 = v1[23];
  v14 = v1 + 10;
  v15 = 0;
  v16 = 0;
  v18 = v38;

  return MEMORY[0x1EEDBFB70](v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1C6CADE08()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    (*(v2[26] + 8))(v2[28], v2[25]);
    v3 = sub_1C6CAEBB0;
  }

  else
  {
    v4 = v2[28];
    v5 = v2[25];
    v6 = v2[26];
    v7 = *(v6 + 8);
    v2[53] = v7;
    v2[54] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v3 = sub_1C6CADF64;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

unint64_t sub_1C6CADF64(uint64_t a1)
{
  v95 = v1;
  v2 = v1;
  v3 = *(v1 + 392);
  v4 = *(v1 + 376);
  v5 = *(v1 + 296);
  v6 = *(v1 + 288);
  v7 = *(v1 + 272);
  sub_1C6D78EA0();
  v4(v5, v7);
  v3(v5, v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7EB10;
  v9 = sub_1C6D78E90();
  result = sub_1C6D78E90();
  if (v9 < result)
  {
    __break(1u);
    return result;
  }

  v11 = *(v1 + 352);
  v12 = *(v1 + 68);
  v13 = MEMORY[0x1E69E6438];
  *(v8 + 56) = MEMORY[0x1E69E63B0];
  *(v8 + 64) = v13;
  *(v8 + 32) = (v9 - result) / 1000000.0;
  v14 = sub_1C6D78960();
  sub_1C6CAB580();
  *(v8 + 96) = v15;
  *(v8 + 104) = sub_1C6CAF6D0(&qword_1EDCDF9D8, sub_1C6CAB580, MEMORY[0x1E6969E28]);
  *(v8 + 72) = v14;
  v16 = sub_1C6D79AC0();
  sub_1C6D78D30("Created user embedding in %.0f milliseconds with coefficients %{public}@", 72, 2, &dword_1C6B09000, v11, v16, v8);

  v17 = *(v2 + 416);
  if (v12 == 1)
  {
    v18 = *(v2 + 352);
    v19 = *(v2 + 152);
    v20 = *(v2 + 128);
    v21 = *(v2 + 136);
    v91 = *(v2 + 104);
    sub_1C6D75D80();
    sub_1C6D75D50();
    v88 = *(v21 + 8);
    v88(v19, v20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C6D7E630;
    sub_1C6CAF6D0(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v23 = sub_1C6D7A0E0();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C6B2064C();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = sub_1C6D79AC0();
    sub_1C6D78D30("Attempting to write human readable history to disk at %{public}@", 64, 2, &dword_1C6B09000, v18, v26, v22);

    sub_1C6D75B70();
    swift_allocObject();
    sub_1C6D75B60();
    *(v2 + 88) = v91;
    sub_1C6B0FA4C(0, &qword_1EDCDFAA0, MEMORY[0x1E69960D0], MEMORY[0x1E69E62F8]);
    sub_1C6CAF5F8();
    v27 = sub_1C6D75B50();
    v92 = v17;
    if (v17)
    {
      v29 = *(v2 + 376);
      v86 = *(v2 + 296);
      v87 = *(v2 + 304);
      v30 = *(v2 + 272);
      v31 = *(v2 + 176);
      v32 = *(v2 + 184);
      v34 = *(v2 + 160);
      v33 = *(v2 + 168);
      v35 = *(v2 + 128);

      v88(v34, v35);
      (*(v31 + 8))(v32, v33);
      v29(v86, v30);
      v29(v87, v30);
      goto LABEL_9;
    }

    v54 = v27;
    v55 = v28;

    v17 = 0;
    sub_1C6D75E70();
    v88(*(v2 + 160), *(v2 + 128));
    sub_1C6B1C9F0(v54, v55);
  }

  v36 = *(v2 + 216);
  v37 = *(v2 + 112);
  v38 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_unfairLock;
  os_unfair_lock_lock_with_options();
  sub_1C6CACD6C(v36);
  sub_1C6CAF530();
  sub_1C6D788C0();
  v39 = *(v2 + 424);
  v92 = v17;
  if (!v17)
  {
    v90 = v38;
    v46 = *(v2 + 352);
    v39(*(v2 + 216), *(v2 + 200));
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1C6D7E630;
    sub_1C6CAF6D0(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v48 = sub_1C6D7A0E0();
    v50 = v49;
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v51 = sub_1C6B2064C();
    *(v47 + 64) = v51;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v52 = sub_1C6D79AC0();
    sub_1C6D78D30("Wrote user embedding to %{public}@", 34, 2, &dword_1C6B09000, v46, v52, v47);

    sub_1C6CAEDD8(&v93);
    v53 = v37;
    v62 = *(v2 + 128);
    v63 = *(v2 + 136);
    v64 = *(v2 + 120);
    v65 = v93;
    v66 = v94;
    sub_1C6B18038(*(v2 + 112) + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_humanReadableParametersPath, v64);
    if ((*(v63 + 48))(v64, 1, v62) == 1)
    {
      sub_1C6B18474(*(v2 + 120));
    }

    else
    {
      v78 = *(v2 + 352);
      (*(*(v2 + 136) + 32))(*(v2 + 144), *(v2 + 120), *(v2 + 128));
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1C6D7E630;
      v80 = sub_1C6D7A0E0();
      *(v79 + 56) = MEMORY[0x1E69E6158];
      *(v79 + 64) = v51;
      *(v79 + 32) = v80;
      *(v79 + 40) = v81;
      v82 = sub_1C6D79AC0();
      sub_1C6D78D30("Attempting to write parameters to %{public}@", 44, 2, &dword_1C6B09000, v78, v82, v79);

      sub_1C6D75B70();
      swift_allocObject();
      sub_1C6D75B60();
      *(v2 + 56) = v65;
      *(v2 + 64) = v66;
      sub_1C6CAF5A4();
      v83 = sub_1C6D75B50();
      v85 = v84;

      sub_1C6D75E70();
      (*(*(v2 + 136) + 8))(*(v2 + 144), *(v2 + 128));
      sub_1C6B1C9F0(v83, v85);
    }

    v67 = *(v2 + 112) + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_loadedUserEmbedding;
    v68 = v90;
    if (!*v67)
    {
      *v67 = v65;
      *(v67 + 8) = v66;

      v68 = v90;
    }

    v69 = *(v2 + 376);
    v70 = v65;
    v72 = *(v2 + 296);
    v71 = *(v2 + 304);
    v73 = *(v2 + 272);
    v74 = *(v2 + 184);
    v75 = *(v2 + 168);
    v76 = *(v2 + 176);
    v77 = *(v2 + 96);
    *v77 = v70;
    *(v77 + 8) = v66;
    os_unfair_lock_unlock(*(v53 + v68));
    (*(v76 + 8))(v74, v75);
    v69(v72, v73);
    v69(v71, v73);

    v61 = *(v2 + 8);
    goto LABEL_10;
  }

  v40 = *(v2 + 376);
  v41 = *(v2 + 296);
  v89 = *(v2 + 304);
  v42 = *(v2 + 272);
  v44 = *(v2 + 176);
  v43 = *(v2 + 184);
  v45 = *(v2 + 168);
  v39(*(v2 + 216), *(v2 + 200));
  os_unfair_lock_unlock(*(v37 + v38));
  (*(v44 + 8))(v43, v45);
  v40(v41, v42);
  v40(v89, v42);
LABEL_9:
  v56 = *(v2 + 352);
  v57 = sub_1C6D79AA0();
  v58 = swift_allocObject();
  *(v2 + 40) = 0;
  *(v58 + 16) = xmmword_1C6D7E630;
  *(v2 + 48) = 0xE000000000000000;
  *(v2 + 72) = v92;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v59 = *(v2 + 40);
  v60 = *(v2 + 48);
  *(v58 + 56) = MEMORY[0x1E69E6158];
  *(v58 + 64) = sub_1C6B2064C();
  *(v58 + 32) = v59;
  *(v58 + 40) = v60;
  sub_1C6D78D30("Failed to generate embedding with error %{public}@", 50, 2, &dword_1C6B09000, v56, v57, v58);

  swift_willThrow();

  v61 = *(v2 + 8);
LABEL_10:

  return v61();
}

uint64_t sub_1C6CAEBB0()
{
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[34];
  v1(v0[37], v3);
  v1(v2, v3);

  v4 = v0[52];
  v5 = v0[44];
  v6 = sub_1C6D79AA0();
  v7 = swift_allocObject();
  v0[5] = 0;
  *(v7 + 16) = xmmword_1C6D7E630;
  v0[6] = 0xE000000000000000;
  v0[9] = v4;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v8 = v0[5];
  v9 = v0[6];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_1C6D78D30("Failed to generate embedding with error %{public}@", 50, 2, &dword_1C6B09000, v5, v6, v7);

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C6CAEDD8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  sub_1C6B0F9A0(0, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
  v2 = v1;
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v20 - v4;
  sub_1C6B0F9A0(0, &qword_1EDCEA2E0, MEMORY[0x1E6966340]);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  if (qword_1EDCE9D38 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCE9D40;
  sub_1C6B1D314(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C6D7E630;
  sub_1C6D75DE0();
  sub_1C6CAF6D0(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v12 = sub_1C6D7A0E0();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1C6B2064C();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v15 = sub_1C6D79AC0();
  sub_1C6D78D30("Loading parameters from %{public}@", 34, 2, &dword_1C6B09000, v10, v15, v11);

  sub_1C6CACD6C(v5);
  sub_1C6CAF530();
  v16 = v23;
  sub_1C6D788B0();
  if (v16)
  {
    return (*(v24 + 8))(v5, v2);
  }

  (*(v24 + 8))(v5, v2);
  v18 = v21;
  v19 = sub_1C6D78960();
  sub_1C6CAF1BC(v19, v22);
  (*(v20 + 8))(v9, v18);
}

unint64_t sub_1C6CAF104()
{
  result = qword_1EC1D8F28;
  if (!qword_1EC1D8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F28);
  }

  return result;
}

void sub_1C6CAF158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6CAF104();
    v7 = a3(a1, &type metadata for UserEmbeddingManager.LogisticRegressionClassifierConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1C6CAF1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = *(a1 + 32 + 4 * v3 - 4);
    v6 = 2 * v3 - 1;
    if (v3 == v6 >> 1)
    {
    }

    else
    {
      sub_1C6B6E2D4(a1, a1 + 32, 0, v6);
      v4 = v7;
    }

    if (qword_1EDCE9D38 != -1)
    {
      swift_once();
    }

    v10 = qword_1EDCE9D40;
    v11 = sub_1C6D79AC0();
    result = sub_1C6D78D30("Produced EmbeddingParameters from coefficients", 46, 2, &dword_1C6B09000, v10, v11, MEMORY[0x1E69E7CC0]);
    *a2 = v4;
    *(a2 + 8) = v5;
  }

  else
  {
    sub_1C6CAFC4C();
    swift_allocError();
    *v8 = xmmword_1C6D8FA00;
    return swift_willThrow();
  }

  return result;
}

uint64_t UserEmbeddingManager.deinit()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_path;
  v2 = sub_1C6D75DE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C6CAF718(v0 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier);

  sub_1C6B18474(v0 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_humanReadableParametersPath);
  return v0;
}

uint64_t UserEmbeddingManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_path;
  v2 = sub_1C6D75DE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C6CAF718(v0 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager____lazy_storage___classifier);

  sub_1C6B18474(v0 + OBJC_IVAR____TtC19NewsPersonalization20UserEmbeddingManager_humanReadableParametersPath);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6CAF444(uint64_t a1, uint64_t a2)
{
  sub_1C6B0F56C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6CAF4A8()
{
  result = qword_1EDCDFA88;
  if (!qword_1EDCDFA88)
  {
    sub_1C6B0FA4C(255, &qword_1EDCDFA90, sub_1C6B3CA34, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFA88);
  }

  return result;
}

unint64_t sub_1C6CAF530()
{
  result = qword_1EDCEA2F8;
  if (!qword_1EDCEA2F8)
  {
    sub_1C6B0F9A0(255, &qword_1EDCEA2F0, MEMORY[0x1E6966330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA2F8);
  }

  return result;
}

unint64_t sub_1C6CAF5A4()
{
  result = qword_1EDCE2320;
  if (!qword_1EDCE2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2320);
  }

  return result;
}

unint64_t sub_1C6CAF5F8()
{
  result = qword_1EDCDFA98;
  if (!qword_1EDCDFA98)
  {
    sub_1C6B0FA4C(255, &qword_1EDCDFAA0, MEMORY[0x1E69960D0], MEMORY[0x1E69E62F8]);
    sub_1C6CAF6D0(&qword_1EDCE5D00, MEMORY[0x1E69960D0], MEMORY[0x1E69960D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFA98);
  }

  return result;
}

uint64_t sub_1C6CAF6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CAF718(uint64_t a1)
{
  sub_1C6B0F56C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_19NewsPersonalization20UserEmbeddingManagerC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C6CAF7C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6CAF814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C6CAF8A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6CAF8C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 73) = v3;
  return result;
}

unint64_t sub_1C6CAF928()
{
  result = qword_1EC1D8F38;
  if (!qword_1EC1D8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F38);
  }

  return result;
}

unint64_t sub_1C6CAF980()
{
  result = qword_1EC1D8F40;
  if (!qword_1EC1D8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F40);
  }

  return result;
}

unint64_t sub_1C6CAF9D8()
{
  result = qword_1EC1D8F48;
  if (!qword_1EC1D8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F48);
  }

  return result;
}

uint64_t sub_1C6CAFA2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C616E6550326CLL && a2 == 0xE900000000000079;
  if (v4 || (sub_1C6D7A130() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C616E6550316CLL && a2 == 0xE900000000000079 || (sub_1C6D7A130() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA49B0 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A695370657473 && a2 == 0xE800000000000000 || (sub_1C6D7A130() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C6DA49D0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C6D7A130();

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

uint64_t sub_1C6CAFBE8(uint64_t a1, uint64_t a2)
{
  sub_1C6B0F56C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6CAFC4C()
{
  result = qword_1EC1D8F50;
  if (!qword_1EC1D8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F50);
  }

  return result;
}

void *sub_1C6CAFCA0(uint64_t a1, uint64_t a2)
{
  sub_1C6B3C9DC();
  v79 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3CA34(0);
  v77 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v73 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v63 - v14;
  v85 = sub_1C6D78630();
  v15 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v67 = &v63 - v21;
  sub_1C6CB12FC(0);
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v66 = &v63 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v65 = &v63 - v31;
  v80 = a2;
  v81 = a1;
  v32 = *(a1 + 16);
  v83 = *(a2 + 16);
  v84 = v32;
  if (v83 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v83;
  }

  v87 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39904(0, v33, 0);
  v35 = v87;
  v82 = v5;
  v75 = v15;
  v76 = v9;
  if (v33)
  {
    v72 = v18;
    v36 = 0;
    v70 = (v15 + 32);
    v71 = v15 + 16;
    v68 = v9 + 32;
    v69 = v5 + 16;
    v37 = v72;
    while (v84 != v36)
    {
      v38 = v85;
      result = (*(v15 + 16))(v37, v81 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v36, v85);
      if (v83 == v36)
      {
        goto LABEL_24;
      }

      v39 = v82;
      v40 = v80 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v36;
      v41 = *(v74 + 48);
      (*v70)(v25, v37, v38);
      v42 = *(v39 + 16);
      v43 = v79;
      v42(&v25[v41], v40, v79);
      v42(v78, &v25[v41], v43);
      v44 = sub_1C6D78620();
      v45 = v73;
      v86 = v44;
      sub_1C6D78890();
      sub_1C6CB136C(v25);
      v87 = v35;
      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1C6B39904((v46 > 1), v47 + 1, 1);
        v45 = v73;
        v35 = v87;
      }

      ++v36;
      *(v35 + 16) = v47 + 1;
      v9 = v76;
      result = (*(v76 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v47, v45, v77);
      v15 = v75;
      if (v33 == v36)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    v49 = v83;
    v48 = v84;
    if (v84 <= v83)
    {
      return v35;
    }

    v70 = (v15 + 32);
    v71 = v15 + 16;
    v68 = v9 + 32;
    v69 = v82 + 16;
    v50 = v64;
    v51 = v67;
    v52 = v74;
    while (v33 < v48)
    {
      result = (*(v15 + 16))(v51, v81 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33, v85);
      if (__OFADD__(v33, 1))
      {
        goto LABEL_26;
      }

      if (v49 == v33)
      {
        (*(v15 + 8))(v51, v85);
        return v35;
      }

      if (v33 >= v49)
      {
        goto LABEL_27;
      }

      v73 = (v33 + 1);
      v53 = v82;
      v54 = v80 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33;
      v55 = *(v52 + 48);
      v56 = v66;
      (*v70)(v66, v51, v85);
      v57 = *(v53 + 16);
      v58 = v56 + v55;
      v59 = v79;
      v72 = v33;
      v57(v58, v54, v79);
      v60 = v65;
      sub_1C6CB13C8(v56, v65);
      v57(v78, v60 + *(v52 + 48), v59);
      v86 = sub_1C6D78620();
      sub_1C6D78890();
      sub_1C6CB136C(v60);
      v87 = v35;
      v62 = *(v35 + 16);
      v61 = *(v35 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1C6B39904((v61 > 1), v62 + 1, 1);
        v35 = v87;
      }

      *(v35 + 16) = v62 + 1;
      result = (*(v76 + 32))(v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v62, v50, v77);
      v33 = (v72 + 1);
      v49 = v83;
      v48 = v84;
      v15 = v75;
      v51 = v67;
      if (v73 == v84)
      {
        return v35;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void static EmbeddingDataTransformer.float16.getter(uint64_t a1@<X8>)
{
  *a1 = sub_1C6CB0B78;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1C6CB038C(uint64_t a1)
{
  v3 = v1;
  sub_1C6B3C9DC();
  v25 = v5;
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  if (*(v3 + 16))
  {
    v13 = v11(a1, v8);
    if (!v2)
    {
      v24[0] = 0;
      v14 = *(v13 + 16);
      if (v14)
      {
        v27 = MEMORY[0x1E69E7CC0];
        v15 = v13;
        sub_1C6B398B4(0, v14, 0);
        v12 = v27;
        v24[3] = v6 + 32;
        sub_1C6CB142C(0, &qword_1EDCE6620, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
        v24[2] = v16;
        v17 = 32;
        v24[1] = sub_1C6CB1280();
        v18 = v15;
        do
        {
          v19 = v18;
          v26 = *(v18 + v17);

          sub_1C6D78DD0();
          v27 = v12;
          v21 = *(v12 + 16);
          v20 = *(v12 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1C6B398B4((v20 > 1), v21 + 1, 1);
            v12 = v27;
          }

          *(v12 + 16) = v21 + 1;
          (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v10, v25);
          v17 += 8;
          --v14;
          v18 = v19;
        }

        while (v14);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v22 = v11(a1, v8);
    if (!v2)
    {
      return v22;
    }
  }

  return v12;
}

void *sub_1C6CB05F8(uint64_t a1)
{
  v3 = v2;
  v33 = sub_1C6D78630();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v6);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(v1 + 16);
  v34 = *v1;
  v35 = v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v27 = v2;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C6B393F4(0, v8, 0);
    v9 = v36;
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v30 = *(v10 + 56);
    v31 = v11;
    v28 = a1;
    v29 = (v10 - 8);
    do
    {
      v14 = v32;
      v13 = v33;
      v15 = v10;
      v31(v32, v12, v33);
      v16 = sub_1C6D78600();
      v18 = v17;
      (*v29)(v14, v13);
      v36 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C6B393F4((v19 > 1), v20 + 1, 1);
        v9 = v36;
      }

      *(v9 + 16) = v20 + 1;
      v21 = v9 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += v30;
      --v8;
      v10 = v15;
    }

    while (v8);
    v3 = v27;
  }

  v22 = sub_1C6CB038C(v9);
  if (!v3)
  {
    v23 = v22;

    v3 = sub_1C6CAFCA0(v24, v23);
  }

  return v3;
}

char *static EmbeddingDataTransformer.array(fromFloat16Data:)(char *a1, unint64_t a2)
{
  sub_1C6B3C9DC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  sub_1C6CB142C(0, &unk_1EDCE7D30, MEMORY[0x1E6969080], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v27 = xmmword_1C6D7E630;
  *(inited + 16) = xmmword_1C6D7E630;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  sub_1C6B1CD10(a1, a2);
  v16 = sub_1C6CB0B78(inited);
  swift_setDeallocating();
  sub_1C6CB0F2C(inited + 32);
  if (v2)
  {
    return a1;
  }

  v26 = v7;
  if (!*(v16 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v17 = v26;
  (*(v26 + 16))(v10, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v6);

  (*(v17 + 32))(v14, v10, v6);
  v18 = sub_1C6D78DB0();
  result = sub_1C6D78DE0();
  if (result < v18)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    if (v18 == result)
    {
      a1 = MEMORY[0x1E69E7CC0];
LABEL_6:
      (*(v26 + 8))(v14, v6);
      return a1;
    }

    if (v18 < result)
    {
      sub_1C6CB142C(0, &qword_1EDCE6458, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
      a1 = MEMORY[0x1E69E7CC0];
      do
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v27;
        *(v21 + 32) = v18;
        sub_1C6CABBEC();
        sub_1C6D78E20();

        v22 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1C6B656C8(0, *(a1 + 2) + 1, 1, a1);
        }

        v24 = *(a1 + 2);
        v23 = *(a1 + 3);
        if (v24 >= v23 >> 1)
        {
          a1 = sub_1C6B656C8((v23 > 1), v24 + 1, 1, a1);
        }

        ++v18;
        *(a1 + 2) = v24 + 1;
        *&a1[4 * v24 + 32] = v22;
      }

      while (v20 != v18);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CB0B78(uint64_t a1)
{
  v2 = v1;
  v43 = *MEMORY[0x1E69E9840];
  sub_1C6B3C9DC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1C6B398B4(0, v9, 0);
    v10 = v42;
    v39 = v6 + 32;
    v11 = (a1 + 40);
    v36 = v6;
    v37 = v5;
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *v11 >> 62;
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          memset(v41, 0, 14);
          v15 = v41;
          goto LABEL_20;
        }

        v38 = v10;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);

        v18 = sub_1C6D75BF0();
        if (v18)
        {
          v19 = sub_1C6D75C20();
          if (__OFSUB__(v17, v19))
          {
            goto LABEL_39;
          }

          v20 = v16;
          v21 = v2;
          v18 += v17 - v19;
          v22 = v20 - v17;
          if (__OFSUB__(v20, v17))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v28 = v16;
          v21 = v2;
          v22 = v28 - v17;
          if (__OFSUB__(v28, v17))
          {
            goto LABEL_38;
          }
        }

        v10 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        v29 = sub_1C6D75C10();
        if (v29 >= v22)
        {
          v25 = v22;
        }

        else
        {
          v25 = v29;
        }
      }

      else
      {
        if (!v14)
        {
          v41[0] = *(v11 - 1);
          LOWORD(v41[1]) = v12;
          BYTE2(v41[1]) = BYTE2(v12);
          BYTE3(v41[1]) = BYTE3(v12);
          BYTE4(v41[1]) = BYTE4(v12);
          BYTE5(v41[1]) = BYTE5(v12);
          v15 = v41 + BYTE6(v12);
LABEL_20:
          sub_1C6CB0F80(v41, v15, v13, v12);
          v26 = v13;
          v27 = v12;
          if (v2)
          {
            goto LABEL_35;
          }

          sub_1C6B1C9F0(v13, v12);
          goto LABEL_31;
        }

        v21 = v2;
        if (v13 >> 32 < v13)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v38 = v10;

        v18 = sub_1C6D75BF0();
        if (v18)
        {
          v23 = sub_1C6D75C20();
          if (__OFSUB__(v13, v23))
          {
            goto LABEL_40;
          }

          v18 += v13 - v23;
        }

        v10 = v12 & 0x3FFFFFFFFFFFFFFFLL;
        v24 = sub_1C6D75C10();
        if (v24 >= (v13 >> 32) - v13)
        {
          v25 = (v13 >> 32) - v13;
        }

        else
        {
          v25 = v24;
        }
      }

      v30 = v25 + v18;
      if (v18)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      sub_1C6CB0F80(v18, v31, v13, v12);
      v2 = v21;
      v26 = v13;
      v27 = v12;
      if (v21)
      {
LABEL_35:
        sub_1C6B1C9F0(v26, v27);

        return v10;
      }

      sub_1C6B1C9F0(v13, v12);
      v5 = v37;
      v10 = v38;
      v6 = v36;
LABEL_31:
      v42 = v10;
      v33 = *(v10 + 16);
      v32 = *(v10 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C6B398B4((v32 > 1), v33 + 1, 1);
        v10 = v42;
      }

      v11 += 2;
      *(v10 + 16) = v33 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v33, v40, v5);
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_1C6CB0F80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  sub_1C6CB142C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D839E0;
  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2 || !__OFSUB__(*(a3 + 24), *(a3 + 16)))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (v8)
  {
LABEL_9:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

LABEL_10:
  *(v7 + 32) = sub_1C6D799A0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D839E0;
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  *(v9 + 32) = sub_1C6D79BA0();
  v10 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v11 = sub_1C6D79760();

  v12 = sub_1C6D79760();

  v21[0] = 0;
  v13 = [v10 initWithDataPointer:a1 shape:v11 dataType:65552 strides:v12 deallocator:0 error:v21];

  v14 = v21[0];
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6D839E0;
    *(v15 + 32) = v13;
    sub_1C6B0C69C(0, &qword_1EDCDF8E8, 0x1E695FED0);
    v16 = v14;
    v17 = v13;
    v18 = sub_1C6D79760();

    v19 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v18 alongAxis:0 dataType:65568];

    sub_1C6D78E00();
  }

  else
  {
    v20 = v21[0];
    sub_1C6D75CC0();

    swift_willThrow();
  }
}

unint64_t sub_1C6CB1280()
{
  result = qword_1EC1D8F58;
  if (!qword_1EC1D8F58)
  {
    sub_1C6CB142C(255, &qword_1EDCE6620, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F58);
  }

  return result;
}

void sub_1C6CB12FC(uint64_t a1)
{
  if (!qword_1EDCE5CF8)
  {
    sub_1C6D78630();
    sub_1C6B3C9DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE5CF8);
    }
  }
}

uint64_t sub_1C6CB136C(uint64_t a1)
{
  sub_1C6CB12FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6CB13C8(uint64_t a1, uint64_t a2)
{
  sub_1C6CB12FC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C6CB142C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t UserEmbedding.coefficients.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1C6C2F074();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D7E630;
  *(inited + 32) = v2;

  sub_1C6B38474(inited);
  return v1;
}

uint64_t sub_1C6CB14F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B39954(0, v6, 0);
  v29 = v5;
  v30 = v4;
  v27 = a1;
  v28 = v6;
  v26 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v31 = *(v9 - 1);
      v11 = *v8;
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);

      if (v13 >= v12 >> 1)
      {
        result = sub_1C6B39954((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 24 * v13;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      --v5;
      *(v14 + 48) = v11;
      *(v14 + 52) = 1.0 - v11;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v29;
    v15 = v30;
    if (v30 <= v29)
    {
      return v32;
    }

    v17 = v28;
    v18 = (v27 + 16 * v28 + 40);
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = *(v26 + 32 + 4 * v17);
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_1C6B39954((v23 > 1), v24 + 1, 1);
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 24 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v20;
        *(v25 + 48) = v22;
        *(v25 + 52) = 1.0 - v22;
        ++v17;
        v18 += 2;
        v16 = v29;
        v15 = v30;
        if (v19 != v30)
        {
          continue;
        }
      }

      return v32;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t UserEmbedding.classifications(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1C6D78EB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v50 - v11;
  v13 = *(v1 + 2);
  v14 = qword_1EDCE9D38;
  v60 = *v1;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDCE9D40;
  sub_1C6B1D314(0);
  v53 = v16;
  v17 = swift_allocObject();
  v52 = xmmword_1C6D7E630;
  *(v17 + 16) = xmmword_1C6D7E630;
  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E65A8];
  *(v17 + 56) = MEMORY[0x1E69E6530];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  sub_1C6D79AC0();
  v51 = v15;
  sub_1C6D78D30("Classifying %lu items", *&v50);

  sub_1C6D78EA0();
  v59 = v18;
  if (v18)
  {
    v54 = v3;
    v55 = v6;
    v58 = v12;
    v56 = v5;
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v18, 0);
    v20 = v62;
    v21 = (a1 + 56);
    v22 = v18;
    do
    {
      v24 = *(v21 - 3);
      v23 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = *v21;

      sub_1C6B1CD10(v25, v26);
      sub_1C6B1C9F0(v25, v26);
      v62 = v20;
      v28 = *(v20 + 2);
      v27 = *(v20 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1C6B39280((v27 > 1), v28 + 1, 1);
        v20 = v62;
      }

      v21 += 4;
      *(v20 + 2) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 4) = v24;
      *(v29 + 5) = v23;
      --v22;
    }

    while (v22);
    v30 = v59;
    v65 = v60;
    v66 = v13;
    v62 = sub_1C6CB0B78;
    v63 = 0;
    v64 = 0;
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C6B393F4(0, v59, 0);
    v31 = v61;
    v32 = (a1 + 56);
    do
    {
      a1 = *(v32 - 1);
      v33 = *v32;

      sub_1C6B1CD10(a1, v33);

      v61 = v31;
      v35 = *(v31 + 16);
      v34 = *(v31 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1C6B393F4((v34 > 1), v35 + 1, 1);
        v31 = v61;
      }

      v32 += 4;
      *(v31 + 16) = v35 + 1;
      v36 = v31 + 16 * v35;
      *(v36 + 32) = a1;
      *(v36 + 40) = v33;
      --v30;
    }

    while (v30);
    v6 = v55;
    v5 = v56;
    v12 = v58;
    v3 = v54;
  }

  else
  {
    v65 = v60;
    v66 = v13;
    v62 = sub_1C6CB0B78;
    v63 = 0;
    v64 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
  }

  v37 = sub_1C6CB038C(v31);
  if (v3)
  {

    sub_1C6CAF43C(v62, v63);

    (*(v6 + 8))(v12, v5);
    return a1;
  }

  v38 = v37;
  sub_1C6CAF43C(v62, v63);

  v40 = sub_1C6CAAB04(v38);

  a1 = sub_1C6CB14F8(v20, v40);

  sub_1C6D78EA0();
  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  v42 = sub_1C6D78E90();
  v58 = v12;
  result = sub_1C6D78E90();
  if (v42 >= result)
  {
    v43 = MEMORY[0x1E69E6438];
    *(v41 + 56) = MEMORY[0x1E69E63B0];
    *(v41 + 64) = v43;
    *(v41 + 32) = (v42 - result) / 1000000.0;
    sub_1C6D79AC0();
    sub_1C6D78D30("Finished classifying in %.0f milliseconds", v50);

    v44 = *(a1 + 16);
    v45 = v59;
    if (v59 != v44)
    {
      sub_1C6D79AA0();
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1C6D7EB10;
      v47 = MEMORY[0x1E69E6530];
      *(v46 + 56) = MEMORY[0x1E69E6530];
      v48 = MEMORY[0x1E69E65A8];
      *(v46 + 64) = MEMORY[0x1E69E65A8];
      *(v46 + 72) = v44;
      *(v46 + 32) = v45;
      *(v46 + 96) = v47;
      *(v46 + 104) = v48;
      sub_1C6D78D30("Asked to classify %lu items, but only got %lu classifications", *&v50, v51);
    }

    v49 = *(v6 + 8);
    v49(v57, v5);
    v49(v58, v5);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6CB1D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6D7A130();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6CB1DA8(uint64_t a1)
{
  v2 = sub_1C6CB2178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6CB1DE4(uint64_t a1)
{
  v2 = sub_1C6CB2178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserEmbedding.encode(to:)(void *a1)
{
  sub_1C6CB21CC(0, &unk_1EDCDF600, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CB2178();

  sub_1C6D7A300();
  v12 = v9;
  v13 = v10;
  sub_1C6CAF5A4();
  sub_1C6D7A090();

  return (*(v5 + 8))(v8, v4);
}

uint64_t UserEmbedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6CB21CC(0, &qword_1EC1D8F60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6CB2178();
  sub_1C6D7A2D0();
  if (!v2)
  {
    sub_1C6CB2230();
    sub_1C6D79FF0();
    (*(v7 + 8))(v10, v6);
    v11 = v14;
    *a2 = v13;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6CB2178()
{
  result = qword_1EDCE2560;
  if (!qword_1EDCE2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2560);
  }

  return result;
}

void sub_1C6CB21CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6CB2178();
    v7 = a3(a1, &type metadata for UserEmbedding.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1C6CB2230()
{
  result = qword_1EC1D8F68;
  if (!qword_1EC1D8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F68);
  }

  return result;
}

unint64_t sub_1C6CB22C4()
{
  result = qword_1EC1D8F70;
  if (!qword_1EC1D8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8F70);
  }

  return result;
}

unint64_t sub_1C6CB231C()
{
  result = qword_1EDCE2550;
  if (!qword_1EDCE2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2550);
  }

  return result;
}

unint64_t sub_1C6CB2374()
{
  result = qword_1EDCE2558;
  if (!qword_1EDCE2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2558);
  }

  return result;
}

uint64_t type metadata accessor for NewsComputationalGraphRequestProcessor(uint64_t a1)
{
  result = qword_1EDCE7840;
  if (!qword_1EDCE7840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6CB2468()
{
  v1 = sub_1C6D75F80();
  v30 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D75F50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C6D78810();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  if (*(v0 + qword_1EC1D8F78))
  {
    v28 = *(v0 + qword_1EC1D8F78);
    v29 = v1;
    sub_1C6D78650();
    v15 = sub_1C6D787C0();
    v31 = v16;
    v27 = v15;
    (*(v11 + 8))(v14, v10);
    sub_1C6D75F40();
    sub_1C6D75EA0();
    v18 = v17;
    v19 = v17;
    (*(v6 + 8))(v9, v5);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v18 > -9.22337204e18)
    {
      if (v18 < 9.22337204e18)
      {
        v36 = v18;
        v32 = sub_1C6D7A0E0();
        v33 = v20;
        MEMORY[0x1CCA55B00](45, 0xE100000000000000);
        sub_1C6D75F70();
        v21 = sub_1C6D75F60();
        v23 = v22;
        (*(v30 + 8))(v4, v29);
        MEMORY[0x1CCA55B00](v21, v23);

        v24 = v32;
        v25 = v33;
        v32 = v27;
        v33 = v31;
        v34 = v24;
        v35 = v25;
        FileLog.log(file:)(&v32);
        sub_1C6B1C9F0(v32, v33);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1C6CB2904()
{
}

uint64_t sub_1C6CB2948(uint64_t a1)
{
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);

  return sub_1C6CB2AA8(a1, v3);
}

uint64_t sub_1C6CB2AA8(uint64_t a1, uint64_t a2)
{
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.legacy.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  sub_1C6CB51D8(v1 + *(v7 + 20), v6, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_1C6CB5100(v6, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  sub_1C6CB5168(v6, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  sub_1C6D78A30();
  v11 = v10[9];
  v12 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = v10[10];
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a1[v13], 1, 1, v14);
  return (v15)(&a1[v10[11]], 1, 1, v14);
}

uint64_t sub_1C6CB2DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CB368C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v8 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);
  sub_1C6CB5168(a2 + v8, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB5100(v7, a2 + v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  return (*(*(v9 - 8) + 56))(a2 + v8, 0, 1, v9);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.legacy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);
  sub_1C6CB5168(v1 + v3, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB5100(a1, v1 + v3, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.legacy.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);
  *(v5 + 12) = v14;
  sub_1C6CB51D8(v1 + v14, v9, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6CB5168(v9, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v17 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    *(v13 + 1) = 0;
    *(v13 + 2) = v17;
    sub_1C6D78A30();
    v18 = v10[9];
    v19 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    v20 = v10[10];
    v21 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    v22 = *(*(v21 - 8) + 56);
    v22(&v13[v20], 1, 1, v21);
    v22(&v13[v10[11]], 1, 1, v21);
  }

  else
  {
    sub_1C6CB5100(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  return sub_1C6CB3278;
}

void sub_1C6CB3278(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = *(*a1 + 12);
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1C6CB368C((*a1)[3], v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6CB5168(v10 + v6, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6CB5100(v7, v10 + v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
    sub_1C6CB50A0(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  else
  {
    sub_1C6CB5168(v10 + v6, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6CB5100(v8, v10 + v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    (*(v5 + 56))(v10 + v6, 0, 1, v4);
  }

  free(v8);
  free(v7);
  free(v9);

  free(v3);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C6CB3628(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 56);
  sub_1C6CB368C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB368C(a2, v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B46Storage_CompressedSessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, (v7 + v9));
  sub_1C6CB50A0(v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6CB50A0(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  return a2 & 1;
}

void sub_1C6CB3628(uint64_t a1)
{
  if (!qword_1EC1D6C90)
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6C90);
    }
  }
}

uint64_t sub_1C6CB368C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CB36F4(uint64_t a1, uint64_t a2)
{
  sub_1C6CB3628(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 56);
  sub_1C6CB368C(a1, v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB368C(a2, v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s19NewsPersonalization010Com_Apple_a1_B46Storage_CompressedSessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v7, (v7 + v9));
  sub_1C6CB50A0(v7 + v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6CB50A0(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  (*(*(v3 - 8) + 56))(&a1[v2], 1, 1, v3);
  return sub_1C6D78A30();
}

uint64_t sub_1C6CB388C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8F88);
  __swift_project_value_buffer(v0, qword_1EC1D8F88);
  sub_1C6B1DD54(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "legacy";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionArticle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8F88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6CB3BA0(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CB3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v49 = &v44 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v44 - v22;
  sub_1C6B1DD54(0, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, v11);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v50 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v44 - v30;
  v47 = v5;
  v32 = *(v5 + 56);
  v51 = v4;
  v32(&v44 - v30, 1, 1, v4, v29);
  v33 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0) + 20);
  sub_1C6CB51D8(v56 + v33, v15, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v44 = v17;
  v45 = v16;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6CB5168(v15, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v35 = v51;
  }

  else
  {
    sub_1C6CB5100(v15, v23, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v36 = v48;
    sub_1C6CB5100(v23, v48, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6CB5168(v31, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v37 = v36;
    v38 = v49;
    sub_1C6CB5100(v37, v49, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6CB5100(v38, v31, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v35 = v51;
    (v32)(v31, 0, 1, v51);
  }

  sub_1C6CB4C9C(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  v39 = v52;
  sub_1C6D78BB0();
  v40 = v50;
  if (v39)
  {
    return sub_1C6CB5168(v31, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  sub_1C6CB51D8(v31, v50, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  if ((*(v47 + 48))(v40, 1, v35) == 1)
  {
    sub_1C6CB5168(v31, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    return sub_1C6CB5168(v40, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  }

  else
  {
    v42 = v46;
    sub_1C6CB5100(v40, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6CB5168(v31, qword_1EDCE2D38, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v43 = v56;
    sub_1C6CB5168(v56 + v33, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6CB5100(v42, v43 + v33, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    return (*(v44 + 56))(v43 + v33, 0, 1, v45);
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6CB4234(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CB4234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  sub_1C6CB51D8(a1 + *(v13 + 20), v8, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_1C6CB5168(v8, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  }

  sub_1C6CB5100(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6CB4C9C(qword_1EDCE2D98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6D78CF0();
  return sub_1C6CB50A0(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  sub_1C6CB4C9C(&qword_1EC1D8FA0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6CB44FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_1C6D78A30();
}

uint64_t sub_1C6CB45C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB4C9C(&qword_1EC1D8FB0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB4644@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8F88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6CB46EC(uint64_t a1)
{
  v2 = sub_1C6CB4C9C(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB4758(uint64_t a1, uint64_t a2)
{
  sub_1C6CB4C9C(qword_1EDCE3BC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B32Storage_CompressedSessionArticleV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  sub_1C6CB3628(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1DD54(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v32 - v16;
  sub_1C6CB500C(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v32[0] = v5;
  v23 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v33 = a2;
  v24 = a1;
  v32[1] = v23;
  v32[2] = a1;
  v25 = *(v23 + 20);
  v26 = *(v19 + 48);
  sub_1C6CB51D8(v24 + v25, v22, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB51D8(v33 + v25, &v22[v26], &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v27 = *(v10 + 48);
  if (v27(v22, 1, v9) == 1)
  {
    if (v27(&v22[v26], 1, v9) == 1)
    {
      sub_1C6CB5168(v22, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6CB4C9C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = sub_1C6D79560();
      return v28 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6CB51D8(v22, v17, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  if (v27(&v22[v26], 1, v9) == 1)
  {
    sub_1C6CB50A0(v17, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
LABEL_7:
    sub_1C6CB50A0(v22, sub_1C6CB500C);
    goto LABEL_8;
  }

  sub_1C6CB5100(&v22[v26], v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v30 = *(v32[0] + 48);
  sub_1C6CB368C(v17, v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB368C(v13, &v8[v30], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v31 = static Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.== infix(_:_:)(v8, &v8[v30]);
  sub_1C6CB50A0(&v8[v30], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6CB50A0(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
  sub_1C6CB50A0(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB50A0(v17, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  sub_1C6CB5168(v22, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_8:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1C6CB4C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6CB4DE4(uint64_t a1)
{
  sub_1C6B1DD54(319, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CB4EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C6B3010C);
}

uint64_t sub_1C6CB4F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C6B302D8);
}

uint64_t sub_1C6CB4F68(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1C6CB500C(uint64_t a1)
{
  if (!qword_1EC1D6CA0)
  {
    sub_1C6B1DD54(255, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6CA0);
    }
  }
}

uint64_t sub_1C6CB50A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CB5100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CB5168(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1DD54(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6CB51D8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1DD54(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6CB528C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6CB5324(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6CB528C(319, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C6CB528C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6CB5500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1C6D78A40();
  if (v8 <= 0x3F)
  {
    sub_1C6CB528C(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6CB560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C6CB570C(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
        sub_1C6CB95FC(&qword_1EC1D9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6D907FC);
        sub_1C6D78BA0();
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CB570C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6CB95FC(&qword_1EC1D90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6D90C34);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB57C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CB58BC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
      sub_1C6CB95FC(&qword_1EC1D9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6D907FC);
      sub_1C6D78CE0();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CB58BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  sub_1C6CBB9C4(a1 + *(v14 + 24), v8, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6CB95FC(&qword_1EC1D90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6D90C34);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
}

uint64_t sub_1C6CB5AFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6CB5BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D90F8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6D90D64);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB5C74(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D90E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6D90D9C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB5CE0(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D90E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding, &unk_1C6D90D9C);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB5D60()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F7078);
  __swift_project_value_buffer(v0, qword_1EC1F7078);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "uuid";
  *(v7 + 8) = 4;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "dimension";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "normalizer_index";
  *(v12 + 8) = 16;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB5F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C6CB60FC(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6D78B50();
        break;
      case 1:
        sub_1C6CB6048(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1C6CB6048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  sub_1C6CB95FC(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6D7F250);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB60FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6D78A10();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  sub_1C6CB95FC(&qword_1EC1D90A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90ACC);
  sub_1C6CB95FC(&qword_1EC1D90A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90A04);
  return sub_1C6D78AC0();
}

uint64_t sub_1C6CB61F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CB636C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1C6D78CA0();
    }

    if (*(*(v3 + 8) + 16))
    {
      sub_1C6D78A10();
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      sub_1C6CB95FC(&qword_1EC1D90A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90ACC);
      sub_1C6CB95FC(&qword_1EC1D90A8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90A04);
      sub_1C6D78C40();
    }

    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CB636C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  sub_1C6CBB9C4(a1 + *(v14 + 28), v8, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6CB95FC(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6D7F250);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
}

uint64_t sub_1C6CB65B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = sub_1C6B61E7C(MEMORY[0x1E69E7CC0]);
  sub_1C6D78A30();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6CB6690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9120, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6D90BFC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB6730(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6D90C34);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB679C(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D90C0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, &unk_1C6D90C34);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB681C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F7090);
  __swift_project_value_buffer(v0, qword_1EC1F7090);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "subs";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D78AD0();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
        sub_1C6CB95FC(&qword_1EC1D9080, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6D90964);
        sub_1C6D78BA0();
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6CB6A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0), sub_1C6CB95FC(&qword_1EC1D9080, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6D90964), result = sub_1C6D78CE0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CB6BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90A94);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB6C50(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D90A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90ACC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB6CBC(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D90A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, &unk_1C6D90ACC);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB6D38(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C6B58600(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6CB6E00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 72);
  v11 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6D7EB10;
  v13 = (v12 + v11);
  v14 = v12 + v11 + *(v9 + 56);
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v16 = sub_1C6D78D00();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + *(v9 + 56);
  *(v13 + v10) = 2;
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = 2;
  v17();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB6FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t sub_1C6CB7054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C6D78CC0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CB7118@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_1C6D78A30();
}

uint64_t sub_1C6CB7190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9130, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6D9092C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB7230(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D9080, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6D90964);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB729C(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D9080, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub, &unk_1C6D90964);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB7318(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6CB73F4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F70C0);
  __swift_project_value_buffer(v0, qword_1EC1F70C0);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "collab_token";
  *(v7 + 8) = 12;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "float16_vector";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB75D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6CB7668(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C6CB771C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CB7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6CB95FC(&qword_1EC1D9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6D90694);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6CB95FC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB77D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6CB7840(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6CB7A80(v3, a1, a2, a3);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6CB7840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6CBB9C4(a1 + *(v14 + 20), v8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6CB95FC(&qword_1EC1D9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6D90694);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
}

uint64_t sub_1C6CB7A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  sub_1C6CBB9C4(a1 + *(v14 + 24), v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6CB95FC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6CB7CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6CB7DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9138, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6D907C4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB7E70(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6D907FC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB7EDC(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D9060, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding, &unk_1C6D907FC);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB7F5C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F70D8);
  __swift_project_value_buffer(v0, qword_1EC1F70D8);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "token";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "target_token_spec";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB8144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6CB81D4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CB81D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6CB95FC(&qword_1EC1D9020, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6D9052C);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB8288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6CB8334(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CB8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  sub_1C6CBB9C4(a1 + *(v14 + 24), v8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6CB95FC(&qword_1EC1D9020, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6D9052C);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
}

uint64_t sub_1C6CB8574@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6CB8648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9140, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6D9065C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB86E8(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6D90694);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB8754(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D9040, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, &unk_1C6D90694);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB87D4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F70F0);
  __swift_project_value_buffer(v0, qword_1EC1F70F0);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "is_target";
  *(v7 + 8) = 9;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "normalization_spec";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78AF0();
    }

    else if (result == 2)
    {
      sub_1C6CB8A44(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6CB8A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  sub_1C6CB95FC(&qword_1EC1D9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6D903C4);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6CB8AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6D78C60(), !v4))
  {
    result = sub_1C6CB8BA0(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CB8BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6CB528C(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  sub_1C6CBB9C4(a1 + *(v14 + 24), v8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6CBBA44(v8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  }

  sub_1C6CBAFDC(v8, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  sub_1C6CB95FC(&qword_1EC1D9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6D903C4);
  sub_1C6D78CF0();
  return sub_1C6CBAF7C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
}

uint64_t sub_1C6CB8DE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6CB8EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9148, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6D904F4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB8F54(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D9020, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6D9052C);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB8FC0(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D9020, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, &unk_1C6D9052C);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB9040()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F7108);
  __swift_project_value_buffer(v0, qword_1EC1F7108);
  sub_1C6CB528C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "should_normalize";
  *(v7 + 8) = 16;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "normalizer_index_key";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t sub_1C6CB9220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78AF0();
    }

    else if (result == 2)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t sub_1C6CB92AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1C6D78C60(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1C6D78CC0(), !v4))
    {
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6CB9368@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  return sub_1C6D78A30();
}

uint64_t sub_1C6CB93E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6CB95FC(&qword_1EC1D9150, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6D9038C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6CB9480(uint64_t a1)
{
  v2 = sub_1C6CB95FC(&qword_1EC1D9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6D903C4);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6CB94EC(uint64_t a1, uint64_t a2)
{
  sub_1C6CB95FC(&qword_1EC1D9000, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, &unk_1C6D903C4);

  return sub_1C6D78C20();
}

uint64_t sub_1C6CB95FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6CB9F34(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v55 = a2;
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1C6CB528C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v48 = &v46 - v8;
  sub_1C6CBBAB4(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v46 - v11;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6CB528C(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, v5);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = (&v46 - v19);
  sub_1C6CBBAB4(0, &qword_1EC1D6BD8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v22 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v46 - v24;
  v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  v26 = *(v49 + 20);
  v27 = *(v22 + 56);
  sub_1C6CBB9C4(v54 + v26, v25, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6CBB9C4(v55 + v26, &v25[v27], &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v28 = *(v13 + 48);
  if (v28(v25, 1, v12) == 1)
  {
    if (v28(&v25[v27], 1, v12) == 1)
    {
      sub_1C6CBBA44(v25, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &qword_1EC1D6BD8;
    v31 = &qword_1EC1D6BD0;
    v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken;
    v33 = v25;
LABEL_15:
    sub_1C6CBAF20(v33, v30, v31, v32, v29);
    goto LABEL_16;
  }

  sub_1C6CBB9C4(v25, v20, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  if (v28(&v25[v27], 1, v12) == 1)
  {
    sub_1C6CBAF7C(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    goto LABEL_6;
  }

  sub_1C6CBAFDC(&v25[v27], v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v34 = sub_1C6CBB5D0(v20, v16);
  sub_1C6CBAF7C(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6CBAF7C(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6CBBA44(v25, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v35 = *(v49 + 24);
  v36 = *(v50 + 48);
  v37 = v53;
  sub_1C6CBB9C4(v54 + v35, v53, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6CBB9C4(v55 + v35, v37 + v36, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v38 = v52;
  v39 = *(v51 + 48);
  if (v39(v37, 1, v52) != 1)
  {
    v41 = v48;
    sub_1C6CBB9C4(v37, v48, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_1C6CBAF7C(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_14;
    }

    v43 = v37 + v36;
    v44 = v47;
    sub_1C6CBAFDC(v43, v47, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (sub_1C6B5E090(*v41, *(v41 + 8), *v44, *(v44 + 8)))
    {
      sub_1C6D78A40();
      sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v45 = sub_1C6D79560();
      sub_1C6CBAF7C(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6CBAF7C(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6CBBA44(v37, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v45)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1C6CBAF7C(v44, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6CBAF7C(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6CBBA44(v37, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

LABEL_16:
    v40 = 0;
    return v40 & 1;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_14:
    v30 = &qword_1EC1D6BA8;
    v31 = qword_1EDCEA710;
    v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v33 = v37;
    goto LABEL_15;
  }

  sub_1C6CBBA44(v37, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_11:
  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v40 = sub_1C6D79560();
  return v40 & 1;
}

uint64_t sub_1C6CBA6B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v29 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6CB528C(0, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (&v27 - v10);
  sub_1C6CBBAB4(0, &qword_1EC1D9118, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - v15;
  v28 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v17 = *(v28 + 28);
  v18 = *(v13 + 56);
  v30 = a1;
  sub_1C6CBB9C4(a1 + v17, v16, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  sub_1C6CBB9C4(a2 + v17, &v16[v18], &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1C6CBB9C4(v16, v11, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v29;
      sub_1C6CBAFDC(&v16[v18], v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      v22 = *v11 == *v21 && v11[1] == v21[1];
      if (v22 || (sub_1C6D7A130() & 1) != 0)
      {
        sub_1C6D78A40();
        sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v23 = sub_1C6D79560();
        sub_1C6CBAF7C(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6CBAF7C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6CBBA44(v16, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        if (v23)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1C6CBAF7C(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6CBAF7C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
        sub_1C6CBBA44(v16, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
      }

LABEL_17:
      v25 = 0;
      return v25 & 1;
    }

    sub_1C6CBAF7C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_6:
    sub_1C6CBAF20(v16, &qword_1EC1D9118, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, v20);
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6CBBA44(v16, &qword_1EC1D9110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID);
LABEL_13:
  if (*v30 != *a2)
  {
    goto LABEL_17;
  }

  sub_1C6B5CAE0(*(v30 + 8), *(a2 + 8));
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v25 = sub_1C6D79560();
  return v25 & 1;
}

uint64_t sub_1C6CBAB54(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CB528C(0, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  sub_1C6CBBAB4(0, &qword_1EC1D9108, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbedding(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1C6CBB9C4(a1 + v17, v16, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6CBB9C4(a2 + v17, &v16[v18], &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6CBBA44(v16, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C6CBB9C4(v16, v11, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6CBAF7C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
LABEL_6:
    sub_1C6CBAF20(v16, &qword_1EC1D9108, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata, v20);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v21 = v27;
  sub_1C6CBAFDC(&v16[v18], v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  v22 = sub_1C6CBA6B0(v11, v21);
  sub_1C6CBAF7C(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6CBAF7C(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  sub_1C6CBBA44(v16, &qword_1EC1D9100, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabEmbeddingMetadata);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C6B58884(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = sub_1C6D79560();
  return v23 & 1;
}

uint64_t sub_1C6CBAF20(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1C6CBBAB4(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C6CBAF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6CBAFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6CBB044(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6CBB114(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6CB528C(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1C6CBBAB4(0, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v27 = a2;
  v18 = *(v26 + 24);
  v19 = *(v14 + 48);
  sub_1C6CBB9C4(&a1[v18], v17, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  sub_1C6CBB9C4(&v27[v18], &v17[v19], &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_1C6CBB9C4(v17, v12, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      sub_1C6CBAFDC(&v17[v19], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      if (*v12 == *v8 && (*(v12 + 1) == *(v8 + 1) ? (v23 = *(v12 + 2) == *(v8 + 2)) : (v23 = 0), v23 || (sub_1C6D7A130() & 1) != 0))
      {
        sub_1C6D78A40();
        sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v24 = sub_1C6D79560();
        sub_1C6CBAF7C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
        sub_1C6CBAF7C(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
        sub_1C6CBBA44(v17, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
        if (v24)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1C6CBAF7C(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
        sub_1C6CBAF7C(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
        sub_1C6CBBA44(v17, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      }

LABEL_17:
      v22 = 0;
      return v22 & 1;
    }

    sub_1C6CBAF7C(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
LABEL_8:
    sub_1C6CBAF20(v17, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, v21);
    goto LABEL_17;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1C6CBBA44(v17, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
LABEL_5:
  sub_1C6D78A40();
  sub_1C6CB95FC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = sub_1C6D79560();
  return v22 & 1;
}