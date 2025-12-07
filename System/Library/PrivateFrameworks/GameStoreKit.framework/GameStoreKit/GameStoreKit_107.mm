void sub_24F0E2A04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v71, *(v4 + 157), ObjectType, a2);
  v10 = *(v4 + 40);
  if (v10)
  {
    v11 = *(v10 + 123);
    v12 = *(v10 + 120) ^ 1 | v11;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  v66[0] = v71;
  v66[1] = v72;
  v66[2] = v73;
  v66[3] = v74;
  sub_24F0E2128(v66, v67);
  LODWORD(v13) = HIBYTE(v70);
  if (v13 <= 0xFE)
  {
    a3 = v69;
    v65 = v68;
    v10 = v67[4];
    v21 = v67[5];
    v24 = v67[2];
    a2 = v67[3];
    v20 = v70;
    v14 = v67[0];
    a1 = v67[1];
    sub_24E88D2AC(&v71);
    v19 = v65;
    v18 = v24;
    v11 = v14 >> 8;
    v22 = v21 >> 8;
    v23 = v21 & 0xFFFFFFFFFFFF0000;
    goto LABEL_11;
  }

  LOBYTE(v14) = v71;
  v15 = *(&v74 + 5) | (BYTE7(v74) << 16);
  v16 = v15 >> 20;
  if (v15 >> 20 <= 3)
  {
    if (v15 >> 20 > 1)
    {
      if (v16 == 2)
      {
        v14 = sub_24F0E337C();
        a1 = v26;
        sub_24E88D2AC(&v71);
        v20 = 0;
        LOBYTE(v21) = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v11 = v14 >> 8;
        LOBYTE(v13) = 2;
        goto LABEL_11;
      }

      if (v11)
      {
        v40 = sub_24F0E36E4(6);
LABEL_30:
        v14 = v40;
        a1 = v41;
        v45 = sub_24F0E0AA8();
        a2 = v46;
        sub_24E88D2AC(&v71);
        v18 = v45;
LABEL_31:
        v10 = 0;
        a3 = 0;
        v20 = 0;
        LOBYTE(v13) = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v11 = v14 >> 8;
        v19 = 0uLL;
        LOBYTE(v21) = 1;
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    if (!v16)
    {
      v25 = sub_24F0E30C8(a1, a2, a3, 2u);
      v20 = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      LOBYTE(v14) = v25 & 1;
      LOBYTE(v13) = 3;
      goto LABEL_11;
    }

    if ((v71 & 1) == 0)
    {
      v52 = sub_24F0E3474();
      a1 = v53;
      v20 = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      v11 = v52 >> 8;
      LOBYTE(v13) = 7;
      goto LABEL_40;
    }

    if (v10)
    {
      if (*(v10 + 122) == 1)
      {
        v14 = sub_24F0E356C();
        a1 = v38;
        v18 = sub_24F0E0AA8();
        a2 = v39;
        v20 = 0;
        LOBYTE(v21) = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v11 = v14 >> 8;
        LOBYTE(v13) = 8;
        goto LABEL_11;
      }

      if (*(v10 + 16) <= 1u || *(v10 + 16) == 2)
      {
        v57 = sub_24F92CE08();

        if ((v57 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      v14 = sub_24F0E08BC();
      a1 = v59;
      v18 = sub_24F0E0AA8();
      a2 = v60;
      goto LABEL_31;
    }

LABEL_55:
    v58 = sub_24F0E30C8(a1, a2, a3, 0);
    v18 = 0;
    a2 = 0;
    v10 = 0;
    v20 = 0;
    LOBYTE(v21) = 0;
    v23 = 0;
    LOBYTE(v14) = 0;
    v11 = 0;
    LOBYTE(v22) = v58 & 1;
    goto LABEL_56;
  }

  v11 = *(&v71 + 1) | ((*(&v71 + 5) | (BYTE7(v71) << 16)) << 32);
  v13 = v72;
  v64 = *(&v73 + 1);
  v10 = v74;
  if (v15 >> 20 > 5)
  {
    if (v16 == 6)
    {
      v21 = v73;
      v61 = *(&v72 + 1);
      v33 = v73;
      v62 = v13;
      v34 = v13;
      v35 = v61;
      v36 = a2;
      a2 = v21;
      v37 = sub_24F0E30C8(a1, v36, a3, 2u);
      sub_24E88D2AC(&v71);
      v18 = v61;
      a1 = v62;
      v20 = 0;
      v23 = 0;
      LOBYTE(v21) = v10 & 1;
      LOBYTE(v22) = v37 & 1;
      LOBYTE(v13) = 5;
      v10 = v64;
      goto LABEL_11;
    }

    if (v16 == 7)
    {
      v14 = sub_24F0E2828();
      a1 = v17;
      sub_24E88D2AC(&v71);
      v20 = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      v11 = v14 >> 8;
      LOBYTE(v13) = 9;
      goto LABEL_11;
    }

    v42 = v71 | (v11 << 8);
    v43 = v74 | ((*(&v74 + 1) | ((*&v15 & 0xFFFFFFLL) << 32)) << 8);
    v23 = *(&v74 + 1);
    v44 = v72 | *(&v71 + 1) | *(&v72 + 1);
    if (v43 == 0x8000000000000000 && !(v44 | v73 | *(&v73 + 1) | *(&v74 + 1) | v42))
    {
LABEL_28:
      if (v12)
      {
        v40 = sub_24F0E08BC();
        goto LABEL_30;
      }

LABEL_33:
      v51 = sub_24F0E30C8(a1, a2, a3, 2u);
      sub_24E88D2AC(&v71);
      v18 = 0;
      a2 = 0;
      v10 = 0;
      v20 = 0;
      LOBYTE(v21) = 0;
      v23 = 0;
      LOBYTE(v14) = 0;
      v11 = 0;
      LOBYTE(v22) = v51 & 1;
LABEL_56:
      a1 = 1;
      LOBYTE(v13) = 1;
      goto LABEL_11;
    }

    v54 = v44 | v73 | *(&v73 + 1);
    if (v42 != 1 || v54 || v43 != 0x8000000000000000 || *(&v74 + 1))
    {
      if (v42 == 2 && !v54 && v43 == 0x8000000000000000 && !*(&v74 + 1))
      {
        a1 = 0;
        v18 = 0;
        a2 = 0;
        v10 = 0;
        a3 = 0;
        v20 = 0;
        LOBYTE(v21) = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v14) = 0;
        v11 = 0;
        v19 = 0uLL;
        LOBYTE(v13) = 12;
        goto LABEL_11;
      }

      if (v42 != 3 || v54 || v43 != 0x8000000000000000 || *(&v74 + 1))
      {
        goto LABEL_28;
      }

      v52 = sub_24F0E36E4(12);
      a1 = v56;
      v20 = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      v11 = v52 >> 8;
      LOBYTE(v13) = 11;
    }

    else
    {
      v52 = sub_24F0E3284();
      a1 = v55;
      v20 = 0;
      LOBYTE(v21) = 0;
      LOBYTE(v22) = 0;
      v23 = 0;
      v11 = v52 >> 8;
      LOBYTE(v13) = 6;
    }

LABEL_40:
    LOBYTE(v14) = v52;
    goto LABEL_11;
  }

  if (v16 == 4)
  {
    LOBYTE(v21) = v74 & 1;
    v27 = v73;
    v28 = v73;
    v29 = v13;
    v30 = a1;
    a1 = v13;
    v31 = a2;
    a2 = v27;
    v32 = sub_24F0E30C8(v30, v31, a3, 2u);
    sub_24E88D2AC(&v71);
    v18 = 0;
    v20 = 0;
    v23 = 0;
    LOBYTE(v22) = v32 & 1;
    LOBYTE(v13) = 1;
    v10 = v64;
  }

  else
  {
    v21 = v73;
    v47 = v73;
    v63 = v13;
    v48 = v13;
    v49 = a2;
    a2 = v21;
    v50 = sub_24F0E30C8(a1, v49, a3, 2u);
    sub_24E88D2AC(&v71);
    v18 = 0;
    v20 = 0;
    v23 = 0;
    LOBYTE(v21) = v10 & 1;
    a1 = v63;
    v10 = v64;
    LOBYTE(v22) = v50 & 1;
    LOBYTE(v13) = 4;
  }

LABEL_11:
  *a4 = v14 | (v11 << 8);
  *(a4 + 8) = a1;
  *(a4 + 16) = v18;
  *(a4 + 24) = a2;
  *(a4 + 32) = v10;
  *(a4 + 40) = v23 | v21 | (v22 << 8);
  *(a4 + 48) = v19;
  *(a4 + 64) = a3;
  *(a4 + 72) = v20;
  *(a4 + 73) = v13;
}

uint64_t sub_24F0E30C8(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (*(v4 + 156) != 1)
  {
    goto LABEL_10;
  }

  v19 = v4;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 56);
  if (v8(ObjectType, a2))
  {
    v9 = swift_getObjectType();
    (*(a2 + 8))(&v22, ObjectType, a2);
    v20 = v22;
    v21 = v23;
    v10.underlyingAdamID._countAndFlagsBits = &v20;
    v10.underlyingAdamID._object = v9;
    v11 = AppStateController.isLocalApplication(for:)(v10);
    swift_unknownObjectRelease();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (a3 == 2)
  {
    v12 = *(v19 + 40);
    if (v12 && (*(v12 + 120) & 1) != 0 || v8(ObjectType, a2) && (v14 = v13, v15 = swift_getObjectType(), (*(a2 + 8))(&v22, ObjectType, a2), v20 = v22, v21 = v23, v16 = (*(v14 + 96))(&v20, a4, v15, v14), swift_unknownObjectRelease(), , (v16 & 1) != 0))
    {
      a3 = 1;
      return a3 & 1;
    }

LABEL_10:
    a3 = 0;
  }

  return a3 & 1;
}

uint64_t sub_24F0E3284()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(8);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA651F0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v8._object = 0x800000024FA651F0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA651F0;
  }

  v10 = 0xD00000000000001CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E337C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(5);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA5BAA0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x800000024FA5BAA0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA5BAA0;
  }

  v10 = 0xD000000000000018;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E3474()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_24E76DB58(7);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x800000024FA5BA60;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001BLL;
      v8._object = 0x800000024FA5BA60;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x800000024FA5BA60;
  }

  v10 = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_24F0E356C()
{
  result = 0x6C69662E6C6C6562;
  v2 = *(v0 + 40);
  if (v2 && *(v2 + 122) == 1)
  {
    if (*(v2 + 16) > 1u)
    {
      if (*(v2 + 16) != 2)
      {

        goto LABEL_12;
      }

      v3 = 0x6C69662E6C6C6562;
    }

    else
    {
      v3 = 0x6C69662E6C6C6562;
    }

    v4 = sub_24F92CE08();

    if ((v4 & 1) == 0)
    {
      v5 = *(v2 + 80);
      if (!*(v5 + 16))
      {
        return v3;
      }

      v6 = sub_24E76DB58(0);
      if ((v7 & 1) == 0)
      {
LABEL_15:

        return v3;
      }

LABEL_14:
      v3 = *(*(v5 + 56) + 16 * v6);

      goto LABEL_15;
    }

LABEL_12:
    result = 0x72616D6B63656863;
    v5 = *(v2 + 80);
    if (!*(v5 + 16))
    {
      return result;
    }

    v3 = 0x72616D6B63656863;

    v6 = sub_24E76DB58(15);
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24F0E36E4(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 72);
    if (*(v3 + 16))
    {

      v5 = sub_24E76DB58(a1);
      if (v6)
      {
        v7 = *(*(v3 + 56) + 16 * v5);

        return v7;
      }
    }
  }

  return sub_24F0E08BC();
}

void sub_24F0E3770(_OWORD *a1)
{
  v3 = *(v1 + 328);
  v9[2] = *(v1 + 312);
  v10[0] = v3;
  *(v10 + 10) = *(v1 + 338);
  v4 = *(v1 + 296);
  v9[0] = *(v1 + 280);
  v9[1] = v4;
  v5 = a1[3];
  *(v1 + 312) = a1[2];
  *(v1 + 328) = v5;
  *(v1 + 338) = *(a1 + 58);
  v6 = a1[1];
  *(v1 + 280) = *a1;
  *(v1 + 296) = v6;
  sub_24E601704(v9, &qword_27F234EF8, &unk_24F9B5488);
  if (*(v1 + 273))
  {
    v7 = *(v1 + 158);
    *(v1 + 158) = 0;
    sub_24EF7172C(a1, v8);
    sub_24F0E0324(v7);
  }

  else
  {
    sub_24EF7172C(a1, v8);
  }

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

BOOL sub_24F0E3824()
{
  if (*(v0 + 273) >= 3u)
  {
    v1 = 3;
  }

  else
  {
    v1 = *(v0 + 273);
  }

  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v5[0] = v1;
  v2 = RestrictionsProtocol.doesAllow(_:properties:)(v5, *(v0 + 40));
  if (v2)
  {
    if (qword_27F2105D0 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F22D7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F928448();
    v6 = &type metadata for RestrictionsCheckIntent;
    v5[0] = v1;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283A8();
    sub_24F92A588();
  }

  return !v2;
}

void sub_24F0E3A20(unint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 216);
  v6 = *(v1 + 248);
  v55[2] = *(v1 + 232);
  v56[0] = v6;
  *(v56 + 10) = *(v1 + 258);
  v55[0] = *(v1 + 200);
  v55[1] = v5;
  v7 = *(v1 + 40);
  sub_24EF7172C(v55, &v52);
  sub_24F0E15B8(v55, v7, &v52);
  sub_24EF71698(v55);
  v8 = *(v2 + 32);
  if (!v8 || v52 == 5)
  {
    sub_24E97D004(v53, v54);
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v50 = v53;
  v51 = v54;
  Strong = *(v2 + 128);
  v9 = *(v2 + 136);

  if (sub_24F0E26CC(Strong, v9))
  {
    type metadata accessor for OfferStateAction(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      type metadata accessor for CompoundAction(0);
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
        v48 = v8;
        v49 = a1;
        v46 = v9;
        v47 = Strong;
        if (v14 >> 62)
        {
LABEL_135:
          v15 = sub_24F92C738();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              MEMORY[0x253052270](v16, v14);
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_133;
              }

              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            v18 = swift_dynamicCastClass();
            if (v18)
            {
              break;
            }

            ++v16;
            if (v17 == v15)
            {
              goto LABEL_21;
            }
          }

          v12 = v18;
        }

        else
        {
LABEL_21:

          v12 = 0;
        }

        v8 = v48;
        a1 = v49;
        v9 = v46;
        Strong = v47;
      }

      else
      {
        v12 = 0;
      }
    }

    if (sub_24F0E3824())
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
      v20 = *(v12 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_restrictedAction);
      if (v20)
      {
        *a1 = v20;
        if (Strong)
        {
          ObjectType = swift_getObjectType();

          swift_unknownObjectRetain();

          sub_24E97D004(v50, v51);
        }

        else
        {

          sub_24E97D004(v50, v51);
          ObjectType = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        *(a1 + 8) = Strong;
        *(a1 + 32) = ObjectType;
        goto LABEL_70;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
    }

    v22 = *(v19 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_openAction);
    if (v22)
    {
      type metadata accessor for SheetAction(0);
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = swift_getObjectType();
LABEL_67:

          sub_24E97D004(v50, v51);
          *a1 = v22;
          *(a1 + 8) = Strong;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = v23;
LABEL_70:
          *(a1 + 40) = 2;
          return;
        }
      }

      else if (Strong)
      {
        v23 = swift_getObjectType();
        swift_unknownObjectRetain();
        goto LABEL_67;
      }

      v23 = 0;
      goto LABEL_67;
    }
  }

LABEL_37:
  v24 = *(v2 + 273);
  if (v24 <= 5)
  {
    if (v24 - 1 >= 4)
    {
      if (*(v2 + 273))
      {
        goto LABEL_116;
      }

      type metadata accessor for OfferConfirmationAction(0);
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        if (*(v2 + 158) == 1)
        {
          v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction);
          if (Strong)
          {
            v4 = swift_getObjectType();
            swift_unknownObjectRetain();

            v33 = 0;
          }

          else
          {

            v33 = 0;
            v4 = 0;
          }
        }

        else
        {
          v32 = *(v31 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_confirmationInitiationAction);

          v33 = 1;
          Strong = v2;
        }

        sub_24E97D004(v50, v51);
        v8 = v32;
        goto LABEL_145;
      }

      goto LABEL_139;
    }

    goto LABEL_45;
  }

  if (*(v2 + 273) > 9u)
  {
    if (v24 == 10)
    {
      goto LABEL_139;
    }

    if (v24 != 11)
    {
      goto LABEL_116;
    }

LABEL_45:
    type metadata accessor for OfferConfirmationAction(0);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v26 = *(v27 + OBJC_IVAR____TtC12GameStoreKit23OfferConfirmationAction_buyAction);
      if (Strong)
      {
        v4 = swift_getObjectType();
        swift_unknownObjectRetain();
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_62;
    }

    type metadata accessor for OfferStateAction(0);
    if (swift_dynamicCastClass() && Strong)
    {

      v28 = swift_unknownObjectRetain();
      OfferStateAction.preferredAction(for:)(v28, v9);
      type metadata accessor for SheetAction(0);
      if (swift_dynamicCastClass())
      {

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v4 = swift_getObjectType();

          swift_unknownObjectRelease();
LABEL_101:
          sub_24E97D004(v50, v51);
          v33 = 2;
          Strong = v30;
          goto LABEL_145;
        }

        swift_unknownObjectRelease();
        goto LABEL_127;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for CompoundAction(0);
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v47 = Strong;
      v35 = *(v34 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
      v52 = MEMORY[0x277D84F90];
      if (v35 >> 62)
      {
        v14 = sub_24F92C738();
      }

      else
      {
        v14 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v8;
      v49 = a1;

      if (v14)
      {
        v36 = 0;
        v4 = v35 & 0xC000000000000001;
        v37 = MEMORY[0x277D84F90];
        v46 = v9;
        while (2)
        {
          v38 = v36;
          while (1)
          {
            if (v4)
            {
              MEMORY[0x253052270](v38, v35);
              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_131;
              }
            }

            else
            {
              if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_132;
              }

              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }
            }

            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v38;
            if (v36 == v14)
            {
              v9 = v46;
              goto LABEL_92;
            }
          }

          MEMORY[0x253050F00]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          v37 = v52;
          v9 = v46;
          if (v36 != v14)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v37 = MEMORY[0x277D84F90];
      }

LABEL_92:
      v39 = v37;
      if (v37 >> 62)
      {
        v8 = v48;
        a1 = v49;
        if (sub_24F92C738())
        {
          goto LABEL_94;
        }
      }

      else
      {
        v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = v48;
        a1 = v49;
        if (v40)
        {
LABEL_94:
          if ((v39 & 0xC000000000000001) != 0)
          {
            MEMORY[0x253052270](0, v39);
          }

          else
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_148;
            }
          }

          if (!Strong)
          {

LABEL_120:

LABEL_142:
            sub_24E97D004(v50, v51);
            goto LABEL_143;
          }

          v41 = swift_unknownObjectRetain();
          OfferStateAction.preferredAction(for:)(v41, v9);
          type metadata accessor for SheetAction(0);
          if (swift_dynamicCastClass())
          {

            swift_beginAccess();
            v42 = swift_unknownObjectWeakLoadStrong();
            if (v42)
            {
              v30 = v42;
              v4 = swift_getObjectType();

              swift_unknownObjectRelease();

              goto LABEL_101;
            }

            swift_unknownObjectRelease();

LABEL_127:
            sub_24E97D004(v50, v51);
            Strong = 0;
LABEL_143:
            v4 = 0;
            goto LABEL_144;
          }

          swift_unknownObjectRelease();

LABEL_140:
          v4 = swift_getObjectType();
          swift_unknownObjectRetain();
          goto LABEL_141;
        }
      }
    }

LABEL_139:
    if (!Strong)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (v24 - 6 < 2 || v24 != 8)
  {
    goto LABEL_45;
  }

  type metadata accessor for OfferStateAction(0);
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    type metadata accessor for CompoundAction(0);
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v14 = *(v43 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions);
      v49 = a1;
      if (!(v14 >> 62))
      {
        v44 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_105;
      }

LABEL_148:
      v44 = sub_24F92C738();
LABEL_105:

      if (!v44)
      {
LABEL_123:

        sub_24E97D004(v50, v51);

        Strong = 0;
        v8 = 0;
        v4 = 0;
        v33 = 0;
        a1 = v49;
        goto LABEL_145;
      }

      v45 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x253052270](v45, v14);
          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v45 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v4 = *(v14 + 8 * v45 + 32);

          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }
        }

        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v45;
        if (a1 == v44)
        {
          goto LABEL_123;
        }
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v49;
      if (Strong)
      {
        v4 = swift_getObjectType();

LABEL_141:
        sub_24E97D004(v50, v51);
LABEL_144:
        v33 = 2;
        goto LABEL_145;
      }

      goto LABEL_120;
    }

LABEL_116:

    sub_24E97D004(v50, v51);
    Strong = 0;
    v8 = 0;
    v4 = 0;
    v33 = 0;
    goto LABEL_145;
  }

  v26 = *(v25 + OBJC_IVAR____TtC12GameStoreKit16OfferStateAction_defaultAction);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_24E97D004(v50, v51);
    v4 = 0;
    goto LABEL_63;
  }

  v4 = swift_getObjectType();
LABEL_62:

  sub_24E97D004(v50, v51);
