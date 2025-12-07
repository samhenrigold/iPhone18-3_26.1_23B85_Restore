uint64_t sub_29C8B9378()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29C8B93B0()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C8B93EC()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C8B9438()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29C8B9470()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29C8B94C0()
{
  result = sub_29C8BCD08();
  qword_2A1A117B0 = result;
  *algn_2A1A117B8 = v1;
  return result;
}

void sub_29C8B94F0(void *a1)
{
  v2 = v1;
  v4 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v56 - v9;
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v56 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v56 - v14;
  v16 = sub_29C8BCC98();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x29EDCA190];
  v19 = [a1 identifier];
  if (!v19)
  {
    __break(1u);
    goto LABEL_39;
  }

  v20 = v19;
  v58 = v10;
  v59 = v7;
  v61 = sub_29C8BCD08();
  v62 = v21;

  if (qword_2A1A11708 != -1)
  {
    swift_once();
  }

  v22 = qword_2A1A117A8;
  v23 = *(qword_2A1A117A8 + 16);
  v24 = v17 + 48;
  v10 = a1;

  v63 = v2;
  if (v23)
  {
    v57 = v17;
    v25 = 0;
    v26 = v22 + 5;
    while (1)
    {
      v27 = *(v26 - 1);
      v65 = v10;
      v27(&v65);
      v28 = (*v24)(v13, 1, v16);
      sub_29C8BA184(v13);
      if (v28 != 1)
      {
        break;
      }

      ++v25;
      v26 += 2;
      if (v23 == v25)
      {
        goto LABEL_10;
      }
    }

    v23 = v25;
LABEL_10:
    v17 = v57;
  }

  v29 = v22[2];
  if (v23 == v29)
  {

    (*(v17 + 7))(v15, 1, 1, v16);

    v23 = v62;
    v30 = (*(v17 + 6))(v15, 1, v16);
    goto LABEL_16;
  }

  if (v23 >= v29)
  {
    __break(1u);
    goto LABEL_35;
  }

  v13 = v17;
  v31 = v22[2 * v23 + 4];
  v65 = v10;

  v32 = v58;
  v31(&v65);

  v33 = v59;
  sub_29C8BA1EC(v32, v59);
  v34 = *v24;
  if ((*v24)(v33, 1, v16) == 1)
  {
LABEL_39:

    __break(1u);
    goto LABEL_40;
  }

  v17 = v13;
  (*(v13 + 4))(v15, v33, v16);
  sub_29C8BA184(v32);
  (*(v13 + 7))(v15, 0, 1, v16);

  v23 = v62;
  v30 = v34(v15, 1, v16);
LABEL_16:
  if (v30 != 1)
  {
    v15 = v60;
    (*(v17 + 4))();
    v65 = 0x3A656D616ELL;
    v66 = 0xE500000000000000;
    v24 = v17;
    v35 = v61;
    MEMORY[0x29ED48BC0](v61, v23);
    v36 = sub_29C8B9C7C(v65, v66, v35, v23);

    v22 = v36;
    v37 = sub_29C8BCC68();
    v38 = [objc_opt_self() donationValueWithNameComponents:v37 origin:v22];

    v13 = v38;
    MEMORY[0x29ED48BE0]();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_19:
      sub_29C8BCD68();

      (*(v24 + 1))(v15, v16);
      goto LABEL_20;
    }

LABEL_35:
    sub_29C8BCD58();
    goto LABEL_19;
  }

  sub_29C8BA184(v15);
LABEL_20:
  if (qword_2A1A116A0 != -1)
  {
    swift_once();
  }

  v39 = qword_2A1A11760;
  v40 = *(qword_2A1A11760 + 16);
  v13 = v10;

  if (v40)
  {
    v41 = 0;
    v42 = v39 + 5;
    while (1)
    {
      v43 = *(v42 - 1);
      v64 = v13;
      v43(&v65, &v64);
      v44 = v66;
      sub_29C8BA25C(v65, v66, v67, v68);
      if (v44)
      {
        break;
      }

      ++v41;
      v42 += 2;
      if (v40 == v41)
      {
        goto LABEL_28;
      }
    }

    v40 = v41;
  }