LABEL_63:
  v33 = 2;
  v8 = v26;
LABEL_145:
  *a1 = v8;
  *(a1 + 8) = Strong;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = v33;
}

uint64_t sub_24F0E4550()
{
  v1 = v0;
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_24F927E88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  sub_24F0E3A20(&v61);
  if (v61)
  {
    v55 = v61;
    v56[0] = *v62;
    *(v56 + 9) = *&v62[9];
    v13 = *(v0 + 40);
    if (v13)
    {
      v14 = *(v13 + 32);
      v49 = *(v13 + 24);
      v15 = qword_27F210FF8;
      v50 = v14;
      v51 = v1;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v6, qword_27F23C300);
      v17 = *(v7 + 16);
      v17(v12, v16, v6);
      v18 = sub_24F92B858();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      v17(v9, v12, v6);
      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      (*(v7 + 32))(v21 + v19, v9, v6);
      v22 = (v21 + v20);
      v23 = v50;
      *v22 = v49;
      v22[1] = v23;
      sub_24F1F2908(0, 0, v5, &unk_24FA0A150, v21);

      sub_24E601704(v5, &unk_27F21B570, &qword_24F93B020);
      (*(v7 + 8))(v12, v6);
      v1 = v51;
    }

    if (qword_27F210578 != -1)
    {
      swift_once();
    }

    v24 = sub_24F92AAE8();
    __swift_project_value_buffer(v24, qword_27F39C3C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v25 = sub_24F0E89A4(&v55, &v61);
    v26 = (*(*v61 + 192))(v25);
    v28 = v27;

    *(&v58 + 1) = MEMORY[0x277D837D0];
    *&v57 = v26;
    *(&v57 + 1) = v28;
    sub_24F9283D8();
    sub_24E601704(&v57, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v61 + 8, &qword_27F2129B0, &unk_24F945320);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = v1;
      v30 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 8);
      v1 = v29;
      (*(v32 + 8))(v55, &v55 + 8, ObjectType);
      swift_unknownObjectRelease();
    }

    sub_24F0E89A4(&v55, &v61);

    v33 = v62[24];
    sub_24E601704(&v61 + 8, &qword_27F2129B0, &unk_24F945320);
    if (v33 == 2)
    {
      return sub_24E601704(&v55, &qword_27F2393D8, &qword_24F9C8E30);
    }

    v34 = *(v1 + 158);
    *(v1 + 158) = v33 & 1;
    sub_24F0E0324(v34);
    if (*(v1 + 158) == 1)
    {
      _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
      return sub_24E601704(&v55, &qword_27F2393D8, &qword_24F9C8E30);
    }

    if (!*(v1 + 128))
    {
      return sub_24E601704(&v55, &qword_27F2393D8, &qword_24F9C8E30);
    }

    v37 = *(v1 + 136);
    v38 = (v1 + 200);
    v39 = *(v1 + 273);
    v40 = *(v1 + 241);
    if ((v39 - 4) >= 2 && v39 != 1)
    {
      if (v39 != 3)
      {
        v41 = 2;
        goto LABEL_22;
      }

      v40 = *v38;
    }

    v41 = v40 & 1;