LABEL_28:
  v45 = v39[2];
  if (v40 == v45)
  {

    return;
  }

  if (v40 >= v45)
  {
    __break(1u);
    goto LABEL_37;
  }

  v46 = v39[2 * v40 + 4];
  v64 = v13;

  v46(&v65, &v64);

  v47 = v66;
  if (v66)
  {
    v48 = v65;
    v50 = v67;
    v49 = v68;

    sub_29C8BA25C(v48, v47, v50, v49);

    v65 = 0x3A6C69616D65;
    v66 = 0xE600000000000000;
    v51 = v61;
    MEMORY[0x29ED48BC0](v61, v23);
    v52 = sub_29C8B9C7C(v65, v66, v51, v23);

    v39 = v52;
    v53 = sub_29C8BCCF8();

    v54 = sub_29C8BCCF8();

    v55 = [objc_opt_self() donationValueWithEmailAddress:v53 label:v54 origin:v39];

    v40 = v55;
    MEMORY[0x29ED48BE0]();
    if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_33:
      sub_29C8BCD68();

      return;
    }

LABEL_37:
    sub_29C8BCD58();
    goto LABEL_33;
  }

LABEL_40:

  __break(1u);
}

id sub_29C8B9C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v5 = sub_29C8BA13C(&qword_2A1796130, &qword_29C8BD388);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v25 - v9;
  if (qword_2A1A11750 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A117B0;
  v11 = OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_donationDate;
  v12 = sub_29C8BCCE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(v10, v4 + v11, v12);
  v15 = *(v13 + 56);
  v15(v10, 0, 1, v12);
  v14(v8, v4 + OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_expirationDate, v12);
  v15(v8, 0, 1, v12);
  v26 = sub_29C8BCCF8();
  v16 = sub_29C8BCCF8();
  v17 = sub_29C8BCCF8();
  v18 = *(v13 + 48);
  v19 = 0;
  if (v18(v10, 1, v12) != 1)
  {
    v19 = sub_29C8BCCB8();
    (*(v13 + 8))(v10, v12);
  }

  if (v18(v8, 1, v12) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_29C8BCCB8();
    (*(v13 + 8))(v8, v12);
  }

  v21 = objc_allocWithZone(MEMORY[0x29EDC0C00]);
  v22 = v26;
  v23 = [v21 initWithBundleIdentifier:v26 donationIdentifier:v16 clusterIdentifier:v17 donationDate:v19 expirationDate:v20];

  return v23;
}

id sub_29C8B9F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountPropertyParser(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountPropertyParser(uint64_t a1)
{
  result = qword_2A1A11740;
  if (!qword_2A1A11740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29C8BA0AC(uint64_t a1)
{
  result = sub_29C8BCCE8();
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

uint64_t sub_29C8BA13C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_29C8BA184(uint64_t a1)
{
  v2 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C8BA1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29C8BA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_29C8BA2A0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_29C8BAC08();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x29ED48C30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x29ED48C30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_29C8BCD78();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_29C8BCD78();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_29C8BCDA8();
  }

  result = sub_29C8BCDA8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

id sub_29C8BA610()
{
  [*&v0[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] pluginUnloaded];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29C8BA708(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29C8BA834(id a1, id a2)
{
  v3 = v2;
  v6 = sub_29C8BCCE8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v26 - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger];
    if (a2)
    {
      [v13 accountChanged_];
      a2 = a2;
      a1 = a1;
      sub_29C8BCCD8();
      sub_29C8BCCC8();
      v14 = type metadata accessor for AccountPropertyParser(0);
      v15 = objc_allocWithZone(v14);
      v27 = v2;
      v16 = *(v7 + 16);
      v16(&v15[OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_donationDate], v12, v6);
      v16(&v15[OBJC_IVAR____TtC22DonationAccountWatcher21AccountPropertyParser_expirationDate], v10, v6);
      v28.receiver = v15;
      v28.super_class = v14;
      v17 = objc_msgSendSuper2(&v28, sel_init);
      v18 = *(v7 + 8);
      v18(v10, v6);
      v18(v12, v6);
      v3 = v27;
      sub_29C8B94F0(a2);
      v20 = v19;
      sub_29C8B94F0(a1);
      LOBYTE(v14) = sub_29C8BA2A0(v20, v21);

      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      [*&v3[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] accountsDidNotChange];
      return;
    }

    [v13 accountAdded_];
  }

  else
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    [*&v2[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger] accountRemoved_];
  }

LABEL_9:
  v22 = [*&v3[OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_store] changeFromAccount:a2 toAccount:a1];
  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  aBlock[4] = sub_29C8BAB8C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29C8BA708;
  aBlock[3] = &unk_2A23D44B8;
  v24 = _Block_copy(aBlock);
  v25 = v3;

  [v22 addFailureBlock_];
  _Block_release(v24);
}

void sub_29C8BAB8C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22DonationAccountWatcher6Plugin_logger);
  v2 = sub_29C8BCCA8();
  [v1 donationFailedWithError_];
}

uint64_t sub_29C8BABF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29C8BAC08()
{
  result = qword_2A1A11698;
  if (!qword_2A1A11698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A11698);
  }

  return result;
}

uint64_t sub_29C8BAC54()
{
  sub_29C8BA13C(&qword_2A1796218, &unk_29C8BD3F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29C8BD3C0;
  *(v0 + 32) = sub_29C8BAE90;
  *(v0 + 40) = 0;
  if (qword_2A1A11720 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A11710;
  v1 = *algn_2A1A11718;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 48) = sub_29C8BBC44;
  *(v0 + 56) = v3;
  v4 = qword_2A1A11738;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A11728;
  v5 = unk_2A1A11730;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 64) = sub_29C8BBEC0;
  *(v0 + 72) = v7;
  v8 = qword_2A1A116E0;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A116D0;
  v9 = *algn_2A1A116D8;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 80) = sub_29C8BBEC0;
  *(v0 + 88) = v11;
  v12 = qword_2A1A116F8;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A116E8;
  v13 = unk_2A1A116F0;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 96) = sub_29C8BBEC0;
  *(v0 + 104) = v15;
  qword_2A1A117A8 = v0;
}

uint64_t sub_29C8BAE98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29C8BCC98();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29C8BCC88();
  *&v17 = 0x6D614E7473726966;
  *(&v17 + 1) = 0xE900000000000065;
  v8 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v8)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_29C8BBCEC(&v17, &qword_2A1796220, &qword_29C8BD400);
  }

  sub_29C8BCC38();
  *&v17 = 0x656D614E7473616CLL;
  *(&v17 + 1) = 0xE800000000000000;
  v9 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_29C8BBCEC(&v17, &qword_2A1796220, &qword_29C8BD400);
  }

  sub_29C8BCC58();
  sub_29C8BCC28();
  if (v10 || (sub_29C8BCC48(), v11))
  {

    (*(v5 + 32))(a2, v7, v4);
    v12 = 0;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v12 = 1;
  }

  return (*(v5 + 56))(a2, v12, 1, v4);
}

void *sub_29C8BB198()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000012;
  result[4] = 0x800000029C8BD610;
  qword_2A1A11710 = sub_29C8BBEBC;
  *algn_2A1A11718 = result;
  return result;
}

uint64_t sub_29C8BB20C()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  *(result + 16) = v0;
  strcpy((result + 24), "FullUserName");
  *(result + 37) = 0;
  *(result + 38) = -5120;
  qword_2A1A11728 = sub_29C8BBEB0;
  unk_2A1A11730 = result;
  return result;
}

uint64_t sub_29C8BB284@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  *&v13[0] = a3;
  *(&v13[0] + 1) = a4;

  v7 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_29C8BBCEC(v13, &qword_2A1796220, &qword_29C8BD400);
    v8 = 0;
  }

  sub_29C8BB3A4(v8, x8_0);
}

uint64_t sub_29C8BB3A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29C8BCC98();
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = v6;
    v9 = objc_opt_self();
    v10 = sub_29C8BCCF8();
    v11 = [v9 componentsFromString_];

    sub_29C8BCC78();
    sub_29C8BCC28();
    if (v12 || (sub_29C8BCC48(), v13))
    {

      (*(v17 + 32))(a3, v8, v5);
      return (*(v17 + 56))(a3, 0, 1, v5);
    }

    else
    {
      (*(v17 + 8))(v8, v5);
      return (*(v17 + 56))(a3, 1, 1, v5);
    }
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a3, 1, 1, v5);
  }
}

void *sub_29C8BB588()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000014;
  result[3] = 0x800000029C8BD5F0;
  result[4] = v0;
  result[5] = 0xD000000000000012;
  result[6] = 0x800000029C8BD610;
  qword_2A1A116D0 = sub_29C8BBEC4;
  *algn_2A1A116D8 = result;
  return result;
}

void *sub_29C8BB61C()
{
  v0 = type metadata accessor for AccountPropertyNameParser();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x800000029C8BD5D0;
  result[4] = v0;
  result[5] = 0x656D614E6C6C7546;
  result[6] = 0xE800000000000000;
  qword_2A1A116E8 = sub_29C8BBC70;
  unk_2A1A116F0 = result;
  return result;
}