LABEL_22:
    v42 = swift_unknownObjectRetain();
    sub_24F0E2A04(v42, v37, v41, &v57);
    v43 = *(v1 + 248);
    *&v62[16] = *(v1 + 232);
    v63[0] = v43;
    *(v63 + 10) = *(v1 + 258);
    v44 = *(v1 + 216);
    v61 = *v38;
    *v62 = v44;
    v53[2] = *&v62[16];
    v54[0] = v43;
    *(v54 + 10) = *(v63 + 10);
    v53[0] = v61;
    v53[1] = v44;
    *(v1 + 258) = *(v60 + 10);
    v45 = v57;
    v46 = v58;
    v47 = v60[0];
    *(v1 + 232) = v59;
    *(v1 + 248) = v47;
    *v38 = v45;
    *(v1 + 216) = v46;
    sub_24EF7172C(&v61, v52);
    sub_24EF7172C(&v57, v52);
    sub_24EF71698(v53);
    sub_24F0E3770(&v61);
    sub_24EF71698(&v61);
    sub_24EF71698(&v57);
    swift_unknownObjectRelease();
    return sub_24E601704(&v55, &qword_27F2393D8, &qword_24F9C8E30);
  }

  sub_24E601704(&v61, &qword_27F233748, &unk_24F9C8AE0);
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v35 = sub_24F92AAE8();
  __swift_project_value_buffer(v35, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

double sub_24F0E4E78(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F0E8528(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*sub_24F0E4EB4(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F0E4F4C;
}

void sub_24F0E4F4C(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 3);
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_24F0E8528(v6, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F0E8528(v5, v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

uint64_t sub_24F0E4FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v92 = a5;
  v88 = a4;
  v90 = a3;
  v91 = a1;
  v86 = a11;
  v85 = a10;
  v84 = a9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233758, &unk_24F9AEEF0);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v80 - v18;
  v98[3] = a13;
  v98[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v98);
  v20 = *(*(a13 - 8) + 32);
  v80[0] = boxed_opaque_existential_1;
  v80[1] = a13;
  v20(boxed_opaque_existential_1, a6, a13);
  v21 = *a7;
  v22 = a7[1];
  v23 = a7[2];
  v24 = a7[3];
  v25 = a7[4];
  v26 = a7[5];
  v27 = *a8 | (*(a8 + 2) << 32);
  *(a12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a12 + 158) = 0;
  *(a12 + 160) = [objc_opt_self() defaultCenter];
  *(a12 + 168) = 0u;
  v87 = a12 + 168;
  *(a12 + 184) = 0u;
  *(a12 + 280) = 0u;
  *(a12 + 296) = 0u;
  *(a12 + 312) = 0u;
  *(a12 + 328) = 0u;
  *(a12 + 344) = 0;
  *(a12 + 352) = -256;
  *(a12 + 354) = 0;
  *(a12 + 200) = 0;
  *(a12 + 273) = 3;
  v89 = a2;
  *(a12 + 32) = a2;
  v28 = v91;
  *(a12 + 40) = v91;
  *(a12 + 150) = v21;
  *(a12 + 151) = v22;
  *(a12 + 152) = v23;
  *(a12 + 153) = v24;
  *(a12 + 154) = v25;
  *(a12 + 155) = v26;
  if (v27 == 3)
  {
    v93[0] = v21;
    v93[1] = v22;
    v93[2] = v23;
    v93[3] = v24;
    v93[4] = v25;
    v93[5] = v26;
    sub_24E9536D8(v93, &aBlock, 0);
    LOBYTE(v27) = aBlock;
    v29.i32[0] = *(&aBlock + 1);
    v30 = vmovl_u8(v29).u64[0];
    LOBYTE(v31) = BYTE5(aBlock);
  }

  else
  {
    v32 = vdupq_n_s64(v27);
    v30 = vmovn_s32(vuzp1q_s32(vshlq_u64(v32, xmmword_24F99A2D0), vshlq_u64(v32, xmmword_24F99A2C0)));
    v31 = v27 >> 40;
  }

  *(a12 + 144) = v27;
  *(a12 + 145) = vuzp1_s8(v30, v30).u32[0];
  *(a12 + 149) = v31;
  *(a12 + 156) = v84 & 1;
  v33 = v92;
  sub_24E615E00(v92, a12 + 48);
  sub_24E615E00(v98, a12 + 88);
  *(a12 + 159) = v85 & 1;
  *(a12 + 157) = v86 & 1;
  v34 = v88;
  if (v28)
  {
    ObjectType = swift_getObjectType();
    v36 = *(v28 + 32);
    *&aBlock = *(v28 + 24);
    *(&aBlock + 1) = v36;
    v37 = *(v34 + 56);

    swift_retain_n();
    v38 = v37(&aBlock, ObjectType, v34);
    v40 = v39;

    *(a12 + 128) = v38;
    *(a12 + 136) = v40;
    v41 = swift_getObjectType();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = *(v40 + 72);

    v43(a12, sub_24EEFE270, v42, v41, v40);
    v28 = v91;
    v33 = v92;

    v44 = *(v28 + 64);
    if (v44)
    {
      *&aBlock = *(v28 + 56);
      *(&aBlock + 1) = v44;

      v37(&aBlock, ObjectType, v88);
      v46 = v45;

      v47 = swift_getObjectType();
      (*(v46 + 16))(&aBlock, v47, v46);
      if (*&v97[0] >> 60)
      {
        if (*&v97[0] >> 60 != 8)
        {
LABEL_13:
          sub_24E88D2AC(&aBlock);
LABEL_23:
          LOBYTE(v50) = 1;
          goto LABEL_24;
        }

        v48 = *(&v96 + 1) | *(&v97[0] + 1);
        v49 = *(&v95 + 1) | v95 | *(&aBlock + 1);
        if (*&v97[0] != 0x8000000000000000 || v48 | aBlock | v96 | v49)
        {
          if (*&v97[0] == 0x8000000000000000 && aBlock == 4)
          {
            v50 = v48 | v96 | v49;
            if (!v50)
            {
LABEL_24:
              *(a12 + 354) = v50;
              v78 = swift_allocObject();
              swift_weakInit();
              v79 = *(v46 + 72);

              v79(a12, sub_24EEFE348, v78, v47, v46);
              swift_unknownObjectRelease();

              v28 = v91;
              v33 = v92;
              v58 = *(a12 + 128);
              if (!v58)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          goto LABEL_13;
        }
      }

      else if (aBlock != 1)
      {
        goto LABEL_23;
      }

      LOBYTE(v50) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    *(a12 + 128) = 0;
    *(a12 + 136) = 0;

    v51 = sub_24F0E08BC();
    v53 = v52;
    v54 = sub_24F0E0AA8();
    v55 = *(a12 + 248);
    v96 = *(a12 + 232);
    v97[0] = v55;
    *(v97 + 10) = *(a12 + 258);
    v56 = *(a12 + 216);
    aBlock = *(a12 + 200);
    v95 = v56;
    *(a12 + 200) = v51;
    *(a12 + 208) = v53;
    *(a12 + 216) = v54;
    *(a12 + 224) = v57;
    *(a12 + 232) = xmmword_24F9406F0;
    *(a12 + 248) = 0;
    *(a12 + 256) = 0;
    *(a12 + 264) = 0;
    *(a12 + 272) = 0;
    sub_24EF71698(&aBlock);
  }

  v58 = *(a12 + 128);
  if (v58)
  {
LABEL_16:
    v59 = *(a12 + 136);
    v60 = swift_unknownObjectRetain();
    sub_24F0E06F0(v60, v59, 2);
    v61 = v33[3];
    v62 = v33[4];
    __swift_project_boxed_opaque_existential_1(v33, v61);
    (*(v62 + 16))(v61, v62);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = v58;
    v64[4] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DE08, &qword_24F9971C8);
    sub_24E602068(&qword_27F233760, &qword_27F22DE08, &qword_24F9971C8, MEMORY[0x277D21A98]);
    swift_unknownObjectRetain();
    sub_24F9288B8();
    v65 = v81;
    sub_24F9288D8();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*(v82 + 8))(v65, v83);
  }

LABEL_17:
  if (v28 && (*(v28 + 136) & 1) == 0)
  {
    v66 = *(a12 + 160);

    v67 = sub_24F92B098();
    [v66 addObserver:a12 selector:sel_isEnabledDidChange_ name:v67 object:sub_24F92CDE8()];

    swift_unknownObjectRelease();
  }

  v68 = *(a12 + 160);
  v69 = *MEMORY[0x277CEC2F0];
  v70 = objc_opt_self();
  v71 = v68;
  v72 = [v70 mainQueue];
  v73 = swift_allocObject();
  swift_weakInit();
  *&v96 = sub_24EEFE278;
  *(&v96 + 1) = v73;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v95 = sub_24EEFA694;
  *(&v95 + 1) = &block_descriptor_114;
  v74 = _Block_copy(&aBlock);

  v75 = [v71 addObserverForName:v69 object:0 queue:v72 usingBlock:v74];
  _Block_release(v74);

  *(&v95 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();

  *&aBlock = v75;
  __swift_destroy_boxed_opaque_existential_1(v98);
  v76 = v87;
  swift_beginAccess();
  sub_24E8E7708(&aBlock, v76);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return a12;
}

uint64_t sub_24F0E59AC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *a1;
  v10 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = a1[40];
  v16 = a1[41];
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  v19 = *(a1 + 8);
  v20 = a1[72];
  switch(a1[73])
  {
    case 1u:
      if (*(a2 + 73) != 1)
      {
        goto LABEL_66;
      }

      v32 = v9 | (v10 << 8);
      v33 = *(a2 + 41);
      if (v11 == 1)
      {
        if (v4 == 1)
        {
          v34 = a1[41];
          sub_24F0E8910(v3, 1, v6, v5);
          goto LABEL_69;
        }

LABEL_64:
        v70 = v32;
        v71 = v11;
        v72 = v12;
        v73 = v14;
        v74 = v13;
        v75 = v15;
        v76 = v3;
        v77 = v4;
        v78 = v6;
        v79 = v5;
        v80 = v7;
        v81 = v8;
        sub_24EF7172C(a2, &v64);
        sub_24EF7172C(a1, &v64);
        goto LABEL_65;
      }

      if (v4 == 1)
      {
        goto LABEL_64;
      }

      v34 = a1[41];
      v64 = v3;
      v65 = v4;
      v66 = v6;
      v67 = v5;
      v68 = v7;
      v69 = v8 & 1;
      v82[0] = v32;
      v82[1] = v11;
      v82[2] = v12;
      v82[3] = v14;
      v82[4] = v13;
      v83 = v15 & 1;
      v48 = v4;
      v49 = v5;
      v50 = v6;
      sub_24EF7172C(a2, &v70);
      sub_24EF7172C(a1, &v70);
      v51 = sub_24ED2F6DC(v82, &v64);

      sub_24EF71698(a1);
      if (v51)
      {
LABEL_69:
        v31 = v34 ^ v33;
LABEL_70:
        v47 = v31 ^ 1;
        return v47 & 1;
      }

      goto LABEL_66;
    case 2u:
      if (*(a2 + 73) != 2)
      {
        goto LABEL_66;
      }

      goto LABEL_35;
    case 3u:
      if (*(a2 + 73) != 3)
      {
        goto LABEL_66;
      }

      v31 = v9 ^ v3;
      goto LABEL_70;
    case 4u:
      if (*(a2 + 73) != 4)
      {
        goto LABEL_66;
      }

      goto LABEL_32;
    case 5u:
      if (*(a2 + 73) != 5)
      {
        goto LABEL_66;
      }

LABEL_32:
      v35 = a1[41];
      v36 = *(a2 + 41);
      v64 = v9 | (v10 << 8);
      v65 = v11;
      v66 = v12;
      v67 = v14;
      v68 = v13;
      v69 = v15 & 1;
      v70 = v3;
      v71 = v4;
      v72 = v6;
      v73 = v5;
      v74 = v7;
      v75 = v8 & 1;
      if ((sub_24ED2F6DC(&v64, &v70) & 1) == 0)
      {
        goto LABEL_66;
      }

      v31 = v35 ^ v36;
      goto LABEL_70;
    case 6u:
      if (*(a2 + 73) == 6)
      {
        goto LABEL_35;
      }

      goto LABEL_66;
    case 7u:
      if (*(a2 + 73) != 7)
      {
        goto LABEL_66;
      }

      goto LABEL_35;
    case 8u:
      if (*(a2 + 73) != 8)
      {
        goto LABEL_66;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v44 = v5;
        v45 = v6;
        v46 = sub_24F92CE08();
        v6 = v45;
        v5 = v44;
        if ((v46 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      if (!v14)
      {
        goto LABEL_61;
      }

      goto LABEL_49;
    case 9u:
      if (*(a2 + 73) != 9)
      {
        goto LABEL_66;
      }

      goto LABEL_35;
    case 0xAu:
      if (*(a2 + 73) != 10)
      {
        goto LABEL_66;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v40 = v5;
        v41 = v6;
        v42 = sub_24F92CE08();
        v6 = v41;
        v5 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      if (!v14)
      {
LABEL_61:
        if (v5)
        {
          goto LABEL_66;
        }

        goto LABEL_78;
      }

LABEL_49:
      if (v5 && (v12 == v6 && v14 == v5 || (sub_24F92CE08() & 1) != 0))
      {
        goto LABEL_78;
      }

      goto LABEL_66;
    case 0xBu:
      if (*(a2 + 73) != 11)
      {
        goto LABEL_66;
      }

LABEL_35:
      if ((v9 | (v10 << 8)) == v3 && v11 == v4)
      {
        goto LABEL_78;
      }

      return sub_24F92CE08();
    case 0xCu:
      if (*(a2 + 73) != 12)
      {
        goto LABEL_66;
      }

      if (*(a2 + 72))
      {
        goto LABEL_66;
      }

      v30 = vorrq_s8(*(a2 + 40), *(a2 + 56));
      if (v3 | *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v4 | v6 | v5 | v7)
      {
        goto LABEL_66;
      }

      goto LABEL_78;
    default:
      if (*(a2 + 73))
      {
        goto LABEL_66;
      }

      v22 = *(a1 + 23);
      v23 = *(a1 + 42);
      v61 = *(a2 + 48);
      v62 = *(a2 + 56);
      v63 = *(a2 + 40);
      v59 = *(a2 + 64);
      v60 = *(a2 + 72);
      if (__PAIR128__(v11, v9 | (v10 << 8)) != __PAIR128__(v4, v3))
      {
        v57 = a1[41];
        v58 = v5;
        v24 = v6;
        v55 = *(a1 + 42);
        v56 = *(a1 + 23);
        v25 = sub_24F92CE08();
        v23 = v55;
        v22 = v56;
        v16 = v57;
        v5 = v58;
        v6 = v24;
        if ((v25 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      if (!v14)
      {
        if (v5)
        {
          goto LABEL_66;
        }

LABEL_72:
        v52 = (v15 | (v16 << 8) | (v23 << 16) | (v22 << 48));
        if (v52 == 1)
        {
          v53 = v63;
          if (v63 == 1)
          {
LABEL_78:
            v47 = 1;
            return v47 & 1;
          }
        }

        else
        {
          v53 = v63;
          if (v63 != 1)
          {
            v70 = v7;
            v71 = v63;
            v72 = v61;
            v73 = v62;
            v74 = v59;
            v75 = v60 & 1;
            v64 = v13;
            v65 = v52;
            v66 = v17;
            v67 = v18;
            v68 = v19;
            v69 = v20 & 1;
            sub_24F0E8910(v7, v63, v61, v62);
            sub_24F0E8910(v13, v52, v17, v18);
            v54 = sub_24ED2F6DC(&v64, &v70);

            sub_24EF712B4(v13, v52, v17, v18);
            if ((v54 & 1) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_78;
          }
        }

        v70 = v13;
        v71 = v52;
        v72 = v17;
        v73 = v18;
        v74 = v19;
        v75 = v20;
        v76 = v7;
        v77 = v53;
        v78 = v61;
        v79 = v62;
        v80 = v59;
        v81 = v60;
        sub_24F0E8910(v7, v53, v61, v62);
        sub_24F0E8910(v13, v52, v17, v18);
LABEL_65:
        sub_24E601704(&v70, &qword_27F2393D0, &unk_24F9C8E20);
        goto LABEL_66;
      }

      if (v5)
      {
        if (v12 == v6 && v14 == v5)
        {
          goto LABEL_72;
        }

        v26 = v16;
        v27 = v22;
        v28 = v23;
        v29 = sub_24F92CE08();
        v23 = v28;
        v22 = v27;
        v16 = v26;
        if (v29)
        {
          goto LABEL_72;
        }
      }

LABEL_66:
      v47 = 0;
      return v47 & 1;
  }
}

void _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  if ((sub_24F0E11FC() & 1) == 0)
  {
    v2 = *(v0 + 216);
    v3 = (v0 + 200);
    v4 = *(v0 + 248);
    v389[2] = *(v0 + 232);
    v390[0] = v4;
    v389[0] = *(v0 + 200);
    v389[1] = v2;
    *(v390 + 10) = *(v0 + 258);
    v5 = *(v0 + 40);
    sub_24EF7172C(v389, &v385);
    sub_24F0E15B8(v389, v5, &v385);
    sub_24EF71698(v389);
    v6 = v385;
    v7 = BYTE1(v385);
    v8 = *(&v385 + 1);
    v9 = v386;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_54:
      sub_24E97D004(v8, v9);
      return;
    }

    v362 = v5;
    v366 = v6;
    v372 = v7;
    v10 = *(v1 + 216);
    v381 = *v3;
    v382 = v10;
    v11 = *(v1 + 248);
    v383 = *(v1 + 232);
    *&v384[10] = *(v1 + 258);
    v374 = *(v1 + 24);
    *v384 = v11;
    v12 = v381;
    v13 = *(&v381 + 1) | ((*(&v381 + 5) | (BYTE7(v381) << 16)) << 32);
    v14 = *(&v381 + 1);
    v15 = BYTE9(v383);
    switch(v384[25])
    {
      case 1:
        v81 = v8;
        ObjectType = swift_getObjectType();
        v83 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v83;
        *(v388 + 10) = *(v1 + 258);
        v84 = *(v1 + 216);
        v385 = *v3;
        v386 = v84;
        sub_24EF7172C(&v385, &v377);
        v85 = sub_24F0DF09C();
        v87 = v86;
        sub_24EF71698(&v385);
        v88 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v88;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v347 = v81;
        v378 = v81;
        v379 = v9;
        v31 = v374;
        (*(v374 + 80))(v85, v87, &v375, &v377, v15 & 1, ObjectType, v374);

        if (!*(v1 + 128))
        {
          goto LABEL_62;
        }

        v89 = *(v1 + 136);
        v90 = swift_getObjectType();
        v91 = *(v89 + 16);
        swift_unknownObjectRetain();
        v91(&v377, v90, v89);
        v92 = v380;
        sub_24E88D2AC(&v377);
        if (v92 >> 60 == 4)
        {
          if (v362 && *(v362 + 208) == 1)
          {

            v93._countAndFlagsBits = 0xD000000000000018;
            v93._object = 0x800000024FA62940;
            v94 = localizedStringForAdsLanguage(_:)(v93);

            object = v94._object;
            countAndFlagsBits = v94._countAndFlagsBits;
          }

          else
          {
            v172._countAndFlagsBits = 0xD000000000000018;
            v172._object = 0x800000024FA62940;
            v173._countAndFlagsBits = 0;
            v173._object = 0xE000000000000000;
            v174 = localizedString(_:comment:)(v172, v173);
            object = v174._object;
            countAndFlagsBits = v174._countAndFlagsBits;
          }

          v31 = v374;
          (*(v374 + 128))(countAndFlagsBits, object, ObjectType, v374);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v31 = v374;
LABEL_62:
          if (v362 && *(v362 + 208) == 1)
          {

            v165._object = 0x800000024FA59D50;
            v165._countAndFlagsBits = 0xD00000000000001CLL;
            v166 = localizedStringForAdsLanguage(_:)(v165);

            v167 = v166._object;
            v168 = v166._countAndFlagsBits;
          }

          else
          {
            v169._object = 0x800000024FA59D50;
            v169._countAndFlagsBits = 0xD00000000000001CLL;
            v170._countAndFlagsBits = 0;
            v170._object = 0xE000000000000000;
            v171 = localizedString(_:comment:)(v169, v170);
            v167 = v171._object;
            v168 = v171._countAndFlagsBits;
          }

          (*(v31 + 128))(v168, v167, ObjectType, v31);
        }

        (*(v31 + 144))(0x6F6C6E776F646572, 0xEA00000000006461, ObjectType, v31);
        v8 = v347;
        goto LABEL_53;
      case 2:
        v55 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v56 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v56;
        *(v388 + 10) = *(v1 + 258);
        v57 = *(v1 + 216);
        v385 = *v3;
        v386 = v57;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v58 = sub_24F0DF09C();
        v59 = v14;
        v61 = v60;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v55, v59, v58, v61, &v377, v24, v374);

        (*(v31 + 128))(v55, v59, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x657461647075;
        goto LABEL_51;
      case 3:
        v62 = swift_getObjectType();
        v63 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v63;
        *(v388 + 10) = *(v1 + 258);
        v64 = *(v1 + 216);
        v385 = *v3;
        v386 = v64;
        sub_24EF7172C(&v385, &v377);
        v65 = sub_24F0DF09C();
        v67 = v66;
        sub_24EF71698(&v385);
        v68 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v68;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 56))(v65, v67, &v375, &v377, v12 & 1, v62, v374);

        if (v362 && *(v362 + 208) == 1)
        {

          v69._countAndFlagsBits = 0xD000000000000022;
          v69._object = 0x800000024FA6BA10;
          v70 = localizedStringForAdsLanguage(_:)(v69);

          v71 = v70._object;
          v72 = v70._countAndFlagsBits;
        }

        else
        {
          v134._countAndFlagsBits = 0xD000000000000022;
          v134._object = 0x800000024FA6BA10;
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          v136 = localizedString(_:comment:)(v134, v135);
          v71 = v136._object;
          v72 = v136._countAndFlagsBits;
        }

        (*(v374 + 128))(v72, v71, v62, v374);
        (*(v374 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v62, v374);
        goto LABEL_53;
      case 4:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v34 = v381 | (v13 << 8);
        v35 = swift_getObjectType();
        v36 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v36;
        *(v388 + 10) = *(v1 + 258);
        v37 = *(v1 + 216);
        v385 = *v3;
        v386 = v37;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v38 = sub_24F0DF09C();
        v40 = v39;
        sub_24EF71698(&v385);
        v41 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v41;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v38, v40, &v375, &v377, v15 & 1, v35, v374, v34);

        if (v362 && *(v362 + 208) == 1)
        {

          v42._object = 0x800000024FA5BA40;
          v42._countAndFlagsBits = 0xD00000000000001CLL;
          v43 = localizedStringForAdsLanguage(_:)(v42);

          v44 = v43._object;
          v45 = v43._countAndFlagsBits;
        }

        else
        {
          v131._object = 0x800000024FA5BA40;
          v131._countAndFlagsBits = 0xD00000000000001CLL;
          v132._countAndFlagsBits = 0;
          v132._object = 0xE000000000000000;
          v133 = localizedString(_:comment:)(v131, v132);
          v44 = v133._object;
          v45 = v133._countAndFlagsBits;
        }

        (*(v374 + 128))(v45, v44, v35, v374);
        (*(v374 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v35, v374);
        goto LABEL_43;
      case 5:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v97 = v381 | (v13 << 8);
        v98 = swift_getObjectType();
        v99 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v99;
        *(v388 + 10) = *(v1 + 258);
        v100 = *(v1 + 216);
        v385 = *v3;
        v386 = v100;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v101 = sub_24F0DF09C();
        v103 = v102;
        sub_24EF71698(&v385);
        v104 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v104;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v101, v103, &v375, &v377, v15 & 1, v98, v374, v97);

        if (v362 && *(v362 + 208) == 1)
        {

          v105._object = 0x800000024FA5BA40;
          v105._countAndFlagsBits = 0xD00000000000001CLL;
          v106 = localizedStringForAdsLanguage(_:)(v105);

          v107 = v106._object;
          v108 = v106._countAndFlagsBits;
        }

        else
        {
          v137._object = 0x800000024FA5BA40;
          v137._countAndFlagsBits = 0xD00000000000001CLL;
          v138._countAndFlagsBits = 0;
          v138._object = 0xE000000000000000;
          v139 = localizedString(_:comment:)(v137, v138);
          v107 = v139._object;
          v108 = v139._countAndFlagsBits;
        }

        (*(v374 + 128))(v108, v107, v98, v374);
        (*(v374 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v98, v374);
LABEL_43:

        goto LABEL_53;
      case 6:
        v109 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v110 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v110;
        *(v388 + 10) = *(v1 + 258);
        v111 = *(v1 + 216);
        v385 = *v3;
        v386 = v111;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v112 = sub_24F0DF09C();
        v113 = v14;
        v115 = v114;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v109, v113, v112, v115, &v377, v24, v374);

        (*(v31 + 128))(v109, v113, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x64616F6C6E776F64;
        goto LABEL_29;
      case 7:
        v73 = v381 | (v13 << 8);
        v74 = swift_getObjectType();
        v75 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v75;
        *(v388 + 10) = *(v1 + 258);
        v76 = *(v1 + 216);
        v385 = *v3;
        v386 = v76;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v77 = sub_24F0DF09C();
        v78 = v14;
        v80 = v79;
        sub_24EF71698(&v385);
        LOBYTE(v377) = 5;
        BYTE1(v377) = v372;
        v378 = 0;
        v379 = 0;
        v31 = v374;
        (*(v374 + 32))(v73, v78, v77, v80, &v377, v74, v374);

        sub_24E97D004(v378, v379);
        (*(v31 + 128))(v73, v78, v74, v31);
        (*(v374 + 144))(0x6573616863727570, 0xE900000000000064, v74, v374);
        goto LABEL_53;
      case 8:
        if (*(v1 + 159) == 1)
        {
          if (v362)
          {
            v127 = *(&v381 + 1);
            if (*(v362 + 126) == 2)
            {
              v353 = v381 | (v13 << 8);
              v128 = *(&v382 + 1);
              if (*(v362 + 208) == 1)
              {
                sub_24EF7172C(&v381, &v385);

                v129._countAndFlagsBits = 0xD00000000000002DLL;
                v129._object = 0x800000024FA6B9E0;
                v130 = localizedStringForAdsLanguage(_:)(v129);
                v344 = v130._countAndFlagsBits;
                v361 = v130._object;
              }

              else
              {

                v230._countAndFlagsBits = 0xD00000000000002DLL;
                v230._object = 0x800000024FA6B9E0;
                v231._countAndFlagsBits = 0;
                v231._object = 0xE000000000000000;
                v232 = localizedString(_:comment:)(v230, v231);
                v344 = v232._countAndFlagsBits;
                v361 = v232._object;
              }

              v197 = v374;
              v194 = v366;
              v195 = 0;
              v198 = v128;
              if (v372 == 3 || v372 == 6)
              {
                v194 = 0;
                v196 = 0;
              }

              else if (v372 == 8)
              {
                v357 = v128;
                if (qword_27F210200 != -1)
                {
                  swift_once();
                }

                v233 = qword_27F2287C0;
                v234 = objc_opt_self();
                v195 = v233;
                v196 = [v234 whiteColor];
                v194 = 5;
                v198 = v357;
              }

              else
              {
                sub_24E9534EC(v8, v9);
                v198 = v128;
                v195 = v8;
                v196 = v9;
              }

              goto LABEL_131;
            }

            v175 = *(v362 + 121);
          }

          else
          {
            v127 = *(&v381 + 1);
            v175 = 0;
          }

          if (v372 == 6 || v372 == 3)
          {
            v353 = v381 | (v13 << 8);
            v355 = *(&v382 + 1);
            if (v362 && (*(v362 + 208) & 1) != 0)
            {
              sub_24EF7172C(&v381, &v385);

              v189._object = 0x800000024FA6B9C0;
              v189._countAndFlagsBits = 0xD00000000000001CLL;
              v190 = localizedStringForAdsLanguage(_:)(v189);
              v344 = v190._countAndFlagsBits;
              v361 = v190._object;

              if ((v175 & 1) == 0)
              {
                goto LABEL_101;
              }
            }

            else
            {

              v191._object = 0x800000024FA6B9C0;
              v191._countAndFlagsBits = 0xD00000000000001CLL;
              v192._countAndFlagsBits = 0;
              v192._object = 0xE000000000000000;
              v193 = localizedString(_:comment:)(v191, v192);
              v344 = v193._countAndFlagsBits;
              v361 = v193._object;
              if ((v175 & 1) == 0)
              {
                if (!v362)
                {
                  v346 = v9;
                  v349 = v8;
                  goto LABEL_138;
                }

LABEL_101:
                v346 = v9;
                v349 = v8;
                if (*(v362 + 208) == 1)
                {

                  v226._object = 0x800000024FA6B9C0;
                  v226._countAndFlagsBits = 0xD00000000000001CLL;
                  v227 = localizedStringForAdsLanguage(_:)(v226);
                  v228 = v227._countAndFlagsBits;
                  v229 = v227._object;

                  goto LABEL_139;
                }

LABEL_138:
                v278._object = 0x800000024FA6B9C0;
                v278._countAndFlagsBits = 0xD00000000000001CLL;
                v279._countAndFlagsBits = 0;
                v279._object = 0xE000000000000000;
                v280 = localizedString(_:comment:)(v278, v279);
                v228 = v280._countAndFlagsBits;
                v229 = v280._object;

LABEL_139:
                if (!v355)
                {
LABEL_141:
                  v281 = swift_getObjectType();
                  v282 = *(v1 + 248);
                  v387 = *(v1 + 232);
                  v388[0] = v282;
                  *(v388 + 10) = *(v1 + 258);
                  v283 = *(v1 + 216);
                  v385 = *v3;
                  v386 = v283;
                  sub_24EF7172C(&v385, &v377);
                  v284 = sub_24F0DF09C();
                  v286 = v285;
                  sub_24EF71698(&v385);
                  LOBYTE(v377) = 5;
                  BYTE1(v377) = v372;
                  v378 = 0;
                  v379 = 0;
                  v287 = *(v374 + 32);
                  sub_24E9534EC(0, 0);
                  v287(v228, v229, v284, v286, &v377, v281, v374);
                  v31 = v374;

                  sub_24E97D004(v378, v379);
                  v195 = 0;
                  v274 = 0;
                  v9 = v346;
                  v8 = v349;
                  goto LABEL_153;
                }

LABEL_140:

                goto LABEL_141;
              }
            }

            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = v374;
            v198 = v355;
LABEL_131:
            if (v198)
            {
            }

            goto LABEL_133;
          }

          if (*(&v382 + 1))
          {
            v356 = *(&v382 + 1);
            if (v175)
            {
              v203 = v381 | (v13 << 8);
              v204 = v382;
              if (v362 && *(v362 + 208) == 1)
              {
                sub_24EF7172C(&v381, &v385);
                sub_24E9534EC(v8, v9);

                v205._countAndFlagsBits = 0xD000000000000016;
                v205._object = 0x800000024FA500B0;
                v206 = localizedStringForAdsLanguage(_:)(v205);
                v361 = v206._object;
                v207 = v206._countAndFlagsBits;
              }

              else
              {
                sub_24EF7172C(&v381, &v385);
                sub_24E9534EC(v8, v9);
                v301._countAndFlagsBits = 0xD000000000000016;
                v301._object = 0x800000024FA500B0;
                v302._countAndFlagsBits = 0;
                v302._object = 0xE000000000000000;
                v303 = localizedString(_:comment:)(v301, v302);
                v207 = v303._countAndFlagsBits;
                v361 = v303._object;
              }

              v31 = v374;
              v304 = swift_getObjectType();
              v305 = *(v1 + 154);
              LODWORD(v377) = *(v1 + 150);
              WORD2(v377) = v305;
              LOBYTE(v385) = v366;
              BYTE1(v385) = v372;
              *(&v385 + 1) = v8;
              *&v386 = v9;
              (*(v31 + 40))(v203, v127, v204, v356, &v377, &v385, v304, v31);

              v195 = v8;
              v274 = v9;
              goto LABEL_154;
            }

            v354 = v382;
            if (v362 && *(v362 + 208) == 1)
            {
              sub_24EF7172C(&v381, &v385);

              v275._object = 0x800000024FA6B9C0;
              v275._countAndFlagsBits = 0xD00000000000001CLL;
              v276 = localizedStringForAdsLanguage(_:)(v275);
              v277 = v276._countAndFlagsBits;
              v370 = v276._object;
            }

            else
            {

              v306._object = 0x800000024FA6B9C0;
              v306._countAndFlagsBits = 0xD00000000000001CLL;
              v307._countAndFlagsBits = 0;
              v307._object = 0xE000000000000000;
              v308 = localizedString(_:comment:)(v306, v307);
              v277 = v308._countAndFlagsBits;
              v370 = v308._object;
              if (!v362)
              {
                goto LABEL_151;
              }
            }

            if (*(v362 + 208) == 1)
            {

              v309._object = 0x800000024FA6B9C0;
              v309._countAndFlagsBits = 0xD00000000000001CLL;
              v310 = localizedStringForAdsLanguage(_:)(v309);
              v344 = v310._countAndFlagsBits;
              v361 = v310._object;

LABEL_152:
              v314 = swift_getObjectType();
              v315 = *(v1 + 154);
              v375 = *(v1 + 150);
              v376 = v315;
              v316 = *(v1 + 248);
              v387 = *(v1 + 232);
              v388[0] = v316;
              *(v388 + 10) = *(v1 + 258);
              v317 = *(v1 + 216);
              v385 = *v3;
              v386 = v317;
              sub_24EF7172C(&v385, &v377);
              v365 = sub_24F0DF09C();
              v319 = v318;
              sub_24EF71698(&v385);
              LOBYTE(v377) = 5;
              BYTE1(v377) = v372;
              v378 = 0;
              v379 = 0;
              v320 = *(v374 + 24);
              sub_24E9534EC(0, 0);
              v320(v277, v370, v354, v356, &v375, v365, v319, &v377, v314, v374);
              v31 = v374;

              sub_24E97D004(v378, v379);
              v195 = 0;
              v274 = 0;
              goto LABEL_153;
            }

LABEL_151:
            v311._object = 0x800000024FA6B9C0;
            v311._countAndFlagsBits = 0xD00000000000001CLL;
            v312._countAndFlagsBits = 0;
            v312._object = 0xE000000000000000;
            v313 = localizedString(_:comment:)(v311, v312);
            v344 = v313._countAndFlagsBits;
            v361 = v313._object;

            goto LABEL_152;
          }

          if (v175)
          {
            v353 = v381 | (v13 << 8);
            if (v362 && *(v362 + 208) == 1)
            {
              sub_24EF7172C(&v381, &v385);
              sub_24E9534EC(v8, v9);

              v271._countAndFlagsBits = 0xD000000000000016;
              v271._object = 0x800000024FA500B0;
              v272 = localizedStringForAdsLanguage(_:)(v271);
              v344 = v272._countAndFlagsBits;
              v361 = v272._object;
            }

            else
            {
              sub_24EF7172C(&v381, &v385);
              sub_24E9534EC(v8, v9);
              v327._countAndFlagsBits = 0xD000000000000016;
              v327._object = 0x800000024FA500B0;
              v328._countAndFlagsBits = 0;
              v328._object = 0xE000000000000000;
              v329 = localizedString(_:comment:)(v327, v328);
              v344 = v329._countAndFlagsBits;
              v361 = v329._object;
            }

            v195 = v8;
            v196 = v9;
            v197 = v374;
            v194 = v366;
LABEL_133:
            v369 = swift_getObjectType();
            LOBYTE(v385) = v194;
            BYTE1(v385) = v372;
            *(&v385 + 1) = v195;
            *&v386 = v196;
            v273 = *(v197 + 48);
            sub_24E9534EC(v195, v196);
            v273(v353, v127, &v385, v369, v374);
            v274 = v196;
            v31 = v374;

            sub_24E97D004(*(&v385 + 1), v386);
LABEL_153:
            v207 = v344;
LABEL_154:
            v321 = swift_getObjectType();
            (*(v31 + 128))(v207, v361, v321, v31);
            sub_24E97D004(v195, v274);
LABEL_53:
            v158 = swift_getObjectType();
            v159 = sub_24F0E19A4();
            (*(v31 + 16))(v159 & 1, v158, v31);
            swift_unknownObjectRelease();
            goto LABEL_54;
          }

          v346 = v9;
          v349 = v8;
          if (v362 && *(v362 + 208) == 1)
          {
            sub_24EF7172C(&v381, &v385);

            v325._object = 0x800000024FA6B9C0;
            v325._countAndFlagsBits = 0xD00000000000001CLL;
            v326 = localizedStringForAdsLanguage(_:)(v325);
            v228 = v326._countAndFlagsBits;
            v229 = v326._object;
          }

          else
          {

            v330._object = 0x800000024FA6B9C0;
            v330._countAndFlagsBits = 0xD00000000000001CLL;
            v331._countAndFlagsBits = 0;
            v331._object = 0xE000000000000000;
            v332 = localizedString(_:comment:)(v330, v331);
            v229 = v332._object;
            v228 = v332._countAndFlagsBits;
            if (!v362)
            {
LABEL_166:
              v335._object = 0x800000024FA6B9C0;
              v335._countAndFlagsBits = 0xD00000000000001CLL;
              v336._countAndFlagsBits = 0;
              v336._object = 0xE000000000000000;
              v337 = localizedString(_:comment:)(v335, v336);
              v344 = v337._countAndFlagsBits;
              v361 = v337._object;
              goto LABEL_140;
            }
          }

          if (*(v362 + 208) == 1)
          {

            v333._object = 0x800000024FA6B9C0;
            v333._countAndFlagsBits = 0xD00000000000001CLL;
            v334 = localizedStringForAdsLanguage(_:)(v333);
            v344 = v334._countAndFlagsBits;
            v361 = v334._object;

            goto LABEL_141;
          }

          goto LABEL_166;
        }

        v145 = v382;

        v345 = v9;
        v348 = v8;
        if (v362 && *(v362 + 126) == 2)
        {

          v146 = *(v362 + 208);

          if (v146 == 1)
          {

            v147._countAndFlagsBits = 0xD00000000000002DLL;
            v147._object = 0x800000024FA6B9E0;
            v148 = localizedStringForAdsLanguage(_:)(v147);
            v149 = v362;
            v150 = v148._countAndFlagsBits;
            v151 = v148._object;
          }

          else
          {
            v235._countAndFlagsBits = 0xD00000000000002DLL;
            v235._object = 0x800000024FA6B9E0;
            v236._countAndFlagsBits = 0;
            v236._object = 0xE000000000000000;
            v237 = localizedString(_:comment:)(v235, v236);
            v149 = v362;
            v150 = v237._countAndFlagsBits;
            v151 = v237._object;
          }

          v179 = swift_getObjectType();
          v238 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v238;
          *(v388 + 10) = *(v1 + 258);
          v239 = *(v1 + 216);
          v385 = *v3;
          v386 = v239;
          sub_24EF7172C(&v385, &v377);
          v240 = sub_24F0DF09C();
          v242 = v241;
          sub_24EF71698(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v150, v151, v240, v242, &v377, v179, v374);

          sub_24E97D004(v378, v379);
          if (*(v149 + 208) == 1)
          {
            v243._countAndFlagsBits = 0xD00000000000002DLL;
            v243._object = 0x800000024FA6B9E0;
            v244 = localizedStringForAdsLanguage(_:)(v243);

            v187 = v244._object;
            v188 = v244._countAndFlagsBits;
          }

          else
          {

            v245._countAndFlagsBits = 0xD00000000000002DLL;
            v245._object = 0x800000024FA6B9E0;
            v246._countAndFlagsBits = 0;
            v246._object = 0xE000000000000000;
            v247 = localizedString(_:comment:)(v245, v246);
            v187 = v247._object;
            v188 = v247._countAndFlagsBits;
          }

          v8 = v348;
          goto LABEL_118;
        }

        if (v7 == 6 || v7 == 3)
        {

          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v160._object = 0x800000024FA6B9C0;
            v160._countAndFlagsBits = 0xD00000000000001CLL;
            v161 = localizedStringForAdsLanguage(_:)(v160);
            v162 = v362;
            v163 = v161._countAndFlagsBits;
            v164 = v161._object;
          }

          else
          {

            v176._object = 0x800000024FA6B9C0;
            v176._countAndFlagsBits = 0xD00000000000001CLL;
            v177._countAndFlagsBits = 0;
            v177._object = 0xE000000000000000;
            v178 = localizedString(_:comment:)(v176, v177);
            v162 = v362;
            v163 = v178._countAndFlagsBits;
            v164 = v178._object;
          }

          v179 = swift_getObjectType();
          v180 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v180;
          *(v388 + 10) = *(v1 + 258);
          v181 = *(v1 + 216);
          v385 = *v3;
          v386 = v181;
          sub_24EF7172C(&v385, &v377);
          v182 = sub_24F0DF09C();
          v184 = v183;
          sub_24EF71698(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v163, v164, v182, v184, &v377, v179, v374);

          sub_24E97D004(v378, v379);
          v8 = v348;
          if (v162)
          {
            if (*(v162 + 208) == 1)
            {
              v185._object = 0x800000024FA6B9C0;
              v185._countAndFlagsBits = 0xD00000000000001CLL;
              v186 = localizedStringForAdsLanguage(_:)(v185);

              v187 = v186._object;
              v188 = v186._countAndFlagsBits;
LABEL_118:
              (*(v31 + 128))(v188, v187, v179, v31);
              v9 = v345;
              goto LABEL_53;
            }
          }

          v248._object = 0x800000024FA6B9C0;
          v248._countAndFlagsBits = 0xD00000000000001CLL;
          v249._countAndFlagsBits = 0;
          v249._object = 0xE000000000000000;
          v250 = localizedString(_:comment:)(v248, v249);
          v187 = v250._object;
          v188 = v250._countAndFlagsBits;
          goto LABEL_118;
        }

        if (*(&v382 + 1))
        {
          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v199._countAndFlagsBits = 0xD000000000000016;
            v199._object = 0x800000024FA500B0;
            v200 = localizedStringForAdsLanguage(_:)(v199);
            v201 = v200._countAndFlagsBits;
            v202 = v200._object;
          }

          else
          {

            v251._countAndFlagsBits = 0xD000000000000016;
            v251._object = 0x800000024FA500B0;
            v252._countAndFlagsBits = 0;
            v252._object = 0xE000000000000000;
            v253 = localizedString(_:comment:)(v251, v252);
            v201 = v253._countAndFlagsBits;
            v202 = v253._object;
          }

          v254 = swift_getObjectType();
          v255 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v255;
          v256 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v256;
          *(v388 + 10) = *(v1 + 258);
          v258 = *v3;
          v257 = *(v1 + 216);
          v259 = v254;
          v385 = v258;
          v386 = v257;
          sub_24EF7172C(&v385, &v377);
          v260 = sub_24F0DF09C();
          v262 = v261;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v348;
          v379 = v345;
          v31 = v374;
          (*(v374 + 24))(v201, v202, v145, *(&v145 + 1), &v375, v260, v262, &v377, v259, v374);

          if (v362)
          {
            if (*(v362 + 208))
            {
              v263._countAndFlagsBits = 0xD000000000000016;
              v263._object = 0x800000024FA500B0;
              v264 = localizedStringForAdsLanguage(_:)(v263);

              v265 = v264._object;
              v266 = v264._countAndFlagsBits;
LABEL_157:
              (*(v374 + 128))(v266, v265, v259, v374);
LABEL_170:
              v9 = v345;
              v8 = v348;
              goto LABEL_53;
            }
          }

          v322._countAndFlagsBits = 0xD000000000000016;
          v322._object = 0x800000024FA500B0;
          v323._countAndFlagsBits = 0;
          v323._object = 0xE000000000000000;
          v324 = localizedString(_:comment:)(v322, v323);
          v265 = v324._object;
          v266 = v324._countAndFlagsBits;
          goto LABEL_157;
        }

        if (v362 && *(v362 + 208) == 1)
        {
          swift_retain_n();
          v267._countAndFlagsBits = 0xD000000000000016;
          v267._object = 0x800000024FA500B0;
          v268 = localizedStringForAdsLanguage(_:)(v267);
          v269 = v268._countAndFlagsBits;
          v270 = v268._object;
        }

        else
        {

          v288._countAndFlagsBits = 0xD000000000000016;
          v288._object = 0x800000024FA500B0;
          v289._countAndFlagsBits = 0;
          v289._object = 0xE000000000000000;
          v290 = localizedString(_:comment:)(v288, v289);
          v269 = v290._countAndFlagsBits;
          v270 = v290._object;
        }

        v291 = swift_getObjectType();
        v292 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v292;
        *(v388 + 10) = *(v1 + 258);
        v293 = *(v1 + 216);
        v385 = *v3;
        v386 = v293;
        sub_24EF7172C(&v385, &v377);
        v294 = sub_24F0DF09C();
        v296 = v295;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v348;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v269, v270, v294, v296, &v377, v291, v374);

        if (!v362)
        {
          goto LABEL_168;
        }

        if (*(v362 + 208))
        {
          v297._countAndFlagsBits = 0xD000000000000016;
          v297._object = 0x800000024FA500B0;
          v298 = localizedStringForAdsLanguage(_:)(v297);

          v299 = v298._object;
          v300 = v298._countAndFlagsBits;
        }

        else
        {

LABEL_168:
          v338._countAndFlagsBits = 0xD000000000000016;
          v338._object = 0x800000024FA500B0;
          v339._countAndFlagsBits = 0;
          v339._object = 0xE000000000000000;
          v340 = localizedString(_:comment:)(v338, v339);
          v299 = v340._object;
          v300 = v340._countAndFlagsBits;
        }

        (*(v374 + 128))(v300, v299, v291, v374);
        goto LABEL_170;
      case 9:
        v47 = v381 | (v13 << 8);
        v48 = swift_getObjectType();
        v49 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v49;
        *(v388 + 10) = *(v1 + 258);
        v50 = *(v1 + 216);
        v385 = *v3;
        v386 = v50;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v51 = sub_24F0DF09C();
        v52 = v14;
        v54 = v53;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v47, v52, v51, v54, &v377, v48, v374);

        (*(v31 + 128))(v47, v52, v48, v31);
        (*(v374 + 144))(1852141679, 0xE400000000000000, v48, v374);
        goto LABEL_53;
      case 0xA:
        v360 = *(&v381 + 1);
        v117 = v381 | (v13 << 8);
        if (*(&v382 + 1))
        {
          v118 = v381 | (v13 << 8);
          v119 = *(&v382 + 1);
          v352 = v382;
          v363 = swift_getObjectType();
          v120 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v120;
          v121 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v121;
          *(v388 + 10) = *(v1 + 258);
          v122 = *(v1 + 216);
          v385 = *v3;
          v386 = v122;
          sub_24EF7172C(&v381, &v377);
          sub_24EF7172C(&v385, &v377);
          v123 = sub_24F0DF09C();
          v125 = v124;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 24))(v118, v360, v352, v119, &v375, v123, v125, &v377, v363, v374);
          v117 = v118;
        }

        else
        {
          v152 = swift_getObjectType();
          v153 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v153;
          *(v388 + 10) = *(v1 + 258);
          v154 = *(v1 + 216);
          v385 = *v3;
          v386 = v154;
          sub_24EF7172C(&v381, &v377);
          sub_24EF7172C(&v385, &v377);
          v155 = sub_24F0DF09C();
          v157 = v156;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 32))(v117, v360, v155, v157, &v377, v152, v374);
        }

        v24 = swift_getObjectType();
        (*(v31 + 128))(v117, v126, v24, v31);
        v32 = *(v31 + 144);
        v33 = 0x7463656C6573;
LABEL_51:
        v116 = 0xE600000000000000;
        goto LABEL_52;
      case 0xB:
        v23 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v25 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v25;
        *(v388 + 10) = *(v1 + 258);
        v26 = *(v1 + 216);
        v385 = *v3;
        v386 = v26;
        sub_24EF7172C(&v381, &v377);
        sub_24EF7172C(&v385, &v377);
        v27 = sub_24F0DF09C();
        v28 = v14;
        v30 = v29;
        sub_24EF71698(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v23, v28, v27, v30, &v377, v24, v374);

        (*(v31 + 128))(v23, v28, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x7463697274736572;
LABEL_29:
        v116 = 0xEA00000000006465;
LABEL_52:
        v32(v33, v116, v24, v31);
        goto LABEL_53;
      case 0xC:
        v46 = swift_getObjectType();
        LOBYTE(v385) = 5;
        BYTE1(v385) = v7;
        *(&v385 + 1) = 0;
        *&v386 = 0;
        v31 = v374;
        (*(v374 + 48))(0x72616D6B63656863, 0xE90000000000006BLL, &v385, v46, v374);
        sub_24E97D004(*(&v385 + 1), v386);
        goto LABEL_53;
      default:
        *&v350 = v382;

        v358 = *(&v381 + 1);

        sub_24F0E8910(v383, *(&v383 + 1), *v384, *&v384[8]);
        sub_24EF712B4(v383, (BYTE8(v383) | (BYTE9(v383) << 8) | (*(&v383 + 10) << 16) | (HIWORD(v383) << 48)), *v384, *&v384[8]);
        if (*(v1 + 158) != 1)
        {
          v22 = *(&v382 + 1);
          v364 = v381 | (v13 << 8);
          sub_24E9534EC(v8, v9);
          v140 = sub_24F0E1828();
          v342 = v141;
          v343 = v140;
          v142 = v8;
          v143 = v9;
          v144 = v366;
          goto LABEL_96;
        }

        v16 = sub_24F0E16F4();
        v342 = v17;
        v343 = v16;
        if (!v362)
        {
          goto LABEL_94;
        }

        v18 = *(v362 + 88);
        if (!*(v18 + 16))
        {
          goto LABEL_94;
        }

        v19 = sub_24E76DB58(1);
        if (v20)
        {
          v21 = (*(v18 + 56) + 16 * v19);
          *&v350 = *v21;
          v22 = v21[1];
        }

        else
        {

LABEL_94:
          *&v350 = 0;
          v22 = 0;
        }

        v143 = 0;
        v144 = 2;
        v142 = 2;
        v358 = v208;
        v364 = v343;
LABEL_96:
        v371 = v142;
        if (v22)
        {
          v367 = v144;
          *(&v350 + 1) = v22;
          v341 = swift_getObjectType();
          v209 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v209;
          v210 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v210;
          *(v388 + 10) = *(v1 + 258);
          v211 = *(v1 + 216);
          v385 = *v3;
          v386 = v211;
          sub_24EF7172C(&v385, &v377);
          v212 = sub_24F0DF09C();
          v214 = v213;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v367;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v215 = *(v374 + 24);
          sub_24E9534EC(v371, v143);
          v215(v364, v358, v350, v22, &v375, v212, v214, &v377, v341, v374);

          sub_24E97D004(v378, v379);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
          v216 = swift_allocObject();
          *(v216 + 16) = xmmword_24F93A400;
          *(v216 + 32) = v350;
          *(v216 + 48) = v343;
          *(v216 + 56) = v342;
          v377 = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
          sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
          v217 = sub_24F92AF68();
          v219 = v218;

          (*(v374 + 128))(v217, v219, v341, v374);
        }

        else
        {
          v368 = swift_getObjectType();
          v220 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v220;
          *(v388 + 10) = *(v1 + 258);
          v221 = *(v1 + 216);
          v385 = *v3;
          v386 = v221;
          sub_24EF7172C(&v385, &v377);
          v222 = sub_24F0DF09C();
          v224 = v223;
          sub_24EF71698(&v385);
          LOBYTE(v377) = v144;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v373 = *(v374 + 32);
          sub_24E9534EC(v371, v143);
          v373(v364, v358, v222, v224, &v377, v368, v374);

          sub_24E97D004(v378, v379);
          (*(v374 + 128))(v343, v342, v368, v374);
        }

        v225 = swift_getObjectType();
        (*(v31 + 144))(7628135, 0xE300000000000000, v225, v31);
        sub_24E97D004(v371, v143);
        goto LABEL_53;
    }
  }
}

double sub_24F0E846C()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 112))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v0 + 24);
    v5 = swift_getObjectType();
    (*(v4 + 96))(v5, v4);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F0E8528(uint64_t a1, uint64_t a2)
{
  sub_24F0E846C();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 104))(v2, sel_offerButtonTapped, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  _s12GameStoreKit23AppOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F0E85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = a7;
  v26 = a8;
  v23 = a4;
  v24 = a5;
  v21 = a2;
  v22 = a3;
  v16 = *(a13 - 8);
  MEMORY[0x28223BE20](a12);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v16 + 16))(v18, a6, a13);
  return sub_24F0E4FF4(a1, v21, v22, v23, v24, v18, v25, v26, a9, a10, a11, v19, a13, a14);
}

uint64_t sub_24F0E8710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19AppOfferButtonStateO27DownloadProgressInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit19AppOfferButtonStateO(uint64_t a1)
{
  if ((*(a1 + 73) & 0xFu) <= 0xB)
  {
    return *(a1 + 73) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24F0E8830(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 74))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 73);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F0E8878(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F0E88D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 73) = a2;
  return result;
}

void sub_24F0E8910(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
    v6 = a4;
    v7 = a2;

    v8 = a3;
  }
}

uint64_t sub_24F0E8964()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F0E89A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2393D8, &qword_24F9C8E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F0E8A14(__n128 a1)
{
  v2 = sub_24F927E88();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t block_copy_helper_114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F0E8B08()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F0E8B48()
{

  return swift_deallocObject();
}

uint64_t sub_24F0E8BB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 48) = a2;
  *(v5 + 56) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 24) = a1;
  *(v5 + 64) = *v4;
  return MEMORY[0x2822009F8](sub_24F0E8C04, 0, 0);
}

uint64_t sub_24F0E8C04()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E9A0);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[3];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "Starting snapshot for %ld artworks, size:", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = swift_task_alloc();
  v0[9] = v13;
  v13[2] = v8;
  v13[3] = v12;
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = v9;
  v13[7] = v7;
  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0, &qword_24F95B820);
  *v14 = v0;
  v14[1] = sub_24F0E8E1C;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000024FA6BC80, sub_24F0EF58C, v13, v15);
}

uint64_t sub_24F0E8E1C()
{

  return MEMORY[0x2822009F8](sub_24F0F1D4C, 0, 0);
}

uint64_t sub_24F0E8F34()
{
  v6[0] = sub_24F92BEE8();
  v0 = *(v6[0] - 8);
  MEMORY[0x28223BE20](v6[0]);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  sub_24F927DB8();
  v6[1] = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v6[0]);
  result = sub_24F92BF38();
  qword_27F2393E0 = result;
  return result;
}

uint64_t sub_24F0E9198(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0E925C, 0, 0);
}

uint64_t sub_24F0E925C()
{
  v33 = v0;
  v1 = *(v0[15] + 64);
  v0[18] = v1;
  os_unfair_lock_lock((v1 + 64));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_24F0F1984(v3, v2, v4);
  os_unfair_lock_unlock((v1 + 64));
  if (v3)
  {
    v8 = v0[14];

    *v8 = v3;
    v8[1] = v2;
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v7;
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[15];
    v31 = 0;
    v32 = 0xE000000000000000;
    v12 = *(v11 + 72);
    if (v12 > 3)
    {
      v13 = 0xE600000000000000;
      if (v12 > 5)
      {
        if (v12 == 6)
        {
          v14 = 0x437055656E4FLL;
        }

        else
        {
          v14 = 0x447055656E4FLL;
        }
      }

      else if (v12 == 4)
      {
        v14 = 0x417055656E4FLL;
      }

      else
      {
        v14 = 0x427055656E4FLL;
      }
    }

    else if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = 0xE300000000000000;
        v14 = 7233862;
      }

      else
      {
        v13 = 0xEC0000006C616369;
        v14 = 0x7274656D6D797341;
      }
    }

    else if (v12)
    {
      v13 = 0xE700000000000000;
      v14 = 0x70556565726854;
    }

    else
    {
      v13 = 0xE500000000000000;
      v14 = 0x70556F7754;
    }

    MEMORY[0x253050C20](v14, v13);

    v16 = v31;
    v15 = v32;
    v0[19] = v32;
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v17 = sub_24F9220D8();
    v0[20] = __swift_project_value_buffer(v17, qword_27F39E9A0);

    v18 = sub_24F9220B8();
    v19 = sub_24F92BD98();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_24E7620D4(v16, v15, &v31);
      _os_log_impl(&dword_24E5DD000, v18, v19, "Initializing renderer components for %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2530542D0](v21, -1, -1);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    v25 = sub_24F92B858();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v24;
    v26[5] = v23;

    v27 = sub_24F77BBD8(0, 0, v22, &unk_24F9C90E0, v26);
    v0[21] = v27;
    sub_24E601704(v22, &unk_27F21B570, &qword_24F93B020);
    v28 = swift_task_alloc();
    v0[22] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
    *v28 = v0;
    v28[1] = sub_24F0E969C;
    v30 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 8, v27, &type metadata for GamesThreeDimensionalRealityRenderer.RendererComponents, v29, v30);
  }
}

uint64_t sub_24F0E969C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {

    v2 = sub_24F0E9C10;
  }

  else
  {
    v2 = sub_24F0E97E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F0E97E0()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 96);
  sub_24F92B7F8();
  *(v0 + 192) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0E9884, v3, v2);
}

void sub_24F0E9884()
{
  v1 = *(v0 + 184);

  sub_24F0EBF7C(v0 + 16);
  *(v0 + 200) = v1;
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24F0E992C, 0, 0);
  }
}

void sub_24F0E992C()
{
  v21 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);
  *(swift_task_alloc() + 16) = v0 + 16;
  os_unfair_lock_lock((v2 + 64));
  sub_24F0F1ACC((v2 + 16));
  os_unfair_lock_unlock((v2 + 64));
  if (!v1)
  {
    v3 = *(v0 + 120);

    v19 = 0;
    v20 = 0xE000000000000000;
    v4 = *(v3 + 72);
    if (v4 > 3)
    {
      v5 = 0xE600000000000000;
      if (v4 > 5)
      {
        if (v4 == 6)
        {
          v6 = 0x437055656E4FLL;
        }

        else
        {
          v6 = 0x447055656E4FLL;
        }
      }

      else if (v4 == 4)
      {
        v6 = 0x417055656E4FLL;
      }

      else
      {
        v6 = 0x427055656E4FLL;
      }
    }

    else if (*(v3 + 72) > 1u)
    {
      if (v4 == 2)
      {
        v5 = 0xE300000000000000;
        v6 = 7233862;
      }

      else
      {
        v5 = 0xEC0000006C616369;
        v6 = 0x7274656D6D797341;
      }
    }

    else if (*(v3 + 72))
    {
      v5 = 0xE700000000000000;
      v6 = 0x70556565726854;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x70556F7754;
    }

    MEMORY[0x253050C20](v6, v5);

    v8 = v19;
    v7 = v20;

    v9 = sub_24F9220B8();
    v10 = sub_24F92BD98();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = sub_24E7620D4(v8, v7, &v19);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_24E5DD000, v9, v10, "Successfully created renderer components for %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2530542D0](v12, -1, -1);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 112);
    v17 = *(v0 + 32);
    v18 = *(v0 + 16);
    v16 = *(v0 + 48);

    *v14 = v18;
    v14[1] = v17;
    v14[2] = v16;
    v15 = *(v0 + 8);

    v15();
  }
}

uint64_t sub_24F0E9C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0E9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[119] = a4;
  v4[113] = a1;
  v5 = sub_24F91FC38();
  v4[122] = v5;
  v4[123] = *(v5 - 8);
  v4[124] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394C0, &qword_24F9C90F0);
  v4[125] = swift_task_alloc();
  v6 = sub_24F91FC68();
  v4[126] = v6;
  v4[127] = *(v6 - 8);
  v4[128] = swift_task_alloc();
  v7 = sub_24F91FCC8();
  v4[129] = v7;
  v4[130] = *(v7 - 8);
  v4[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0E9E28, 0, 0);
}

uint64_t sub_24F0E9E28()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394C8, &qword_24F9C9108);
  swift_asyncLet_begin();
  *(v0 + 1056) = sub_24F92B7F8();
  *(v0 + 1064) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0E9F0C, v2, v1);
}

uint64_t sub_24F0E9F0C()
{

  sub_24F921428();
  swift_allocObject();
  *(v0 + 1072) = sub_24F921418();
  *(v0 + 1080) = 0;

  return MEMORY[0x282200928](v0 + 16, v0 + 760, sub_24F0E9FEC, v0 + 768);
}

uint64_t sub_24F0E9FEC()
{
  v1 = v0[95];
  v0[136] = v1;

  v2 = swift_task_alloc();
  v0[137] = v2;
  v3 = sub_24F91FD28();
  v0[138] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  *v2 = v0;
  v2[1] = sub_24F0EA0D8;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 101, v1, v3, v4, v5);
}