uint64_t sub_29C8BB6A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v51 = a5;
  v52 = a4;
  v10 = sub_29C8BCC98();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29C8BA13C(&qword_2A1796138, &qword_29C8BD390);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = v45 - v15;
  *&v54 = a2;
  *(&v54 + 1) = a3;

  v17 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  v56[0] = v54;
  v56[1] = v55;
  if (!*(&v55 + 1))
  {
    sub_29C8BBCEC(v56, &qword_2A1796220, &qword_29C8BD400);
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  sub_29C8BA13C(&qword_2A1796228, qword_29C8BD408);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return (*(v11 + 56))(a6, 1, 1, v10);
  }

  v49 = v13;
  v50 = a6;
  v19 = 0;
  v20 = v53;
  v22 = v53 + 64;
  v21 = *(v53 + 64);
  v23 = 1 << *(v53 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v27 = (v11 + 56);
  v45[0] = v11 + 8;
  v47 = (v11 + 32);
  v48 = (v11 + 48);
  v28 = v51;
  if ((v24 & v21) != 0)
  {
    while (1)
    {
LABEL_13:
      v30 = *(*(v20 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!*(v30 + 16))
      {
        goto LABEL_19;
      }

      v31 = sub_29C8BBC74(v52, v28);
      if ((v32 & 1) == 0)
      {

LABEL_19:
        (*v27)(v16, 1, 1, v10);
        goto LABEL_20;
      }

      sub_29C8BBD4C(*(v30 + 56) + 32 * v31, v56);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v46 = v20;
      v33 = *(&v54 + 1);
      v34 = objc_opt_self();
      v45[1] = v33;
      v35 = sub_29C8BCCF8();
      v36 = [v34 componentsFromString_];

      v37 = v49;
      sub_29C8BCC78();

      sub_29C8BCC28();
      if (v38)
      {
        break;
      }

      sub_29C8BCC48();
      v40 = v39;

      if (v40)
      {
        goto LABEL_23;
      }

      (*v45[0])(v37, v10);
      v41 = 1;
LABEL_24:
      v28 = v51;
      v42 = *v27;
      (*v27)(v16, v41, 1, v10);
      v43 = (*v48)(v16, 1, v10);
      v20 = v46;
      if (v43 != 1)
      {

        v44 = v50;
        (*v47)(v50, v16, v10);
        return v42(v44, 0, 1, v10);
      }

LABEL_20:
      v25 &= v25 - 1;
      result = sub_29C8BBCEC(v16, &qword_2A1796138, &qword_29C8BD390);
      if (!v25)
      {
        goto LABEL_9;
      }
    }

LABEL_23:

    (*v47)(v16, v37, v10);
    v41 = 0;
    goto LABEL_24;
  }

LABEL_9:
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      return (*v27)(v50, 1, 1, v10);
    }

    v25 = *(v22 + 8 * v29);
    ++v19;
    if (v25)
    {
      v19 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_29C8BBBE8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccountPropertyNameParser();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_29C8BBC74(uint64_t a1, uint64_t a2)
{
  sub_29C8BCDD8();
  sub_29C8BCD18();
  v4 = sub_29C8BCDE8();

  return sub_29C8BBDA8(a1, a2, v4);
}

uint64_t sub_29C8BBCEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29C8BA13C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29C8BBD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29C8BBDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_29C8BCDB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29C8BBE60()
{

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29C8BBEC8()
{
  sub_29C8BA13C(&qword_2A1796230, &unk_29C8BD450);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29C8BD420;
  *(v0 + 32) = sub_29C8BC118;
  *(v0 + 40) = 0;
  *(v0 + 48) = sub_29C8BC130;
  *(v0 + 56) = 0;
  if (qword_2A1A116A8 != -1)
  {
    swift_once();
  }

  v2 = qword_2A1A11768;
  v1 = unk_2A1A11770;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v0 + 64) = sub_29C8BCA34;
  *(v0 + 72) = v3;
  v4 = qword_2A1A116C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_2A1A11788;
  v5 = unk_2A1A11790;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  *(v0 + 80) = sub_29C8BCC08;
  *(v0 + 88) = v7;
  v8 = qword_2A1A116C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_2A1A11798;
  v9 = unk_2A1A117A0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *(v0 + 96) = sub_29C8BCC08;
  *(v0 + 104) = v11;
  v12 = qword_2A1A116B0;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_2A1A11778;
  v13 = unk_2A1A11780;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v0 + 112) = sub_29C8BCC08;
  *(v0 + 120) = v15;
  qword_2A1A11760 = v0;
}

uint64_t sub_29C8BC148@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

id sub_29C8BC17C(void *a1)
{
  v2 = [a1 accountType];
  if (!v2 || (v3 = v2, v4 = [v2 identifier], v3, !v4) || (v5 = sub_29C8BCD08(), v7 = v6, v4, v17[0] = v5, v17[1] = v7, MEMORY[0x2A1C7C4A8](v8), v16[2] = v17, v9 = sub_29C8BCAE4(sub_29C8BCC0C, v16, &unk_2A23D4460), , (v9 & 1) == 0))
  {
    result = [a1 username];
    if (!result)
    {
      return result;
    }

    v11 = result;
    sub_29C8BCD08();

    v12 = [objc_allocWithZone(MEMORY[0x29EDC0C18]) init];
    v13 = sub_29C8BCCF8();
    v14 = [v12 firstEmailAddressInString_];

    if (v14)
    {
      v15 = sub_29C8BCD08();

      sub_29C8BCD08();
      return v15;
    }
  }

  return 0;
}

uint64_t sub_29C8BC350(void *a1)
{
  strcpy(&v7, "primaryEmail");
  BYTE13(v7) = 0;
  HIWORD(v7) = -5120;
  v2 = [a1 objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_29C8BCD88();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = v6;
      *&v7 = 0x6449656C707061;
      *(&v7 + 1) = 0xE700000000000000;
      v4 = [a1 objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v4)
      {
        sub_29C8BCD88();
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
      }

      v9 = v7;
      v10 = v8;
      if (*(&v8 + 1))
      {
        if (swift_dynamicCast())
        {
LABEL_15:

          return 0;
        }
      }

      else
      {
        sub_29C8BCA7C(&v9);
      }

      if ((sub_29C8BCD38() & 1) == 0)
      {
        sub_29C8BCD08();
        return v3;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_29C8BCA7C(&v9);
  }

  return 0;
}

void *sub_29C8BC564()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000014;
  result[4] = 0x800000029C8BD6B0;
  qword_2A1A11768 = sub_29C8BCC04;
  unk_2A1A11770 = result;
  return result;
}

void *sub_29C8BC5D8()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0x656D614E72657375;
  result[4] = 0xE800000000000000;
  qword_2A1A11788 = sub_29C8BCC04;
  unk_2A1A11790 = result;
  return result;
}

void *sub_29C8BC648()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000011;
  result[4] = 0x800000029C8BD690;
  qword_2A1A11798 = sub_29C8BCC04;
  unk_2A1A117A0 = result;
  return result;
}

void *sub_29C8BC6BC()
{
  v0 = type metadata accessor for AccountPropertyEmailParser();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0xD000000000000015;
  result[4] = 0x800000029C8BD670;
  qword_2A1A11778 = sub_29C8BCA70;
  unk_2A1A11780 = result;
  return result;
}

uint64_t sub_29C8BC730(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 accountType];
  if (!v7 || (v8 = v7, v9 = [v7 identifier], v8, !v9) || (v10 = sub_29C8BCD08(), v12 = v11, v9, *&v24[0] = v10, *(&v24[0] + 1) = v12, MEMORY[0x2A1C7C4A8](v13), v21[2] = v24, v14 = sub_29C8BCAE4(sub_29C8BCB90, v21, &unk_2A23D4460), , (v14 & 1) == 0))
  {
    *&v22 = a3;
    *(&v22 + 1) = a4;

    v15 = [a1 objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_29C8BCD88();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24[0] = v22;
    v24[1] = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v16 = [objc_allocWithZone(MEMORY[0x29EDC0C18]) init];
        v17 = sub_29C8BCCF8();
        v18 = [v16 firstEmailAddressInString_];

        if (v18)
        {
          v19 = sub_29C8BCD08();

          sub_29C8BCD08();
          return v19;
        }
      }
    }

    else
    {
      sub_29C8BCA7C(v24);
    }
  }

  return 0;
}

id sub_29C8BC9D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AccountPropertyEmailParser();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29C8BCA38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_29C8BCA7C(uint64_t a1)
{
  v2 = sub_29C8BA13C(&qword_2A1796220, &qword_29C8BD400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C8BCAE4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_29C8BCBAC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29C8BCDB8() & 1;
  }
}