uint64_t sub_24F0EA0D8()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_24F0EB9DC;
  }

  else
  {
    v2 = sub_24F0EA2CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F0EA228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EA2CC(uint64_t a1)
{
  v1[140] = v1[101];
  v1[141] = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA360, v3, v2);
}

uint64_t sub_24F0EA360()
{

  swift_allocObject();
  *(v0 + 1136) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EA3E8, 0, 0);
}

uint64_t sub_24F0EA3E8(uint64_t a1)
{
  *(v1 + 1144) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA474, v3, v2);
}

uint64_t sub_24F0EA474()
{

  swift_allocObject();
  *(v0 + 1152) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EA4FC, 0, 0);
}

uint64_t sub_24F0EA4FC()
{
  v1 = MTLCreateSystemDefaultDevice();
  v0[145] = v1;
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200920](v1, v2, v3, v4);
  }

  v5 = v1;
  v6 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  v0[146] = v6;
  [v6 setPixelFormat_];
  [v6 setCompressionType_];
  [v6 setUsage_];
  [v6 setWidth_];
  [v6 setHeight_];
  v7 = [v5 newTextureWithDescriptor_];
  v0[147] = v7;
  if (!v7)
  {
    sub_24F0F1B84();
    v0[152] = swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();

    v3 = sub_24F0EAABC;
    v1 = v0 + 2;
    v2 = v0 + 95;
    v4 = v0 + 108;

    return MEMORY[0x282200920](v1, v2, v3, v4);
  }

  v0[148] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA6FC, v9, v8);
}

uint64_t sub_24F0EA6FC()
{

  sub_24F91FC98();

  return MEMORY[0x2822009F8](sub_24F0EA774, 0, 0);
}

uint64_t sub_24F0EA774()
{
  sub_24F91FC58();
  *(v0 + 1192) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EA828, v2, v1);
}

uint64_t sub_24F0EA828()
{
  v1 = v0[131];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[127];
  v6 = v0[126];

  sub_24F91FCB8();
  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 8);
  v0[150] = v7;
  v0[151] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);

  return MEMORY[0x2822009F8](sub_24F0EA90C, 0, 0);
}

uint64_t sub_24F0EA90C()
{
  if (*(v0[59].i64[1] + 72) > 3u || *(v0[59].i64[1] + 72))
  {
    v2 = sub_24F92CE08();

    if (v2)
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }

    v1 = vbslq_s8(vdupq_n_s32(v3), xmmword_24F9C8F20, xmmword_24F9C8F10);
  }

  else
  {

    v1 = xmmword_24F9C8F20;
  }

  v0[60] = v1;
  v0[76].i64[1] = sub_24F92B7E8();
  v5 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EAB7C, v5, v4);
}

uint64_t sub_24F0EAAD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EAB7C()
{

  sub_24F91FAF8();

  return MEMORY[0x2822009F8](sub_24F0EAC20, 0, 0);
}

uint64_t sub_24F0EAC20()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 952);
  v3 = sub_24F91FC18();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  sub_24F91FBF8();
  sub_24F0EF924(&unk_2861C1288);
  v5 = (3.1416 * v4.f32[0]) / 180.0;
  v6 = vmuls_lane_f32(3.1416, *v4.f32, 1) / 180.0;
  v7 = vmuls_lane_f32(3.1416, v4, 2) / 180.0;
  sub_24F0EF924(&unk_2861BFBB8);
  v35 = v8;
  v9 = __sincosf_stret(v5 * 0.5);
  v36 = vmulq_n_f32(v35, v9.__sinval);
  sub_24F0EF924(&unk_2861BFBE8);
  v34 = v10;
  v11 = __sincosf_stret(v6 * 0.5);
  v12 = vmulq_n_f32(v34, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vrev64q_s32(v12);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v38 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v12, v9.__cosval), v15, v36, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v36.f32, 1), vextq_s8(v14, v14, 8uLL), v36.f32[0]));
  sub_24F0EF924(&unk_2861BFC18);
  v37 = v16;
  v17 = __sincosf_stret(v7 * 0.5);
  v18 = vmulq_n_f32(v37, v17.__sinval);
  v18.i32[3] = LODWORD(v17.__cosval);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vrev64q_s32(v18);
  v21.i32[0] = v19.i32[1];
  v21.i32[3] = v19.i32[2];
  v39 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v18, v19, 8uLL), *v38.f32, 1), vextq_s8(v20, v20, 8uLL), v38.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v18, v38, 3), v21, v38, 2));
  v22 = sub_24F91FB18();
  v23[1] = v39;
  v22(v0 + 696, 0);
  v24 = MEMORY[0x277D84F90];
  *(v0 + 856) = MEMORY[0x277D84F90];
  if ((*(v2 + 72) - 4) > 3u)
  {
    v25 = &unk_2861C0DE8;
  }

  else
  {
    v25 = *(&off_27968EA00 + (*(v2 + 72) - 4));
  }

  v26 = v25[2];
  *(v0 + 1232) = v26;

  if (v26)
  {
    v27 = *(v0 + 952);
    *(v0 + 1240) = objc_opt_self();
    *(v0 + 1345) = *(v27 + 72);
    *(v0 + 1272) = 0;
    *(v0 + 1280) = sub_24F92B7E8();
    v28 = sub_24F92B778();
    v30 = v29;
    v31 = sub_24F0EB158;
  }

  else
  {
    *(v0 + 1248) = v24;
    *(v0 + 1256) = sub_24F92B7E8();
    v28 = sub_24F92B778();
    v30 = v32;
    v31 = sub_24F0EAF34;
  }

  return MEMORY[0x2822009F8](v31, v28, v30);
}

uint64_t sub_24F0EAF34()
{

  sub_24F91FAD8();

  return MEMORY[0x2822009F8](sub_24F0EAFC8, 0, 0);
}

uint64_t sub_24F0EAFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = *(v4 + 1248);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v4 + 1264) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:
    v11 = *(v4 + 1248);
    v12 = *(v4 + 1176);
    v13 = *(v4 + 1152);
    v14 = *(v4 + 1136);
    v15 = *(v4 + 1120);
    v16 = *(v4 + 1072);
    v17 = *(v4 + 904);

    swift_unknownObjectRelease();
    *v17 = v16;
    v17[1] = v14;
    v17[2] = v12;
    v17[3] = v15;
    v17[4] = v13;
    v17[5] = v11;
    a3 = sub_24F0EB924;
    v6 = v4 + 16;
    a2 = v4 + 760;
    a4 = v4 + 912;

    return MEMORY[0x282200920](v6, a2, a3, a4);
  }

  v6 = sub_24F92C738();
  *(v4 + 1264) = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x282200920](v6, a2, a3, a4);
  }

  v7 = *(v4 + 1248);
  *(v4 + 1320) = 0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x253052270](0);
  }

  else
  {
  }

  *(v4 + 1328) = v8;
  *(v4 + 1336) = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EB71C, v10, v9);
}

uint64_t sub_24F0EB158()
{

  swift_allocObject();
  *(v0 + 1288) = sub_24F91FBD8();

  return MEMORY[0x2822009F8](sub_24F0EB1E0, 0, 0);
}

uint64_t sub_24F0EB1E0()
{
  v1 = *(v0 + 1345);
  [*(v0 + 1240) whiteColor];
  if ((v1 - 4) > 3u)
  {
    v4 = &unk_2861C0DE8;
  }

  else
  {
    v4 = *(&off_27968EA00 + (v1 - 4));
  }

  if (*(v0 + 1272) >= *(v4 + 2))
  {
    __break(1u);
  }

  else
  {

    sub_24F91FC28();
    *(v0 + 1296) = sub_24F92B7E8();
    v5 = sub_24F92B778();
    v7 = v6;
    v4 = sub_24F0EB2F8;
    v2 = v5;
    v3 = v7;
  }

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_24F0EB2F8()
{

  sub_24F91FC98();

  return MEMORY[0x2822009F8](sub_24F0EB370, 0, 0);
}

uint64_t sub_24F0EB370()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2394D8, &qword_24F9C9110);
  v4 = swift_allocObject();
  v0[163] = v4;
  *(v4 + 16) = xmmword_24F93DE60;
  v5 = MEMORY[0x277CDAEC8];
  *(v4 + 56) = v3;
  *(v4 + 64) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  v0[164] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EB46C, v8, v7);
}

uint64_t sub_24F0EB46C()
{
  v1 = v0[150];
  v2 = v0[131];
  v3 = v0[129];

  sub_24F91FCA8();

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_24F0EB514, 0, 0);
}

uint64_t sub_24F0EB514()
{
  v1 = *(v0 + 1272);
  *(v0 + 1344) = *(v0 + 1345);
  v2 = sub_24EE7860C();
  if (v1 >= *(v2 + 2))
  {
    __break(1u);
  }

  else
  {
    v17 = v2[*(v0 + 1272) + 2];

    v3 = sub_24F91FB18();
    *(v4 + 16) = v17;
    v3(v0 + 728, 0);

    MEMORY[0x253050F00](v5);
    if (*((*(v0 + 856) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v0 + 856) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_24F92B5E8();
LABEL_3:
  v6 = *(v0 + 1232);
  v7 = *(v0 + 992);
  v8 = *(v0 + 984);
  v9 = *(v0 + 976);
  v10 = *(v0 + 1272) + 1;
  sub_24F92B638();

  (*(v8 + 8))(v7, v9);
  if (v10 == v6)
  {
    *(v0 + 1248) = *(v0 + 856);
    *(v0 + 1256) = sub_24F92B7E8();
    v11 = sub_24F92B778();
    v13 = v12;
    v14 = sub_24F0EAF34;
  }

  else
  {
    ++*(v0 + 1272);
    *(v0 + 1280) = sub_24F92B7E8();
    v11 = sub_24F92B778();
    v13 = v15;
    v14 = sub_24F0EB158;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_24F0EB71C()
{

  sub_24F91FAD8();

  return MEMORY[0x2822009F8](sub_24F0EB7B0, 0, 0);
}

uint64_t sub_24F0EB7B0()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1264);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 1248);
    v4 = *(v0 + 1176);
    v5 = *(v0 + 1152);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1120);
    v8 = *(v0 + 1072);
    v9 = *(v0 + 904);

    swift_unknownObjectRelease();
    *v9 = v8;
    v9[1] = v6;
    v9[2] = v4;
    v9[3] = v7;
    v9[4] = v5;
    v9[5] = v3;

    return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_24F0EB924, v0 + 912);
  }

  else
  {
    ++*(v0 + 1320);
    if ((*(v0 + 1248) & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x253052270]();
    }

    else
    {
    }

    *(v0 + 1328) = v10;
    *(v0 + 1336) = sub_24F92B7E8();
    v12 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F0EB71C, v12, v11);
  }
}

uint64_t sub_24F0EB940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EB9DC()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 760, sub_24F0EBA48, v0 + 816);
}

uint64_t sub_24F0EBA64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0EBB08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EBBA4, 0, 0);
}

uint64_t sub_24F0EBBA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  v6 = sub_24F77BE4C(0, 0, v2, &unk_24F9C9120, v5);
  sub_24E601704(v2, &unk_27F21B570, &qword_24F93B020);
  *v3 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F0EBCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_24F0EBCE8, 0, 0);
}

uint64_t sub_24F0EBCE8()
{
  v1 = *(v0 + 48);
  sub_24F91FD28();
  *(v0 + 80) = *(v1 + 72);
  v2 = sub_24EE783E0();
  v4 = v3;
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27F22B5B8;
  v6 = qword_27F22B5B8;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_24F0EBE18;

  return MEMORY[0x282129BD0](v2, v4, v5);
}

uint64_t sub_24F0EBE18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_24F0EBF64;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_24F0EBF40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_24F0EBF7C(uint64_t a1)
{
  v2 = sub_24F91FCF8();
  v3 = *(v2 - 8);
  v18 = v2;
  v19 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9213B8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F921408();
  sub_24F9213F8();
  sub_24F0F1C94(&unk_27F2394B0, MEMORY[0x277CDB218], MEMORY[0x277CDB210]);
  sub_24F921448();
  v7(v20, 0);
  v17 = a1;

  v8 = sub_24F921408();
  sub_24F921448();
  v8(v20, 0);
  sub_24F921398();
  GenericGray = CGColorCreateGenericGray(0.0, 0.0);
  sub_24F9213A8();

  v10 = sub_24F9213D8();
  sub_24F9213C8();
  v10(v20, 0);
  sub_24F91FD28();
  sub_24F91FAE8();
  sub_24F0F1C94(&qword_27F21CE10, MEMORY[0x277CDB190], MEMORY[0x277CDB1A0]);
  v11 = v18;
  sub_24F92BB88();
  sub_24F92BC08();
  (*(v19 + 8))(v5, v11);
  if (v20[0] == v20[5])
  {
    v12 = v17;
    sub_24F91FAD8();
    v13 = *(v12 + 40);
    if (v13 >> 62)
    {
      v14 = sub_24F92C738();
      if (!v14)
      {
        return;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        return;
      }
    }

    if (v14 < 1)
    {
      __break(1u);
    }

    else if ((v13 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        MEMORY[0x253052270](i, v13);
        sub_24F91FAD8();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v16 = v13 + 32;
      do
      {
        v16 += 8;

        sub_24F91FAD8();

        --v14;
      }

      while (v14);
    }
  }
}

uint64_t sub_24F0EC340(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  sub_24F0EF50C(*a1, a1[1], a1[2]);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  v11 = v8;

  swift_unknownObjectRetain();

  return sub_24E60169C(&v11, &v10, &qword_27F239400, &qword_24F9C9050);
}

uint64_t sub_24F0EC3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_24F91F6B8();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v4[21] = *(v7 + 64);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v8 = sub_24F9289E8();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v4[26] = *(v9 + 64);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE28, &unk_24F9C90B0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239470, &qword_24F9578E0);
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239450, &qword_24F93B4F0);
  v4[35] = v11;
  v4[36] = *(v11 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EC728, 0, 0);
}

uint64_t sub_24F0EC728()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  *(v0 + 312) = v2;
  if (v2)
  {
    v35 = *(v0 + 304);
    v3 = *(v0 + 288);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v31 = **(v0 + 80);
    v32 = *(*(v0 + 280) + 48);
    v33 = *(v0 + 160);
    v34 = *(v0 + 200);
    v29 = *(v3 + 72);
    v30 = *(v0 + 208) + 7;
    do
    {
      v43 = v2;
      v7 = *(v0 + 304);
      v8 = *(v0 + 232);
      v39 = v8;
      v41 = *(v0 + 224);
      v9 = *(v0 + 216);
      v10 = *(v0 + 184);
      v11 = *(v0 + 192);
      v37 = v11;
      v12 = *(v0 + 152);
      v36 = v12;
      v40 = *(v0 + 96);
      v42 = v4;
      sub_24E60169C(v4, v7, &unk_27F239450, &qword_24F93B4F0);
      v13 = sub_24F92B858();
      v38 = *(v13 - 8);
      (*(v38 + 56))(v8, 1, 1, v13);
      v14 = *(v34 + 32);
      v14(v9, v7, v11);
      v15 = *(v33 + 32);
      v15(v10, v35 + v32, v12);
      v16 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v17 = (v30 + v16) & 0xFFFFFFFFFFFFFFF8;
      v18 = (*(v33 + 80) + v17 + 8) & ~*(v33 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      v14(v19 + v16, v9, v37);
      *(v19 + v17) = v40;
      v15(v19 + v18, v10, v36);
      sub_24E60169C(v39, v41, &unk_27F21B570, &qword_24F93B020);
      LODWORD(v17) = (*(v38 + 48))(v41, 1, v13);

      v20 = *(v0 + 224);
      if (v17 == 1)
      {
        sub_24E601704(*(v0 + 224), &unk_27F21B570, &qword_24F93B020);
      }

      else
      {
        sub_24F92B848();
        (*(v38 + 8))(v20, v13);
      }

      if (*(v19 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_24F92B778();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = swift_allocObject();
      *(v24 + 16) = &unk_24F9C90C8;
      *(v24 + 24) = v19;

      if (v23 | v21)
      {
        v5 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v23;
      }

      else
      {
        v5 = 0;
      }

      v6 = *(v0 + 232);
      *(v0 + 48) = 1;
      *(v0 + 56) = v5;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_24E601704(v6, &unk_27F21B570, &qword_24F93B020);
      v4 = v42 + v29;
      v2 = v43 - 1;
    }

    while (v43 != 1);
  }

  sub_24F92B7A8();
  *(v0 + 320) = MEMORY[0x277D84F90];
  v25 = swift_task_alloc();
  *(v0 + 328) = v25;
  *v25 = v0;
  v25[1] = sub_24F0ECBB0;
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);

  return MEMORY[0x2822002E8](v26, 0, 0, v27);
}

uint64_t sub_24F0ECBB0()
{

  return MEMORY[0x2822009F8](sub_24F0ECCAC, 0, 0);
}

uint64_t sub_24F0ECCAC()
{
  v1 = v0[31];
  v49 = *(v0[14] + 48);
  if (v49(v1, 1, v0[13]) == 1)
  {
    v2 = v0[39];
    (*(v0[33] + 8))(v0[34], v0[32]);
    if (v2)
    {
      v3 = 0;
      v4 = v0[36];
      v5 = v0[11] + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v6 = v0[20];
      v48 = (v6 + 32);
      v46 = (v6 + 8);
      v47 = (v0[25] + 8);
      v50 = MEMORY[0x277D84F90];
      v44 = *(v0[35] + 48);
      v45 = v0[37];
      v43 = *(v4 + 72);
      do
      {
        v15 = v0[40];
        v16 = v0[30];
        v17 = v0[22];
        v18 = v0[19];
        v19 = v0[13];
        sub_24E60169C(v5, v0[37], &unk_27F239450, &qword_24F93B4F0);
        (*v48)(v17, v45 + v44, v18);
        *(swift_task_alloc() + 16) = v17;
        sub_24E7AAD1C(sub_24F0F1964, v15, v16);

        v20 = v49(v16, 1, v19);
        v21 = v0[30];
        if (v20 == 1)
        {
          v22 = v0[16];
          sub_24E601704(v21, &qword_27F21CE28, &unk_24F9C90B0);
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
          (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_24E61798C(0, v50[2] + 1, 1, v50);
          }

          v25 = v50[2];
          v24 = v50[3];
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v27 = sub_24E61798C((v24 > 1), v25 + 1, 1, v50);
            v26 = v25 + 1;
            v50 = v27;
          }

          v7 = v0 + 16;
        }

        else
        {
          v28 = v0[17];
          v29 = v0[15];
          sub_24E6009C8(v21, v28, &qword_27F213800, &qword_24F93B370);
          sub_24E60169C(v28, v29, &qword_27F213800, &qword_24F93B370);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v50 = sub_24E61798C(0, v50[2] + 1, 1, v50);
          }

          v25 = v50[2];
          v30 = v50[3];
          if (v25 >= v30 >> 1)
          {
            v50 = sub_24E61798C((v30 > 1), v25 + 1, 1, v50);
          }

          sub_24E601704(v0[17], &qword_27F213800, &qword_24F93B370);
          v7 = v0 + 15;
          v26 = v25 + 1;
        }

        ++v3;
        v8 = *v7;
        v9 = v0[39];
        v10 = v0[37];
        v11 = v0[24];
        v12 = v0[22];
        v13 = v0[19];
        v14 = v0[14];
        v50[2] = v26;
        sub_24E6009C8(v8, v50 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, &qword_27F213800, &qword_24F93B370);
        (*v47)(v10, v11);
        (*v46)(v12, v13);
        v5 += v43;
      }

      while (v3 != v9);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    v40 = v0[9];

    *v40 = v50;

    v41 = v0[1];

    return v41();
  }

  else
  {
    sub_24E6009C8(v1, v0[18], &qword_27F213800, &qword_24F93B370);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v0[40];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_24E61798C(0, v32[2] + 1, 1, v0[40]);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_24E61798C((v33 > 1), v34 + 1, 1, v32);
    }

    v35 = v0[18];
    v36 = v0[14];
    v32[2] = v34 + 1;
    sub_24E6009C8(v35, v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v34, &qword_27F213800, &qword_24F93B370);
    v0[40] = v32;
    v37 = swift_task_alloc();
    v0[41] = v37;
    *v37 = v0;
    v37[1] = sub_24F0ECBB0;
    v38 = v0[31];
    v39 = v0[32];

    return MEMORY[0x2822002E8](v38, 0, 0, v39);
  }
}

uint64_t sub_24F0ED2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0ED380, 0, 0);
}

uint64_t sub_24F0ED380()
{
  v1 = sub_24F9289A8();
  if (!v1)
  {
    goto LABEL_6;
  }

  if (qword_27F20FEE0 != -1)
  {
    v16 = v1;
    swift_once();
    v1 = v16;
  }

  v2 = v0[6];
  v3 = v1;
  v4 = sub_24F926BD8();
  ColorGrouping.colorGroup(for:)(v4);
  v5 = type metadata accessor for ColorGroup(0);
  v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
  v7 = v0[6];
  if (v6 == 1)
  {
    sub_24E601704(v0[6], &qword_27F2190D8, &unk_24F94BD70);

LABEL_6:
    v8 = 0;
    goto LABEL_8;
  }

  sub_24E77D068(v7);

  sub_24E69A5C4(0, &qword_27F2394A0, 0x277D75348);
  v8 = sub_24F92C3B8();
LABEL_8:
  v0[7] = v8;
  v9 = v0[2];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  v0[8] = v10;
  v11 = *(v10 + 64);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_24F0ED58C;
  v13 = v0[4];
  v14 = v0[5];

  return sub_24EF44798(v9 + v11, v13, v14, v8);
}

uint64_t sub_24F0ED58C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_24F0ED6A8, 0, 0);
}

uint64_t sub_24F0ED6A8()
{
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 80);
  (*(*(v1 - 8) + 56))();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F0ED74C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_24F91F6B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239480, &unk_24F95F050);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v31 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20, &unk_24F9578D0);
  MEMORY[0x28223BE20](v11 - 8);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_24E60169C(a1, v10, &qword_27F213800, &qword_24F93B370);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CDE0, &qword_24F957888);
  if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
  {
    sub_24E601704(v10, &qword_27F213800, &qword_24F93B370);
    v20 = 1;
  }

  else
  {

    (*(v4 + 32))(v18, v10 + *(v19 + 64), v3);
    v20 = 0;
  }

  v21 = *(v4 + 56);
  v21(v18, v20, 1, v3);
  (*(v4 + 16))(v15, v33, v3);
  v21(v15, 0, 1, v3);
  v22 = *(v32 + 48);
  sub_24E60169C(v18, v7, &qword_27F21CE20, &unk_24F9578D0);
  sub_24E60169C(v15, &v7[v22], &qword_27F21CE20, &unk_24F9578D0);
  v23 = v4;
  v24 = *(v4 + 48);
  if (v24(v7, 1, v3) != 1)
  {
    sub_24E60169C(v7, v34, &qword_27F21CE20, &unk_24F9578D0);
    if (v24(&v7[v22], 1, v3) != 1)
    {
      v26 = v23;
      v27 = v31;
      (*(v23 + 32))(v31, &v7[v22], v3);
      sub_24F0F1C94(&unk_27F239490, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v28 = v34;
      v25 = sub_24F92AFF8();
      v29 = *(v26 + 8);
      v29(v27, v3);
      sub_24E601704(v15, &qword_27F21CE20, &unk_24F9578D0);
      sub_24E601704(v18, &qword_27F21CE20, &unk_24F9578D0);
      v29(v28, v3);
      sub_24E601704(v7, &qword_27F21CE20, &unk_24F9578D0);
      return v25 & 1;
    }

    sub_24E601704(v15, &qword_27F21CE20, &unk_24F9578D0);
    sub_24E601704(v18, &qword_27F21CE20, &unk_24F9578D0);
    (*(v23 + 8))(v34, v3);
    goto LABEL_9;
  }

  sub_24E601704(v15, &qword_27F21CE20, &unk_24F9578D0);
  sub_24E601704(v18, &qword_27F21CE20, &unk_24F9578D0);
  if (v24(&v7[v22], 1, v3) != 1)
  {
LABEL_9:
    sub_24E601704(v7, &unk_27F239480, &unk_24F95F050);
    v25 = 0;
    return v25 & 1;
  }

  sub_24E601704(v7, &qword_27F21CE20, &unk_24F9578D0);
  v25 = 1;
  return v25 & 1;
}

void sub_24F0EDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v26 = a4;
  v25 = sub_24F927D88();
  v29 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v27 = *(v13 - 8);
  v28 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  if (qword_27F210EC8 != -1)
  {
    swift_once();
  }

  v24[1] = qword_27F2393E0;
  (*(v17 + 16))(v19, a1, v16);
  v20 = (*(v17 + 80) + 56) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = v26;
  (*(v17 + 32))(v21 + v20, v19, v16);
  aBlock[4] = sub_24F0EF67C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_115;
  v22 = _Block_copy(aBlock);

  sub_24F927DA8();
  v30 = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v23 = v25;
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v15, v12, v22);
  _Block_release(v22);
  (*(v29 + 8))(v12, v23);
  (*(v27 + 8))(v15, v28);
}

void sub_24F0EE0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v22 - v17;
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a4, v12);
  v20 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a3;
  (*(v13 + 32))(v21 + v20, v15, v12);

  sub_24EA998B8(0, 0, v18, &unk_24F9C9020, v21);
}

uint64_t sub_24F0EE2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a7;
  v10 = swift_task_alloc();
  *(v7 + 32) = v10;
  *v10 = v7;
  v10[1] = sub_24F0EE39C;

  return sub_24F0F0634(a5, a6);
}

uint64_t sub_24F0EE39C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_24F0EE49C, 0, 0);
}

uint64_t sub_24F0EE49C()
{
  v0[2] = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820);
  sub_24F92B798();
  v1 = v0[1];

  return v1();
}

double sub_24F0EE524(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v25 = sub_24F927D88();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F927DC8();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v23 = sub_24F92BEF8();
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v21[1] = *(a2 + 24);
  v21[2] = v12;
  v31 = v11;
  (*(v8 + 16))(v10, v22, v7);
  v13 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 1) = *a2;
  *(v14 + 2) = v15;
  *(v14 + 3) = *(a2 + 32);
  (*(v8 + 32))(&v14[v13], v10, v7);
  aBlock[4] = sub_24F0F104C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_17_3;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_24E60169C(&v31, &v29, &qword_27F239400, &qword_24F9C9050);
  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24F0F1C94(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v18 = v24;
  v17 = v25;
  sub_24F92C6A8();
  v19 = v23;
  MEMORY[0x2530518B0](0, v6, v18, v16);
  _Block_release(v16);

  (*(v28 + 8))(v18, v17);
  (*(v26 + 8))(v6, v27);

  return result;
}

uint64_t sub_24F0EE938(uint64_t *a1, uint64_t a2)
{
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v26 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v27 = &v23 - v3;
  v30 = sub_24F921378();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_24F921358();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_24F921348();
  v15 = *(v9 + 16);
  v29 = v8;
  v15(v11, v14, v8);
  sub_24F921388();
  v16 = *a1;
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v16;
  v17 = v28;
  (*(v28 + 16))(v24, v7, v30);
  v18 = v26;
  (*(v26 + 16))(v27, v31, v32);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = (v4 + *(v18 + 80) + v19) & ~*(v18 + 80);
  v21 = swift_allocObject();
  (*(v17 + 32))(v21 + v19, v24, v30);
  (*(v18 + 32))(v21 + v20, v27, v32);
  sub_24F9213E8();

  (*(v28 + 8))(v7, v30);
  return (*(v9 + 8))(v14, v29);
}

uint64_t sub_24F0EEE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v5 = *(v4 - 8);
  v21 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = sub_24F921378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a2, v8);
  v16 = v4;
  (*(v5 + 16))(v7, v22, v4);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v9 + 32))(v19 + v17, v11, v8);
  (*(v5 + 32))(v19 + v18, v7, v16);
  sub_24F1F2908(0, 0, v14, &unk_24F9C9080, v19);

  return sub_24E601704(v14, &unk_27F21B570, &qword_24F93B020);
}

uint64_t sub_24F0EF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return MEMORY[0x2822009F8](sub_24F0EF124, 0, 0);
}

uint64_t sub_24F0EF124()
{
  v1 = sub_24F921368();
  if (v1 >> 62)
  {
    v3 = v1;
    v4 = sub_24F92C738();
    v1 = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v2 = 0;
    goto LABEL_9;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253052270](0);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_14;
    }

    v2 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239438, &unk_24F9C9088);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v6 = *MEMORY[0x277CBFA40];
  *(inited + 32) = *MEMORY[0x277CBFA40];
  v7 = v6;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v9;
  *(inited + 40) = DeviceRGB;
  sub_24E6101C0(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &unk_27F239440, &qword_24F93A9E0);
  if (v2)
  {
    v10 = objc_allocWithZone(MEMORY[0x277CBF758]);
    type metadata accessor for CIImageOption(0);
    sub_24F0F1C94(&qword_27F212680, type metadata accessor for CIImageOption, &unk_24F938DA4);
    swift_unknownObjectRetain_n();
    v11 = sub_24F92AE28();

    v12 = [v10 initWithMTLTexture:v2 options:v11];

    swift_unknownObjectRelease_n();
    if (v12)
    {
      v0[12] = v12;
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
      sub_24F92B798();
      swift_unknownObjectRelease();

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (qword_27F211470 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  v14 = sub_24F9220D8();
  __swift_project_value_buffer(v14, qword_27F39E9A0);
  v15 = sub_24F9220B8();
  v16 = sub_24F92BDB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24E5DD000, v15, v16, "Failed to render three dimensional content", v17, 2u);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v0[11] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  sub_24F92B798();
  swift_unknownObjectRelease();
LABEL_17:
  v18 = v0[1];

  return v18();
}

uint64_t sub_24F0EF490()
{
  sub_24F0EF50C(v0[2], v0[3], v0[4]);

  return swift_deallocClassInstance();
}

uint64_t sub_24F0EF50C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F0EF59C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24F0EF67C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820) - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = v0[5];
  v6 = *(v0 + 6);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_24F0EE0C8(v2, v3, v6, v7, v4, v5);
}

uint64_t sub_24F0EF70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0EF7F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2393F0, &qword_24F952820) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F0EE2EC(a1, v7, v8, v9, v10, v11, v1 + v6);
}

uint64_t sub_24F0EF924(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F0EF970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239450, &qword_24F93B4F0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_24F9289E8();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F0EFA9C, 0, 0);
}

uint64_t sub_24F0EFA9C()
{
  *(v0 + 128) = sub_24F92B7F8();
  *(v0 + 136) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0EFB34, v2, v1);
}

uint64_t sub_24F0EFB34()
{

  sub_24F91FD28();
  v1 = sub_24F91FB18();
  *(v2 + 32) = xmmword_24F9C8F40;
  v1(v0 + 16, 0);

  return MEMORY[0x2822009F8](sub_24F0EFBE4, 0, 0);
}

uint64_t sub_24F0EFBE4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v22 = v0[11];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v19 = (v3 + 8);
    v20 = *(v3 + 72);
    v5 = MEMORY[0x277D84F90];
    v6 = *(v3 + 16);
    do
    {
      v7 = v0[15];
      v9 = v0[12];
      v8 = v0[13];
      v6(v7, v4, v8);
      v6(v9, v7, v8);
      sub_24F91F6A8();
      (*v19)(v7, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E619C18(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      if (v11 >= v10 >> 1)
      {
        v5 = sub_24E619C18((v10 > 1), v11 + 1, 1, v5);
      }

      v12 = v0[12];
      v5[2] = v11 + 1;
      sub_24E6009C8(v12, v5 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v11, &unk_27F239450, &qword_24F93B4F0);
      v4 += v20;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v0[18] = v5;
  v13 = v0[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800, &qword_24F93B370);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *(v15 + 16) = v5;
  *(v15 + 24) = v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239460, qword_24F957820);
  v17 = swift_task_alloc();
  v0[20] = v17;
  *v17 = v0;
  v17[1] = sub_24F0EFE80;

  return MEMORY[0x282200600](v0 + 6, v14, v16, 0, 0, &unk_24F9C90A0, v15, v14);
}

uint64_t sub_24F0EFE80()
{

  return MEMORY[0x2822009F8](sub_24F0EFFB4, 0, 0);
}

uint64_t sub_24F0EFFB4(uint64_t a1)
{
  v1[21] = v1[6];
  v1[22] = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F0F0048, v3, v2);
}

uint64_t sub_24F0F0048()
{

  sub_24E7B5088();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F0F0100()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E9A0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Using main thread for RealityRenderer operations", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = swift_task_alloc();
  v0[4] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239420, &qword_24F9C9068);
  *v7 = v0;
  v7[1] = sub_24F0F02BC;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x800000024FA6BCA0, sub_24F0F0F4C, v6, v8);
}

uint64_t sub_24F0F02BC()
{

  return MEMORY[0x2822009F8](sub_24E626BB4, 0, 0);
}

id sub_24F0F03D4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239408, &unk_24F9C9058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  v3 = *MEMORY[0x277CBF940];
  *(inited + 32) = *MEMORY[0x277CBF940];
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v4 = v3;
  sub_24E610098(inited);
  swift_setDeallocating();
  sub_24E601704(inited + 32, &unk_27F239410, &qword_24F93A9D0);
  v5 = objc_allocWithZone(MEMORY[0x277CBF740]);
  type metadata accessor for CIContextOption(0);
  sub_24F0F1C94(&qword_27F212690, type metadata accessor for CIContextOption, &unk_24F938DE8);
  v6 = sub_24F92AE28();

  v7 = [v5 initWithOptions_];

  [a1 extent];
  v8 = [v7 createCGImage:a1 fromRect:?];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v8 imageOrientation:5];
  }

  else
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E9A0);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Failed to create CIImage.", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    return 0;
  }

  return v10;
}

uint64_t sub_24F0F0634(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_24F0F06CC;

  return sub_24F0E9198((v2 + 2));
}

uint64_t sub_24F0F06CC()
{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F0F0DA4, 0, 0);
  }

  else
  {
    v3 = v2[5];
    v2[18] = v3;
    v4 = swift_task_alloc();
    v2[19] = v4;
    *v4 = v2;
    v4[1] = sub_24F0F0848;
    v5 = v2[15];
    v6 = v2[14];

    return sub_24F0EF970(v6, v5, v3);
  }
}

uint64_t sub_24F0F0848()
{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 160) = v2;
  *v2 = v4;
  v2[1] = sub_24F0F0978;

  return sub_24F0F00E0(v1 + 16);
}

uint64_t sub_24F0F0978(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_24F0F0A78, 0, 0);
}

uint64_t sub_24F0F0A78()
{
  v1 = *(v0 + 168);
  if (!v1)
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v9 = sub_24F9220D8();
    __swift_project_value_buffer(v9, qword_27F39E9A0);
    v5 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (!os_log_type_enabled(v5, v10))
    {
      v3 = 0;
      v7 = (v0 + 64);
      goto LABEL_21;
    }

    v7 = (v0 + 72);
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v10, "CIImage is nil, returning nil", v11, 2u);
    MEMORY[0x2530542D0](v11, -1, -1);
    goto LABEL_20;
  }

  v2 = sub_24F0F03D4(*(v0 + 168));
  if (!v2)
  {
    if (qword_27F211470 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E9A0);
    v5 = sub_24F9220B8();
    v13 = sub_24F92BDB8();
    if (os_log_type_enabled(v5, v13))
    {
      v7 = (v0 + 88);
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v5, v13, "Failed to convert CIImage to platform image", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {
      v7 = (v0 + 80);
    }

LABEL_20:
    v3 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E9A0);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (v0 + 104);
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "Successfully converted to platform image", v8, 2u);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
    v7 = (v0 + 96);
  }

LABEL_21:

  swift_unknownObjectRelease();

  *v7 = *(v0 + 56);
  sub_24E601704(v7, &qword_27F239400, &qword_24F9C9050);

  v15 = *(v0 + 8);

  return v15(v3);
}

uint64_t sub_24F0F0DA4()
{
  if (qword_27F211470 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E9A0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to create renderer components: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_24F0F0F54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F0F104C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070) - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_24F0EE938((v0 + 16), v2);
}

uint64_t sub_24F0F10BC(__n128 a1)
{
  v2 = sub_24F921378();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24F0F1210(uint64_t a1, __n128 a2)
{
  v4 = *(sub_24F921378() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_24F0EEE30(a1, v2 + v5, v8);
}

uint64_t sub_24F0F12F0(__n128 a1)
{
  v2 = sub_24F921378();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_24F0F144C(uint64_t a1, __n128 a2)
{
  v4 = v3;
  v6 = *(sub_24F921378() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F239428, &qword_24F9C9070) - 8);
  v10 = (v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_24E6541E4;

  return sub_24F0EF104(a1, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_24F0F15A8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24E6541E4;

  return sub_24F0EC3FC(a1, a2, v7, v6);
}

uint64_t sub_24F0F165C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F0F17C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F9289E8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24F91F6B8() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F0ED2E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_24F0F192C()
{

  return swift_deallocObject();
}

double sub_24F0F1984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_24F0F1A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F0E9C74(a1, v4, v5, v6);
}

uint64_t sub_24F0F1AE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24E6541E4;

  return sub_24F0EBB08(a1, v1);
}

unint64_t sub_24F0F1B84()
{
  result = qword_27F2394D0;
  if (!qword_27F2394D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394D0);
  }

  return result;
}

uint64_t sub_24F0F1BE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F0EBCC8(a1, v4, v5, v6);
}

uint64_t sub_24F0F1C94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F0F1CF0()
{
  result = qword_27F2394F8;
  if (!qword_27F2394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2394F8);
  }

  return result;
}

void sub_24F0F1D50(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24E643A9C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_24E612B0C(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_24E601704(v20, &qword_27F234F80, &unk_24F9B5740);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t PageChangeMetrics.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageChangeMetrics.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t PageChangeMetrics.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_24F9285B8();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - v12;
  v14 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v28 = *(v7 + 8);
  v29 = v6;
  v28(v10, v6);
  v15 = sub_24F928E68();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_24E601704(v13, qword_27F221C40, &unk_24F967D80);
  }

  else
  {
    v17 = sub_24F928E48();
    (*(v16 + 8))(v13, v15);
    if (v17)
    {
      goto LABEL_5;
    }
  }

  v17 = sub_24E608448(MEMORY[0x277D84F90]);

LABEL_5:
  v18 = v33;
  v19 = v14;
  v20 = v31;
  *(v33 + 16) = v17;
  sub_24F928398();
  v21 = v32;
  (*(v3 + 16))(v5, v32, v20);
  sub_24F928698();
  v22 = v30;
  v23 = sub_24F92B678();
  v24 = v20;
  if (v22)
  {
    (*(v3 + 8))(v21, v20);
    v28(v19, v29);

    type metadata accessor for PageChangeMetrics();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25 = v23;
    (*(v3 + 8))(v21, v24);
    v28(v19, v29);
    *(v18 + 24) = v25;
  }

  return v18;
}

uint64_t sub_24F0F22FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = 0;
  v7 = sub_24F9287F8();
  v73 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928738();
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  MEMORY[0x28223BE20](v14);
  v86 = &v66 - v15;
  MEMORY[0x28223BE20](v16);
  v84 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = sub_24F928818();
  (*(*(v21 - 8) + 16))(a2, a1, v21);
  v22 = v96;
  v71 = a2;
  v24 = sub_24F9286B8();
  v25 = *v23;
  v67 = v3;
  if (v25)
  {
    v26 = v23;
    v22 = *(v3 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v26;
    *v26 = 0x8000000000000000;
    sub_24F0F41A0(v22, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, &v95);
    v68 = 0;

    *v26 = v95;
  }

  else
  {
    v68 = 0;
  }

  v24(v96, 0);
  v28 = v71;
  v69 = sub_24F928758();
  v87 = v29;
  v30 = *v29;
  v83 = *(*v29 + 16);
  if (v83)
  {
    v31 = 0;
    v32 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v85 = v30 + v32;
    v92 = v73 + 16;
    v91 = (v73 + 8);
    v78 = (v72 + 8);
    v89 = v20;
    v90 = v10;
    v79 = v32;
    v82 = v72 + 16;
    v77 = v30;
    while (v31 < *(v30 + 2))
    {
      v81 = *(v72 + 72);
      v33 = *(v72 + 16);
      v33(v20, v85 + v81 * v31, v10);
      v28 = v20;
      v22 = sub_24F9286D8();
      if (qword_27F210040 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v7, qword_27F2230B8);
      if (v22[2])
      {
        v35 = v34;
        v36 = sub_24EA0A388(&qword_27F21E608, MEMORY[0x277D21BE8]);
        v88 = v35;
        v28 = v35;
        v74 = v36;
        v37 = sub_24F92AEE8();
        v38 = -1 << *(v22 + 32);
        v6 = v37 & ~v38;
        if ((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
        {
          v80 = v33;
          v39 = ~v38;
          v40 = *(v73 + 72);
          v93 = *(v73 + 16);
          v94 = v40;
          while (1)
          {
            v93(v9, v22[6] + v94 * v6, v7);
            v10 = sub_24EA0A388(&qword_27F21E610, MEMORY[0x277D21BF0]);
            v28 = sub_24F92AFF8();
            v41 = *v91;
            (*v91)(v9, v7);
            if (v28)
            {
              break;
            }

            v6 = (v6 + 1) & v39;
            if (((*(v22 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v77 = *v78;
          v77(v89, v90);
          v6 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_61;
          }

          v42 = v31;
          v43 = *v87;
          v44 = *(*v87 + 16);
          if (v6 != v44)
          {
            v70 = (v72 + 40);
            v51 = v79;
            v22 = v88;
            while (v6 < v44)
            {
              v85 = v42;
              v89 = v6;
              v83 = v6 * v81;
              v28 = v84;
              v80(v84, v43 + v51 + v6 * v81, v90);
              v52 = sub_24F9286D8();
              if (*(v52 + 16) && (v28 = v22, v53 = sub_24F92AEE8(), v54 = -1 << *(v52 + 32), v55 = v53 & ~v54, ((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0))
              {
                v56 = ~v54;
                while (1)
                {
                  v93(v9, *(v52 + 48) + v55 * v94, v7);
                  v28 = sub_24F92AFF8();
                  v41(v9, v7);
                  if (v28)
                  {
                    break;
                  }

                  v55 = (v55 + 1) & v56;
                  if (((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                v77(v84, v90);
                v42 = v85;
                v51 = v79;
                v6 = (v89 + 1);
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_53;
                }
              }

              else
              {
LABEL_34:

                v77(v84, v90);
                v57 = v85;
                v6 = v89;
                v51 = v79;
                if (v85 != v89)
                {
                  if ((v85 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_55;
                  }

                  v28 = *v87;
                  v58 = *(*v87 + 16);
                  if (v85 >= v58)
                  {
                    goto LABEL_56;
                  }

                  v59 = v28 + v79;
                  v73 = v85 * v81;
                  v60 = v90;
                  v6 = v82;
                  v22 = v80;
                  v80(v76, v28 + v79 + v85 * v81, v90);
                  if (v89 >= v58)
                  {
                    goto LABEL_57;
                  }

                  (v22)(v75, v59 + v83, v60);
                  v61 = swift_isUniquelyReferenced_nonNull_native();
                  *v87 = v28;
                  if ((v61 & 1) == 0)
                  {
                    v28 = sub_24ECDE2CC(v28);
                    *v87 = v28;
                  }

                  v57 = v85;
                  v6 = v89;
                  v22 = v70;
                  if (v85 >= *(v28 + 16))
                  {
                    goto LABEL_58;
                  }

                  v62 = v79;
                  v63 = *v70;
                  v64 = v28 + v79 + v73;
                  v28 = v90;
                  (*v70)(v64, v75, v90);
                  if (v6 >= *(*v87 + 16))
                  {
                    goto LABEL_59;
                  }

                  v63(*v87 + v62 + v83, v76, v28);
                  v51 = v62;
                  v22 = v88;
                }

                v65 = __OFADD__(v57, 1);
                v42 = v57 + 1;
                if (v65)
                {
                  goto LABEL_54;
                }

                v65 = __OFADD__(v6++, 1);
                if (v65)
                {
                  goto LABEL_53;
                }
              }

              v43 = *v87;
              v44 = *(*v87 + 16);
              if (v6 == v44)
              {
                goto LABEL_18;
              }
            }

            goto LABEL_52;
          }

LABEL_18:
          v10 = v90;
          if (v6 >= v42)
          {
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_20;
        }
      }

LABEL_6:

      v20 = v89;
      v10 = v90;
      (*v78)(v89, v90);
      ++v31;
      v30 = v77;
      if (v31 == v83)
      {
        v42 = *(*v87 + 16);
        v6 = v42;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_20:
    v42 = 0;
    v6 = 0;
LABEL_21:
    sub_24F14A188(v42, v6);
    v69(v96, 0);
    v45 = sub_24F928768();
    v28 = MEMORY[0x277D84F90];
    v96[0] = MEMORY[0x277D84F90];
    v46 = *(v45 + 16);
    if (!v46)
    {
LABEL_26:

      return sub_24F928778();
    }

    v47 = 0;
    v48 = v72;
    v22 = (v72 + 8);
    v6 = v68;
    v49 = v67;
    while (v47 < *(v45 + 16))
    {
      v28 = v86;
      (*(v48 + 16))(v86, v45 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v47, v10);
      sub_24F0F2DB4(v28, v49, &v95);
      if (v6)
      {
        goto LABEL_62;
      }

      ++v47;
      (*v22)(v28, v10);
      v28 = v96;
      sub_24EA0B7DC(v95);
      if (v46 == v47)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:

  (*v22)(v28, v10);

  __break(1u);

  *v28 = v95;

  __break(1u);
  return result;
}

void sub_24F0F2DB4(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v99 = a3;
  v5 = sub_24F928738();
  v6 = *(v5 - 8);
  v102 = v5;
  v103 = v6;
  MEMORY[0x28223BE20](v5);
  v92 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v84 - v9;
  MEMORY[0x28223BE20](v10);
  v95 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v84 - v16;
  v17 = sub_24F928698();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v94 = &v84 - v28;
  MEMORY[0x28223BE20](v29);
  v100 = &v84 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v84 - v32;
  sub_24F928718();
  v34 = sub_24F928688();
  v97 = *(v18 + 8);
  v98 = v18 + 8;
  v97(v33, v17);
  if (*(v34 + 16) && (v35 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v36 & 1) != 0))
  {
    sub_24E643A9C(*(v34 + 56) + 32 * v35, v106);

    v37 = swift_dynamicCast();
    if (v37)
    {
      v38 = v105[0];
    }

    else
    {
      v38 = 0;
    }

    if (v37)
    {
      v39 = v105[1];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {

    v38 = 0;
    v39 = 0;
  }

  v40 = v101;
  v91 = v38;
  sub_24F0F3904(v96, v38, v39, a1, v101);
  sub_24F0F4130(v40, v14);
  if ((*(v18 + 48))(v14, 1, v17) == 1)
  {

    sub_24E601704(v14, &qword_27F21EB88, &unk_24F95FAF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8, &qword_24F9C9260);
    v41 = v103;
    v42 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_24F93DE60;
    (*(v41 + 16))(v43 + v42, a1, v102);
    v44 = v40;
LABEL_27:
    sub_24E601704(v44, &qword_27F21EB88, &unk_24F95FAF0);
LABEL_28:
    *v99 = v43;
    return;
  }

  v88 = v39;
  v89 = v18;
  (*(v18 + 32))();
  v45 = *(v103 + 16);
  v46 = v95;
  v96 = v103 + 16;
  v90 = v45;
  v45(v95, a1, v102);
  sub_24F928718();
  v87 = sub_24F928668();
  *&v86 = v47;
  v48 = v17;
  v49 = v17;
  v50 = v97;
  v97(v26, v48);
  if (sub_24F928608())
  {
    v85 = 1;
  }

  else
  {
    sub_24F928718();
    v85 = sub_24F928608();
    v50(v23, v49);
  }

  v51 = v107;
  sub_24F928718();
  v52 = sub_24F928688();
  v50(v20, v49);
  v53 = sub_24F928688();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v52;
  sub_24F0F41A0(v53, sub_24F05AC64, 0, isUniquelyReferenced_nonNull_native, v106);
  v107 = v51;
  if (!v51)
  {

    v84 = v106[0];
    sub_24F928718();
    v55 = sub_24F928648();
    v50(v23, v49);
    v56 = sub_24F928648();
    sub_24F146F5C(v56, v55);
    sub_24F928718();
    v57 = sub_24F928638();
    v50(v23, v49);
    v58 = sub_24F928638();
    sub_24F146F88(v58, v57);
    v59 = v94;
    sub_24F928658();
    (*(v89 + 16))(v23, v59, v49);
    sub_24F928728();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2138D8, &qword_24F9C9260);
    v60 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v89 = *(v103 + 72);
    v43 = swift_allocObject();
    v86 = xmmword_24F93DE60;
    *(v43 + 16) = xmmword_24F93DE60;
    v87 = v60;
    v61 = v102;
    v90(v43 + v60, v46, v102);
    v62 = v101;
    v63 = v93;
    v64 = v49;
    if (v88)
    {
      if (v91 == 1701273968 && v88 == 0xE400000000000000)
      {

LABEL_21:
        v66 = v90;
        v90(v63, v46, v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225310, &qword_24F9758B0);
        v67 = sub_24F9287F8();
        v68 = *(v67 - 8);
        v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
        v70 = swift_allocObject();
        *(v70 + 16) = v86;
        if (qword_27F210040 != -1)
        {
          swift_once();
        }

        v71 = __swift_project_value_buffer(v67, qword_27F2230B8);
        (*(v68 + 16))(v70 + v69, v71, v67);
        sub_24E802380(v70);
        swift_setDeallocating();
        (*(v68 + 8))(v70 + v69, v67);
        swift_deallocClassInstance();
        sub_24F9286E8();
        v106[3] = MEMORY[0x277D837D0];
        v106[0] = 0x6E61684365676170;
        v106[1] = 0xEA00000000006567;
        v72 = sub_24F928708();
        v73 = sub_24F928678();
        sub_24E98859C(v106, 0x707954746E657665, 0xE900000000000065);
        v73(v104, 0);
        v72(v105, 0);
        v66(v92, v63, v102);
        v75 = *(v43 + 16);
        v74 = *(v43 + 24);
        v96 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v43 = sub_24E6193B0((v74 > 1), v75 + 1, 1, v43);
        }

        v76 = v103;
        v77 = *(v103 + 8);
        v78 = v63;
        v79 = v102;
        v77(v78, v102);
        v80 = v64;
        v81 = v64;
        v82 = v97;
        v97(v94, v80);
        v77(v95, v79);
        v82(v100, v81);
        sub_24E601704(v101, &qword_27F21EB88, &unk_24F95FAF0);
        *(v43 + 16) = v96;
        (*(v76 + 32))(v43 + v87 + v75 * v89, v92, v79);
        goto LABEL_28;
      }

      v65 = sub_24F92CE08();

      if (v65)
      {
        goto LABEL_21;
      }
    }

    v83 = v97;
    v97(v59, v49);
    (*(v103 + 8))(v46, v61);
    v83(v100, v49);
    v44 = v62;
    goto LABEL_27;
  }

  __break(1u);
}

void sub_24F0F3904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v51 = a5;
  v61 = a3;
  v52 = a2;
  v6 = sub_24F928698();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v10;
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);
  v56 = v7;
  v60 = v18;
  if (!v18)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_24:
    if (!v61 || (v52 != 0x6973736572706D69 || v61 != 0xEB00000000736E6FLL) && (sub_24F92CE08() & 1) == 0)
    {
      if (*(v20 + 16))
      {
        v41 = v51;
        (*(v7 + 16))(v51, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6, v14);

LABEL_58:
        v47 = 0;
      }

      else
      {

        v47 = 1;
        v41 = v51;
      }

      goto LABEL_59;
    }

    v32 = v49;
    sub_24F928718();
    v33 = sub_24F928688();
    v34 = *(v7 + 8);
    v34(v32, v6);
    if (*(v33 + 16) && (v35 = sub_24E76D644(0x6973736572706D69, 0xEF65756575516E6FLL), (v36 & 1) != 0))
    {
      sub_24E643A9C(*(v33 + 56) + 32 * v35, v64);

      v37 = swift_dynamicCast();
      v38 = v62;
      if (!v37)
      {
        v38 = 0;
      }

      v61 = v38;
      if (v37)
      {
        v39 = v63;
      }

      else
      {
        v39 = 0;
      }

      v40 = *(v20 + 16);
      if (!v40)
      {
        goto LABEL_54;
      }
    }

    else
    {

      v61 = 0;
      v39 = 0;
      v40 = *(v20 + 16);
      if (!v40)
      {
LABEL_54:

        v47 = 1;
        v41 = v51;
        v7 = v56;
LABEL_59:
        (*(v7 + 56))(v41, v47, 1, v6);
        return;
      }
    }

    v42 = 0;
    while (1)
    {
      if (v42 >= *(v20 + 16))
      {
        goto LABEL_63;
      }

      (*(v56 + 16))(v54, v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v6);
      v43 = sub_24F928688();
      if (*(v43 + 16) && (v44 = sub_24E76D644(0x6973736572706D69, 0xEF65756575516E6FLL), (v45 & 1) != 0))
      {
        sub_24E643A9C(*(v43 + 56) + 32 * v44, v64);

        if (swift_dynamicCast())
        {
          if (v39)
          {
            if (v62 == v61 && v39 == v63)
            {

LABEL_61:

LABEL_57:
              v7 = v56;
              v41 = v51;
              (*(v56 + 32))(v51, v54, v6);
              goto LABEL_58;
            }

            v46 = sub_24F92CE08();

            if (v46)
            {

              goto LABEL_61;
            }
          }

          else
          {
          }

          goto LABEL_43;
        }
      }

      else
      {
      }

      if (!v39)
      {

        goto LABEL_57;
      }

LABEL_43:
      ++v42;
      v34(v54, v6);
      if (v40 == v42)
      {
        goto LABEL_54;
      }
    }
  }

  v19 = 0;
  v59 = v7 + 16;
  v55 = (v7 + 8);
  v20 = MEMORY[0x277D84F90];
  v57 = (v7 + 32);
  v53 = v6;
  while (v19 < *(v17 + 16))
  {
    v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = *(v7 + 72);
    (*(v7 + 16))(v16, v17 + v21 + v22 * v19, v6, v14);
    v23 = sub_24F928688();
    if (!*(v23 + 16) || (v24 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v25 & 1) == 0))
    {

LABEL_15:
      if (!v61)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    sub_24E643A9C(*(v23 + 56) + 32 * v24, v64);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_15;
    }

    if (v61)
    {
      if (v62 == v52 && v63 == v61)
      {

LABEL_16:
        v26 = *v57;
        (*v57)(v58, v16, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24F458D64(0, *(v20 + 16) + 1, 1);
          v20 = v65;
        }

        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_24F458D64((v28 > 1), v29 + 1, 1);
          v20 = v65;
        }

        *(v20 + 16) = v29 + 1;
        v30 = v20 + v21 + v29 * v22;
        v6 = v53;
        v26(v30, v58, v53);
        v7 = v56;
        goto LABEL_5;
      }

      v31 = sub_24F92CE08();

      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_4:
    (*v55)(v16, v6);
LABEL_5:
    if (v60 == ++v19)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t PageChangeMetrics.deinit()
{

  return v0;
}

uint64_t PageChangeMetrics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F0F4064@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for PageChangeMetrics();
  v7 = swift_allocObject();
  result = PageChangeMetrics.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F0F4130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24F0F41A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_24F0F1D50(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_24E612B0C(v45, v43);
  v14 = *a5;
  v15 = sub_24E76D644(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24E89873C(v20, a4 & 1);
    v15 = sub_24E76D644(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_24F92CF88();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_24E8AD8E4();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24E612B0C(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_24E612B0C(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_24F0F1D50(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_24E612B0C(v45, v43);
        v32 = *a5;
        v33 = sub_24E76D644(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_24E89873C(v37, 1);
          v33 = sub_24E76D644(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_24E612B0C(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_24E612B0C(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_24F0F1D50(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_24E6586B4(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_24F0F44DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F7A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F924A78();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  if (*v2)
  {
    v64 = a1;
    sub_24F924A68();
    v59 = v4;
    v14 = sub_24F924A58();
    v15 = *(v2 + 8);
    v62 = *(v2 + 16);
    v63 = v15;
    v16 = v15(v14);
    v60 = v9;
    v61 = v8;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_24F924A28();
    sub_24E600B40(v17, v19, v21 & 1);

    v22 = sub_24F924A58();
    v23 = (*(v2 + 24))(v22);
    v25 = v24;
    v27 = v26;
    sub_24F924A28();
    sub_24E600B40(v23, v25, v27 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v28 = sub_24F925DE8();
    v30 = v29;
    v32 = v31;
    sub_24F91F778();
    sub_24F91F708();
    (*(v5 + 8))(v7, v59);
    sub_24F91F788();
    v33 = sub_24F91F798();
    (*(v60 + 8))(v11, v61);
    if (v33 == 2)
    {
      v34 = sub_24F925C78();
      v36 = v35;
      v38 = v37;
    }

    else
    {
      sub_24E5FD138(v28, v30, v32 & 1);

      v34 = v28;
      v36 = v30;
      v38 = v32;
    }

    sub_24E600B40(v28, v30, v32 & 1);

    v47 = v63(v46);
    v49 = v48;
    v51 = v50;
    v52 = sub_24F925C68();
    v62 = v53;
    v63 = v52;
    v55 = v54;
    v57 = v56;
    sub_24E600B40(v47, v49, v51 & 1);

    sub_24E600B40(v34, v36, v38 & 1);

    v65 = v63;
    v66 = v55;
    v67 = v57 & 1;
    v68 = v62;
    v69 = 0;
    result = sub_24F924E28();
    v43 = v70;
    v44 = v71;
    v45 = v72;
    a1 = v64;
  }

  else
  {
    v65 = (*(v2 + 8))(v13);
    v66 = v40;
    v67 = v39 & 1;
    v68 = v41;
    v69 = 1;
    result = sub_24F924E28();
    v43 = v70;
    v44 = v71;
    v45 = v72;
  }

  *a1 = v43;
  *(a1 + 16) = v44;
  *(a1 + 32) = v45;
  return result;
}

id static SpacerSupplementary.makeTopSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_24F92B098();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:1 absoluteOffset:{0.0, -a2}];

  return v9;
}

id static SpacerSupplementary.makeBottomSpacer(height:verticalOffset:)(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 fractionalWidthDimension_];
  v6 = [v4 absoluteDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v5 heightDimension:v6];

  v8 = sub_24F92B098();
  v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:5 absoluteOffset:{0.0, a2}];

  return v9;
}

double static SpacerSupplementary.makeSpacerRegistration(elementKind:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SpacerSupplementary();
  v6 = static UICollectionReusableView.defaultReuseIdentifier.getter();
  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = CGSizeMake;
  a3[5] = 0;

  return result;
}

id SpacerSupplementary.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SpacerSupplementary.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id SpacerSupplementary.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SpacerSupplementary.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SpacerSupplementary();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SpacerSupplementary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpacerSupplementary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ShelfLayoutSpacingProvider.topPadding(in:)(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22A30];
  a1[3] = MEMORY[0x277D839F8];
  a1[4] = v1;
  *a1 = 0;
}

double ShelfLayoutSpacingProvider.topPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v15, a1, a2, a3, v8);
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  type metadata accessor for ShelfLayoutContext(0);
  sub_24E8ED7D8(v11);
  v12 = sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.bottomPaddingValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(v15, a1, a2, a3, v8);
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  type metadata accessor for ShelfLayoutContext(0);
  sub_24E8ED7D8(v11);
  v12 = sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.topContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 24))(v15, a1, a2, a3, v8);
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  type metadata accessor for ShelfLayoutContext(0);
  sub_24E8ED7D8(v11);
  v12 = sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

double ShelfLayoutSpacingProvider.bottomContentInsetValue(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 32))(v15, a1, a2, a3, v8);
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  type metadata accessor for ShelfLayoutContext(0);
  sub_24E8ED7D8(v11);
  v12 = sub_24F9223A8();
  (*(v7 + 8))(v10, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

void sub_24F0F5514(void *a1@<X8>)
{
  v1 = MEMORY[0x277D22A30];
  a1[3] = MEMORY[0x277D839F8];
  a1[4] = v1;
  *a1 = 0;
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v39 - v4;
  v5 = sub_24F91F6B8();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = v17;
  v22 = *(v9 + 8);
  v22(v21, v8);
  v43 = v20;
  if (v20)
  {
    v42 = v18;
    sub_24F928398();
    v23 = sub_24F928348();
    if (v24)
    {
      v46 = v23;
      v47 = v24;
    }

    else
    {
      sub_24F91F6A8();
      v28 = sub_24F91F668();
      v39 = a1;
      v29 = v22;
      v31 = v30;
      (*(v40 + 8))(v7, v41);
      v46 = v28;
      v47 = v31;
      v22 = v29;
      a1 = v39;
    }

    sub_24F92C7F8();
    v22(v14, v8);
    sub_24F928398();
    sub_24E9C07DC();
    sub_24F928208();
    v22(v11, v8);
    v32 = v49[1];
    type metadata accessor for ProductRatingsAndReviewsMessage(0);
    v33 = (swift_allocObject() + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
    v34 = v43;
    *v33 = v42;
    v33[1] = v34;
    sub_24E65E064(v48, &v46);
    v49[0] = v32;
    v35 = sub_24F929608();
    v36 = v44;
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v25 = sub_24E9C00B8(&v46, v49, v36);
    v37 = sub_24F9285B8();
    (*(*(v37 - 8) + 8))(v45, v37);
    v22(a1, v8);
    sub_24E601704(v48, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v26 = 0x546567617373656DLL;
    v26[1] = 0xEB00000000747865;
    v26[2] = v42;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    v27 = sub_24F9285B8();
    (*(*(v27 - 8) + 8))(v45, v27);
    v22(a1, v8);
  }

  return v25;
}

uint64_t ProductRatingsAndReviewsMessage.__allocating_init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9 - 8];
  v11 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v12 = (v11 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_24E65E064(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = sub_24E9C00B8(v17, &v16 + 7, v10);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v14;
}

uint64_t ProductRatingsAndReviewsMessage.init(id:componentType:messageText:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10 - 8];
  LOBYTE(a2) = *a2;
  v12 = (v4 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);
  *v12 = a3;
  v12[1] = a4;
  sub_24E65E064(a1, v17);
  HIBYTE(v16) = a2;
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = sub_24E9C00B8(v17, &v16 + 7, v11);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v14;
}

uint64_t type metadata accessor for ProductRatingsAndReviewsMessage(uint64_t a1)
{
  result = qword_27F239500;
  if (!qword_27F239500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProductRatingsAndReviewsMessage.messageText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit31ProductRatingsAndReviewsMessage_messageText);

  return v1;
}

uint64_t ProductRatingsAndReviewsMessage.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t ProductRatingsAndReviewsMessage.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

__n128 FootnoteLayout.init(metrics:labelView:chevronView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  *(a4 + 144) = *(a1 + 64);
  *(a4 + 160) = v6;
  *(a4 + 176) = *(a1 + 96);
  *(a4 + 192) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v7;
  v8 = *(a1 + 48);
  *(a4 + 112) = *(a1 + 32);
  *(a4 + 128) = v8;
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t FootnoteLayout.Metrics.init(textSpace:bottomSpace:chevronMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E612C80(a1, a4);
  sub_24E612C80(a2, a4 + 40);

  return sub_24E612C80(a3, a4 + 80);
}

uint64_t FootnoteLayout.Metrics.textSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t FootnoteLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t FootnoteLayout.Metrics.chevronMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

double static FootnoteLayout.estimatedMeasurements(fitting:using:in:)(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v10(v8, v5);
  return a3;
}

double FootnoteLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v3 + 5), &v15);
  if (v16)
  {
    sub_24E612C80(&v15, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_24F922298();
    v10 = v3[23];
    __swift_project_boxed_opaque_existential_1(v4 + 20, v4[23]);
    sub_24E8ED7D8(v10);
    sub_24F9223A8();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E942EA8(&v15);
  }

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_24F922288();
  v11 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 10, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 15, v13);
  sub_24E8ED7D8(v13);
  sub_24F9223A8();
  v12(v9, v6);
  return a2;
}

uint64_t FootnoteLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E94275C((v5 + 5), &v42);
  if (v43)
  {
    sub_24E612C80(&v42, v44);
    v15 = v5[23];
    __swift_project_boxed_opaque_existential_1(v6 + 20, v6[23]);
    sub_24E8ED7D8(v15);
    v16 = sub_24F9223A8();
    v41 = v16;
    (*(v12 + 8))(v14, v11);
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24F922298();
    v18 = v17;
    v37 = v19;
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    Width = CGRectGetWidth(v46);
    v40 = v18;
    v39 = Width - v16 - v18;
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    CGRectGetHeight(v47);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_24F922288();
    v22 = v21;
    v24 = v23;
    v36 = a4;
    __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
    sub_24F9223C8();
    v26 = v25;
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    MinX = CGRectGetMinX(v48);
    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    MinY = CGRectGetMinY(v49);
    if (v39 >= v22)
    {
      v29 = v22;
    }

    else
    {
      v29 = v39;
    }

    v30 = v26 + MinY;
    v31 = v37;
    v50.origin.x = MinX;
    v50.origin.y = v30;
    v50.size.width = v29;
    v50.size.height = v24;
    v39 = v41 + CGRectGetMaxX(v50);
    v51.origin.x = MinX;
    v51.origin.y = v30;
    v51.size.width = v29;
    v41 = v24;
    v51.size.height = v24;
    v38 = floor(CGRectGetMidY(v51) + v31 * -0.5);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_24E942EA8(&v42);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_24F922288();
    v33 = v32;
    __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
    v41 = v33;
    sub_24F9223C8();
    v40 = v34;
    v52.origin.x = a2;
    v52.origin.y = a3;
    v52.size.width = a4;
    v52.size.height = a5;
    CGRectGetMinX(v52);
    v53.origin.x = a2;
    v53.origin.y = a3;
    v53.size.width = a4;
    v53.size.height = a5;
    CGRectGetMinY(v53);
    v54.origin.x = a2;
    v54.origin.y = a3;
    v54.size.width = a4;
    v54.size.height = a5;
    CGRectGetWidth(v54);
    v38 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E94275C((v6 + 5), v44);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(v44, v45);
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    sub_24E942EA8(v44);
  }

  return sub_24F922128();
}

unint64_t sub_24F0F6CCC()
{
  result = qword_27F239510;
  if (!qword_27F239510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239510);
  }

  return result;
}

double sub_24F0F6D20(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v11 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  v10(v8, v5);
  return a3;
}

uint64_t EditorialMediaPlacement.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_24F92CB88();

    if (v10 < 4)
    {

      v11 = sub_24F9285B8();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_24F928388();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaPlacement;
    v18 = MEMORY[0x277D22520];
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x277D84F90];
    *v15 = &type metadata for EditorialMediaPlacement;
    v15[1] = v17;
    v18 = MEMORY[0x277D22538];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_24F9285B8();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_24F928388();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

GameStoreKit::EditorialMediaPlacement_optional __swiftcall EditorialMediaPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EditorialMediaPlacement.rawValue.getter()
{
  v1 = 1869768040;
  v2 = 0x72614379726F7473;
  if (*v0 != 2)
  {
    v2 = 0x74654479726F7473;
  }

  if (*v0)
  {
    v1 = 0x657242656772616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F0F720C()
{
  result = qword_27F239518;
  if (!qword_27F239518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239518);
  }

  return result;
}

uint64_t sub_24F0F7260()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0F7334(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F0F73F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F0F74D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1869768040;
  v4 = 0xE900000000000064;
  v5 = 0x72614379726F7473;
  if (*v1 != 2)
  {
    v5 = 0x74654479726F7473;
    v4 = 0xEB000000006C6961;
  }

  if (*v1)
  {
    v3 = 0x657242656772616CLL;
    v2 = 0xED000074756F6B61;
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

uint64_t LockupMediaLayout.DisplayType.numberOfViews.getter()
{
  v1 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F0F7DDC(v0, v3, type metadata accessor for LockupMediaLayout.DisplayType);
  v4 = sub_24F922348();
  LODWORD(result) = (*(*(v4 - 8) + 48))(v3, 6, v4);
  if (result <= 2)
  {
    if (!result)
    {
      sub_24F0F76C8(v3);
      return 1;
    }

    if (result != 1)
    {
      return 2;
    }

    return 1;
  }

  if (result > 4)
  {
    return result == 5;
  }

  if (result == 3)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t sub_24F0F76C8(uint64_t a1)
{
  v2 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LockupMediaLayout.init(metrics:mediaViews:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LockupMediaLayout(0);
  result = sub_24F0F78EC(a1, a3 + *(v6 + 20), type metadata accessor for LockupMediaLayout.Metrics);
  *a3 = a2;
  return result;
}

uint64_t LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for LockupMediaLayout.Metrics(0);
  v11 = v10[7];
  v12 = sub_24F922348();
  v13 = *(v12 - 8);
  (*(v13 + 56))(a5 + v11, 1, 1, v12);
  sub_24E612C80(a1, a5);
  sub_24F0F78EC(a2, a5 + v10[5], type metadata accessor for LockupMediaLayout.DisplayType);
  (*(v13 + 32))(a5 + v10[6], a3, v12);

  return sub_24F028178(a4, a5 + v11);
}

uint64_t sub_24F0F78EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.interItemSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t LockupMediaLayout.Metrics.displayType.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);

  return sub_24F0F7A44(a1, v3);
}

uint64_t sub_24F0F7A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockupMediaLayout.Metrics.mediaAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 24);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_24F028328(v3, a1);
}

uint64_t LockupMediaLayout.Metrics.boundingAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LockupMediaLayout.Metrics(0) + 28);

  return sub_24F028178(a1, v3);
}

uint64_t sub_24F0F7DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void LockupMediaLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = (v3 + *(type metadata accessor for LockupMediaLayout(0) + 20));

  _s12GameStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v7, a1, a2, a3);
}

void LockupMediaLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v72 = a1;
  v58[3] = a2;
  v12 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F92CDB8();
  v14 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v58 - v17;
  v19 = sub_24F922348();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v58 - v24;
  v26 = (v7 + *(type metadata accessor for LockupMediaLayout(0) + 20));
  v64 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_24F028328(v26 + *(v64 + 28), v18);
  v27 = *(v20 + 48);
  v63 = v20 + 48;
  v62 = v27;
  if (v27(v18, 1, v19) == 1)
  {
    sub_24F0F8BDC(v18);
    v28 = a5;
    v29 = a6;
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v31 = v30;
    sub_24F9222E8();
    if (v32 >= v31)
    {
      sub_24F922308();
      v29 = v34;
      v28 = a5;
    }

    else
    {
      sub_24F9222F8();
      v28 = v33;
      v29 = a6;
    }

    v35 = *(v20 + 8);
    v35(v22, v19);
    v35(v25, v19);
  }

  v36 = [v72 traitCollection];
  *&v58[2] = v28;
  *&v58[1] = v29;
  v37 = _s12GameStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(v26, v36, v28, v29);
  v70 = v38;

  v39 = 0;
  v40 = *v7;
  v67 = *(*v7 + 16);
  v60 = v40;
  v59 = v40 + 32;
  v61 = (v14 + 8);
  *&v58[7] = v37 * 4.0;
  *&v58[6] = v37 * 3.0;
  *&v58[5] = v37 + v37;
  *&v58[4] = v37 * 0.5;
  while (1)
  {
    v41 = 0uLL;
    v42 = v67;
    v43 = 0uLL;
    v44 = 0uLL;
    if (v39 == v67)
    {
      goto LABEL_13;
    }

    if (v39 >= *(v60 + 16))
    {
      break;
    }

    v42 = v39 + 1;
    *&v73 = v39;
    sub_24E615E00(v59 + 40 * v39, &v73 + 8);
    v41 = v73;
    v43 = v74;
    v44 = v75;
LABEL_13:
    v76[0] = v41;
    v76[1] = v43;
    v76[2] = v44;
    if (!v44)
    {
      sub_24F922128();
      return;
    }

    v39 = v42;
    v69 = v41;
    v45 = v19;
    sub_24E612C80((v76 + 8), &v73);
    v71 = __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    v46 = v26[3];
    __swift_project_boxed_opaque_existential_1(v26, v46);
    v47 = v65;
    sub_24E8ED7D8(v46);
    v48 = v72;
    sub_24F9223A8();
    (*v61)(v47, v66);
    v49 = [v48 traitCollection];
    v50 = [v49 horizontalSizeClass];

    if (v50 == 1)
    {
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = a6;
      v51 = v70 < CGRectGetHeight(v77);
    }

    else
    {
      v51 = 0;
    }

    v19 = v45;
    v52 = v68;
    sub_24F0F7DDC(v26 + *(v64 + 20), v68, type metadata accessor for LockupMediaLayout.DisplayType);
    v53 = v62(v52, 6, v45);
    if (v53 <= 2)
    {
      v54 = a3;
      v55 = a4;
      v56 = a5;
      v57 = a6;
      if (!v53)
      {
        CGRectGetWidth(*&v54);
        sub_24F0F76C8(v68);
        goto LABEL_9;
      }

      if (v53 == 1)
      {
        CGRectGetMidX(*&v54);
        if (!v51)
        {
          goto LABEL_9;
        }

LABEL_27:
        v79.origin.x = a3;
        v79.origin.y = a4;
        v79.size.width = a5;
        v79.size.height = a6;
        CGRectGetHeight(v79);
        goto LABEL_9;
      }

LABEL_26:
      CGRectGetWidth(*&v54);
      if (!v51)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (v53 <= 4)
    {
      v54 = a3;
      v55 = a4;
      v56 = a5;
      v57 = a6;
      goto LABEL_26;
    }

    if (v53 == 5)
    {
      v78.origin.x = a3;
      v78.origin.y = a4;
      v78.size.width = a5;
      v78.size.height = a6;
      CGRectGetWidth(v78);
    }

LABEL_9:
    sub_24F92C1D8();
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v73);
  }

  __break(1u);
}

void _s12GameStoreKit17LockupMediaLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v44 = a2;
  v45 = sub_24F92CDB8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  v14 = sub_24F922348();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v40 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v39 = &v38 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  v25 = type metadata accessor for LockupMediaLayout.Metrics(0);
  sub_24F028328(a1 + *(v25 + 28), v13);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    sub_24F0F8BDC(v13);
    v27 = *(v25 + 20);
    sub_24F0F7DDC(a1 + v27, v10, type metadata accessor for LockupMediaLayout.DisplayType);
    v28 = v26(v10, 6, v14);
    if (v28 > 4)
    {
      if (v28 != 5)
      {
        return;
      }

      goto LABEL_18;
    }

    if ((v28 - 1) < 4)
    {
      v29 = a1 + v27;
      v30 = v41;
      sub_24F0F7DDC(v29, v41, type metadata accessor for LockupMediaLayout.DisplayType);
      v31 = v26(v30, 6, v14);
      if (v31 <= 2 && !v31)
      {
        sub_24F0F76C8(v30);
      }

      v36 = a1[3];
      __swift_project_boxed_opaque_existential_1(a1, v36);
      v37 = v42;
      sub_24E8ED7D8(v36);
      sub_24F9223A8();
      (*(v43 + 8))(v37, v45);
LABEL_18:
      sub_24F922308();
      return;
    }

    v24 = v39;
    (*(v15 + 32))(v39, v10, v14);
    v21 = v40;
  }

  else
  {
    (*(v15 + 32))(v24, v13, v14);
  }

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  sub_24F9222E8();
  v33 = v32;
  sub_24F9222E8();
  if (v34 >= v33)
  {
    sub_24F922308();
  }

  else
  {
    sub_24F9222F8();
  }

  v35 = *(v15 + 8);
  v35(v21, v14);
  v35(v24, v14);
}

uint64_t sub_24F0F8BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double _s12GameStoreKit17LockupMediaLayoutV9mediaSize5using7fitting4withSo6CGSizeVAC7MetricsV_AISo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2, double a3, double a4)
{
  v47 = a2;
  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v44 - v20;
  v22 = *(type metadata accessor for LockupMediaLayout.Metrics(0) + 20);
  sub_24F0F7DDC(a1 + v22, v21, type metadata accessor for LockupMediaLayout.DisplayType);
  v46 = v8;
  v23 = *(v8 + 48);
  v24 = v23(v21, 6, v7);
  if (v24 > 4)
  {
    v27 = 0.0;
    if (v24 != 5)
    {
      return v27;
    }

    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v29 = v28;
    sub_24F9222E8();
    if (v30 >= v29)
    {
      sub_24F922308();
    }

    else
    {
      sub_24F9222F8();
      a3 = v31;
    }

    (*(v46 + 8))(v15, v7);
    return a3;
  }

  if ((v24 - 1) >= 4)
  {
    v32 = v46;
    (*(v46 + 32))(v12, v21, v7);
    v33 = v45;
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222E8();
    v35 = v34;
    sub_24F9222E8();
    if (v36 >= v35)
    {
      sub_24F922308();
    }

    else
    {
      sub_24F9222F8();
      a3 = v37;
    }

    v42 = *(v32 + 8);
    v42(v33, v7);
    v42(v12, v7);
    return a3;
  }

  sub_24F0F7DDC(a1 + v22, v18, type metadata accessor for LockupMediaLayout.DisplayType);
  v25 = v23(v18, 6, v7);
  if (v25 > 2)
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 4.0;
      if (v25 == 3)
      {
        v26 = 3.0;
      }
    }

    goto LABEL_20;
  }

  if (!v25)
  {
    sub_24F0F76C8(v18);
    goto LABEL_18;
  }

  if (v25 == 1)
  {
LABEL_18:
    v26 = 1.0;
    goto LABEL_20;
  }

  v26 = 2.0;
LABEL_20:
  if (v26 + -1.0 > 0.0)
  {
    v38 = v26 + -1.0;
  }

  else
  {
    v38 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F9223B8();
  v27 = (a3 - v38 * v39) / v26;
  sub_24F922308();
  if (v40 > a4)
  {
    sub_24F9222F8();
    return v41;
  }

  return v27;
}

unint64_t sub_24F0F907C()
{
  result = qword_27F239520;
  if (!qword_27F239520)
  {
    type metadata accessor for LockupMediaLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239520);
  }

  return result;
}

uint64_t sub_24F0F90E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F0F91A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LockupMediaLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F0F924C(uint64_t a1)
{
  sub_24EF1D9E8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.Metrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F0F92E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F0F9364(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F922348();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24F0F93E8(uint64_t a1)
{
  v1 = sub_24F922348();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24F0F9454(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_24F922348();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_24F0F95E0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for LockupMediaLayout.DisplayType(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_24F922348();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_24F0F9758(uint64_t a1)
{
  sub_24ED2BA98();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LockupMediaLayout.DisplayType(319);
    if (v2 <= 0x3F)
    {
      sub_24F922348();
      if (v3 <= 0x3F)
      {
        sub_24F028EF0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *ShadowView.__allocating_init(radius:style:)(char *a1, double a2)
{
  v4 = *a1;
  v5 = [objc_allocWithZone(v2) initWithFrame_];
  *&v5[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = a2;
  v5[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = v4;
  v6 = v5;
  CornerStyle.apply(withRadius:to:)(v6, a2);
  v7 = &v6[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v8 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v6[v8])
  {
    [v6 setNeedsLayout];
  }

  return v6;
}

void sub_24F0F98EC(char *a1, double a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius] = a2;
  v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle] = *a1;
  CornerStyle.apply(withRadius:to:)(v2, a2);
  v4 = &v2[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v3[v5])
  {
    [v3 setNeedsLayout];
  }
}

id sub_24F0F9990@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;

  return v4;
}

id sub_24F0F99F8(__int128 *a1, void *a2)
{
  v3 = *a2 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = *a1;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v6;
  v7 = v5;

  return sub_24F0F9A68();
}

id sub_24F0F9A68()
{
  v1 = &v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow];
  swift_beginAccess();
  if (*v1)
  {
    v3 = v1[2];
    v2 = v1[3];
    v4 = v1[1];
    v5 = *v1;
    v6 = [v0 layer];
    v7 = [v5 CGColor];
    [v6 setShadowColor_];

    v8 = [v0 layer];
    [v8 setShadowRadius_];

    v9 = [v0 layer];
    [v9 setShadowOffset_];

    v10 = [v0 layer];
    LODWORD(v11) = 1.0;
    [v10 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  else
  {
    v12 = [v0 layer];
    [v12 setShadowColor_];

    v13 = [v0 layer];
    [v13 setShadowRadius_];

    v14 = [v0 layer];
    [v14 setShadowOffset_];

    v15 = [v0 layer];
    [v15 setShadowOpacity_];

    [v0 setClipsToBounds_];
  }

  v16 = &v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  return [v0 setNeedsLayout];
}

id sub_24F0F9CD4@<X0>(__int128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return v4;
}

id sub_24F0F9D38(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  v4 = *v3;
  v5 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v5;

  return sub_24F0F9A68();
}

id (*sub_24F0F9D9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F0F9E00;
}

id sub_24F0F9E00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24F0F9A68();
  }

  return result;
}

uint64_t sub_24F0F9E34()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F0F9E78(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_24F0F9F28()
{
  v58.receiver = v0;
  v58.super_class = type metadata accessor for ShadowView();
  objc_msgSendSuper2(&v58, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shadow;
  swift_beginAccess();
  if (*&v0[v1])
  {
    v2 = [v0 layer];
    v3 = [v2 shadowPath];

    v4 = v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerStyle];
    v5 = &selRef_lockedAppBundleIdentifiers;
    [v0 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = *&v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_cornerRadius];
    v15 = objc_opt_self();
    if (v14 >= COERCE_DOUBLE(1))
    {
      if (v4)
      {
        v15 = [v15 _bezierPathWithArcRoundedRect_cornerRadius_];
        v17 = v15;
        if (v15)
        {
LABEL_9:
          v18 = [v17 CGPath];

          v19 = OBJC_IVAR____TtC12GameStoreKit10ShadowView_shouldAnimateBoundsChange;
          swift_beginAccess();
          v20 = &qword_27F239000;
          if ((v0[v19] & 1) == 0)
          {
            goto LABEL_22;
          }

          [v0 bounds];
          if ((v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds + 32] & 1) == 0 && CGRectEqualToRect(*&v21, *&v0[OBJC_IVAR____TtC12GameStoreKit10ShadowView_previousBounds]))
          {
            goto LABEL_22;
          }

          v25 = [v0 layer];
          v26 = sub_24F92B098();
          v27 = [v25 animationForKey_];

          if (v27)
          {
            goto LABEL_21;
          }

          v28 = [v0 layer];
          v29 = sub_24F92B098();
          v30 = [v28 animationForKey_];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = v31;
              v33 = sub_24F92B098();
              v34 = [objc_opt_self() animationWithKeyPath_];

              v35 = v34;
              v36 = v30;
              [v32 duration];
              [v35 setDuration_];
              v37 = [v32 timingFunction];

              [v35 setTimingFunction_];
              v38 = v35;
              [v38 setFromValue_];
              [v38 setToValue_];

              [v32 mass];
              [v38 setMass_];
              [v32 stiffness];
              [v38 setStiffness_];
              [v32 damping];
              [v38 setDamping_];
              [v32 initialVelocity];
              [v38 setInitialVelocity_];
              v39 = [v0 layer];
              v5 = &selRef_lockedAppBundleIdentifiers;
              goto LABEL_20;
            }
          }

          v40 = [v0 layer];
          v41 = sub_24F92B098();
          v27 = [v40 animationForKey_];

          v5 = &selRef_lockedAppBundleIdentifiers;
          v20 = &qword_27F239000;
          if (!v27)
          {
LABEL_22:
            v48 = [v0 layer];
            [v48 setShadowPath_];

            [v0 v5[415]];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v57 = &v0[v20[173]];
            *v57 = v50;
            *(v57 + 1) = v52;
            *(v57 + 2) = v54;
            *(v57 + 3) = v56;
            v57[32] = 0;
            return;
          }

          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (!v42)
          {
LABEL_21:

            goto LABEL_22;
          }

          v43 = v42;
          v44 = sub_24F92B098();
          v45 = [objc_opt_self() animationWithKeyPath_];

          v38 = v45;
          v36 = v27;
          [v43 duration];
          [v38 setDuration_];
          v46 = [v43 timingFunction];

          [v38 setTimingFunction_];
          [v38 setFromValue_];
          [v38 setToValue_];
          v39 = [v0 layer];
LABEL_20:
          v47 = v39;
          v27 = sub_24F92B098();
          [v47 addAnimation:v38 forKey:v27];

          v20 = &qword_27F239000;
          goto LABEL_21;
        }

        __break(1u);
      }

      v16 = [v15 bezierPathWithRoundedRect:-1 byRoundingCorners:v7 cornerRadii:{v9, v11, v13, v14, v14}];
    }

    else
    {
      v16 = [v15 bezierPathWithRect_];
    }

    v17 = v16;
    goto LABEL_9;
  }
}