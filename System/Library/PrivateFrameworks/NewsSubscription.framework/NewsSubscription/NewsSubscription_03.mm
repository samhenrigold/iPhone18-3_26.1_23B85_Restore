unint64_t sub_1D7789BD8()
{
  result = qword_1EC9C9C00;
  if (!qword_1EC9C9C00)
  {
    sub_1D7743258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C00);
  }

  return result;
}

uint64_t HideMyEmailShareSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7789FC8(0, &qword_1EE08E4F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7789B30();
  sub_1D78B6874();
  if (!v2)
  {
    v35 = 0;
    sub_1D778A02C();
    sub_1D78B6614();
    if (v36 > 1u)
    {
      if (v36 == 2)
      {
        v31 = 2;
        v18 = sub_1D78B65E4();
        v19 = v10;
        v21 = v20;
        (*(v7 + 8))(v19, v6);
        v12 = v21;
        v11 = v18;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v34 = 3;
        v29 = sub_1D78B65E4();
        v30 = v23;
        v33 = 4;
        v24 = sub_1D78B65E4();
        v14 = v25;
        v28 = v24;
        v32 = 5;
        v15 = sub_1D78B65E4();
        v16 = v26;
        (*(v7 + 8))(v10, v6);
        v17 = 1;
        v13 = v28;
        v11 = v29;
        v12 = v30;
      }
    }

    else if (v36)
    {
      (*(v7 + 8))(v10, v6);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 2;
      v11 = 1;
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 2;
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7789FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7789B30();
    v7 = a3(a1, &type metadata for HideMyEmailShareSelection.Keys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D778A02C()
{
  result = qword_1EE08EC18;
  if (!qword_1EE08EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16NewsSubscription25HideMyEmailShareSelectionO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

uint64_t sub_1D778A0B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D778A0FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D778A150(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HideMyEmailShareSelection.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HideMyEmailShareSelection.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D778A2FC(uint64_t a1)
{
  sub_1D78B5D14();
}

unint64_t sub_1D778A400@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D778AB50(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D778A430(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000657079546ELL;
  v4 = 0x6F697463656C6553;
  v5 = 0xEA00000000006C69;
  v6 = 0x616D4579786F7270;
  v7 = 0x6E69616D6F64;
  if (v2 != 4)
  {
    v7 = 0x64496D616574;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E75;
  if (v2 != 1)
  {
    v9 = 0x69616D456C616572;
    v8 = 0xE90000000000006CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_1D778A4FC()
{
  v1 = *v0;
  v2 = 0x6F697463656C6553;
  v3 = 0x616D4579786F7270;
  v4 = 0x6E69616D6F64;
  if (v1 != 4)
  {
    v4 = 0x64496D616574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E776F6E6B6E75;
  if (v1 != 1)
  {
    v5 = 0x69616D456C616572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D778A5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D778AB50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D778A5F8(uint64_t a1)
{
  v2 = sub_1D7789B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D778A634(uint64_t a1)
{
  v2 = sub_1D7789B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D778A674()
{
  result = qword_1EC9C9C08;
  if (!qword_1EC9C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C08);
  }

  return result;
}

uint64_t sub_1D778A6D4()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D778A790(uint64_t a1)
{
  sub_1D78B5D14();
}

uint64_t sub_1D778A838(uint64_t a1)
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

unint64_t sub_1D778A8F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D778ABF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D778A920(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE500000000000000;
  v5 = 0x6572616873;
  if (*v1 != 2)
  {
    v5 = 1701079400;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x616853746F4E6F64;
    v2 = 0xEA00000000006572;
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

unint64_t sub_1D778A99C()
{
  result = qword_1EC9C9C10;
  if (!qword_1EC9C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9C10);
  }

  return result;
}

unint64_t sub_1D778AAA4()
{
  result = qword_1EE08EC08;
  if (!qword_1EE08EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC08);
  }

  return result;
}

unint64_t sub_1D778AAFC()
{
  result = qword_1EE08EC10;
  if (!qword_1EE08EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC10);
  }

  return result;
}

unint64_t sub_1D778AB50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B6594();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D778AB9C()
{
  result = qword_1EE08EC20;
  if (!qword_1EE08EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08EC20);
  }

  return result;
}

unint64_t sub_1D778ABF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D78B6594();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_1D778ACA0(uint64_t a1, uint64_t a2)
{
  sub_1D778AF9C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D78BCB50;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = sub_1D773F004(0, &qword_1EE08FC10, 0x1E69DB878);
  v5 = v3;
  *(inited + 40) = sub_1D78B61B4();
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v4;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 labelColor];
  *(inited + 104) = sub_1D773F004(0, &qword_1EE08FC00, 0x1E69DC888);
  *(inited + 80) = v9;
  sub_1D77FED68(inited);
  swift_setDeallocating();
  sub_1D778AFF4(0);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = sub_1D78B5C44();
  type metadata accessor for Key(0);
  sub_1D778B060();
  v12 = sub_1D78B5BB4();

  v13 = [v10 initWithString:v11 attributes:v12];

  return v13;
}

void sub_1D778AE84(void *a1)
{
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.97254902 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0274509804 alpha:1.0];
  v5 = [v2 ts:v3 dynamicColor:v4 withDarkStyleVariant:?];

  [a1 setBackgroundColor_];
  v6 = [a1 layer];
  [v6 setCornerRadius_];
}

void sub_1D778AF9C(uint64_t a1)
{
  if (!qword_1EE08FA30)
  {
    sub_1D778AFF4(255);
    v1 = sub_1D78B66F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE08FA30);
    }
  }
}

void sub_1D778AFF4(uint64_t a1)
{
  if (!qword_1EE08FD30)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE08FD30);
    }
  }
}

unint64_t sub_1D778B060()
{
  result = qword_1EE08FD60;
  if (!qword_1EE08FD60)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FD60);
  }

  return result;
}

uint64_t PaywallPurchaseModelFactory.init(offerManager:configurationManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PaywallPurchaseModelFactory.purchaseModel(for:tag:)(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = &v149;
  v8 = type metadata accessor for OfferAction(0);
  v9 = *(v8 - 8);
  v120 = v8;
  v121 = v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v114 - v15;
  v17 = *a1;
  v18 = v3[1];
  v19 = v3[2];
  v20 = 1 << (v17 >> 4);
  if ((v20 & 0x1B3) == 0)
  {
    if ((v20 & 0xC) != 0)
    {
      if (a2)
      {
        v25 = [a2 prefetchPurchaseOffer];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 purchaseID];

          if (v27)
          {
            v28 = sub_1D78B5C74();
            v29 = a3;
            v31 = v30;

            *&v122 = v28;
            *(&v122 + 1) = v31;
            sub_1D778CF84(&v122);
            v203 = v123[9];
            v204 = v123[10];
            v205 = v124;
            v199 = v123[5];
            v200 = v123[6];
            v202 = v123[8];
            v201 = v123[7];
            v195 = v123[1];
            v196 = v123[2];
            v198 = v123[4];
            v197 = v123[3];
            v194 = v123[0];
            v193 = v122;
            nullsub_1();
            v32 = v204;
            *(v29 + 160) = v203;
            *(v29 + 176) = v32;
            *(v29 + 192) = v205;
            v33 = v200;
            *(v29 + 96) = v199;
            *(v29 + 112) = v33;
            v34 = v202;
            *(v29 + 128) = v201;
            *(v29 + 144) = v34;
            v35 = v196;
            *(v29 + 32) = v195;
            *(v29 + 48) = v35;
            v36 = v198;
            *(v29 + 64) = v197;
            *(v29 + 80) = v36;
            v37 = v194;
            *v29 = v193;
            *(v29 + 16) = v37;
            return;
          }
        }
      }

      v122 = 0uLL;
      sub_1D778CF84(&v122);
      goto LABEL_65;
    }

    if (v17 == 96)
    {
LABEL_44:
      sub_1D778CCE8(&v193);
LABEL_66:
      v78 = v204;
      *(a3 + 160) = v203;
      *(a3 + 176) = v78;
      *(a3 + 192) = v205;
      v79 = v200;
      *(a3 + 96) = v199;
      *(a3 + 112) = v79;
      v80 = v202;
      *(a3 + 128) = v201;
      *(a3 + 144) = v80;
      v81 = v196;
      *(a3 + 32) = v195;
      *(a3 + 48) = v81;
      v82 = v198;
      *(a3 + 64) = v197;
      *(a3 + 80) = v82;
      v83 = v194;
      *a3 = v193;
      *(a3 + 16) = v83;
      return;
    }
  }

  v21 = *v3;
  ObjectType = swift_getObjectType();
  LOBYTE(v122) = v17;
  v23 = ObjectType;
  v24 = Paywall.PaywallType.fcPaywallType.getter();
  sub_1D7873170(v24, &v160);
  (*(v18 + 32))(&v193, &v160, v23, v18);
  v179 = v201;
  v180 = v202;
  v181 = v203;
  v175 = v197;
  v176 = v198;
  v178 = v200;
  v177 = v199;
  v171 = v193;
  v172 = v194;
  v174 = v196;
  v173 = v195;
  v190 = v201;
  v191 = v202;
  v192 = v203;
  v186 = v197;
  v187 = v198;
  v189 = v200;
  v188 = v199;
  v182 = v193;
  v183 = v194;
  v185 = v196;
  v184 = v195;
  if (sub_1D775F3CC(&v182) == 1)
  {
LABEL_47:
    LOBYTE(v193) = 4;
    (*(v18 + 40))(&v149, &v193, v23, v18);
    v168 = v157;
    v169 = v158;
    v170 = v159;
    v164 = v153;
    v165 = v154;
    v166 = v155;
    v167 = v156;
    v160 = v149;
    v161 = v150;
    v162 = v151;
    v163 = v152;
    if (sub_1D775F3CC(&v160) == 1)
    {
      goto LABEL_50;
    }

    v201 = v168;
    v202 = v169;
    *&v203 = v170;
    v197 = v164;
    v198 = v165;
    v200 = v167;
    v199 = v166;
    v193 = v160;
    v194 = v161;
    v196 = v163;
    v195 = v162;
    v146 = v157;
    v147 = v158;
    v148 = v159;
    v142 = v153;
    v143 = v154;
    v144 = v155;
    v145 = v156;
    v138 = v149;
    v139 = v150;
    v140 = v151;
    v141 = v152;
    sub_1D778CEAC(&v138, &v122);
    if (Offer.isLegacyOffer.getter())
    {
      sub_1D7782600(&v149);
LABEL_50:
      v67 = [v19 configuration];
      if (!v67)
      {
        __break(1u);
        return;
      }

      v68 = v67;
      if ([v67 respondsToSelector_])
      {
        v69 = [v68 paidBundleConfig];
        swift_unknownObjectRelease();
        v70 = [v69 offeredBundlePurchaseIDs];

        if (v70)
        {
          v46 = sub_1D78B5EB4();

          goto LABEL_56;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v46 = MEMORY[0x1E69E7CC0];
LABEL_56:
      v40 = a3;
      if (qword_1EE08FB98 == -1)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v76 = qword_1EE09C268;
    v77 = sub_1D78B60A4();
    sub_1D78B42C4("Configurable Offer purchase model for offer: %{public}@", 55, 2, &dword_1D7739000, v76, v77, MEMORY[0x1E69E7CC0]);
    sub_1D7782600(&v171);
    sub_1D7782600(&v149);
    v123[7] = v168;
    v123[8] = v169;
    *&v123[9] = v170;
    v123[3] = v164;
    v123[4] = v165;
    v123[5] = v166;
    v123[6] = v167;
    v122 = v160;
    v123[0] = v161;
    v123[1] = v162;
    v123[2] = v163;
    sub_1D778CF08(&v122);
LABEL_65:
    v203 = v123[9];
    v204 = v123[10];
    v205 = v124;
    v199 = v123[5];
    v200 = v123[6];
    v202 = v123[8];
    v201 = v123[7];
    v195 = v123[1];
    v196 = v123[2];
    v198 = v123[4];
    v197 = v123[3];
    v194 = v123[0];
    v193 = v122;
    nullsub_1();
    goto LABEL_66;
  }

  v117 = v21;
  if (*(&v187 + 1))
  {
    if (__PAIR128__(0x80000001D78CF0C0, 0xD000000000000019) == v190)
    {
      v201 = v179;
      v202 = v180;
      *&v203 = v181;
      v197 = v175;
      v198 = v176;
      v200 = v178;
      v199 = v177;
      v193 = v171;
      v194 = v172;
      v196 = v174;
      v195 = v173;
      sub_1D778CEAC(&v193, &v122);
      goto LABEL_13;
    }

    v59 = sub_1D78B6724();
    v201 = v179;
    v202 = v180;
    *&v203 = v181;
    v197 = v175;
    v198 = v176;
    v200 = v178;
    v199 = v177;
    v193 = v171;
    v194 = v172;
    v196 = v174;
    v195 = v173;
    sub_1D778CEAC(&v193, &v122);
    if ((v59 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v201 = v179;
    v202 = v180;
    *&v203 = v181;
    v197 = v175;
    v198 = v176;
    v200 = v178;
    v199 = v177;
    v193 = v171;
    v194 = v172;
    v196 = v174;
    v195 = v173;
    sub_1D778CEAC(&v193, &v122);
    if (!AMSMarketingItem.isCIPOffer()())
    {
LABEL_30:
      v116 = a3;
      sub_1D7782600(&v171);
      v164 = v175;
      v165 = v176;
      v162 = v173;
      v163 = v174;
      v170 = v181;
      v168 = v179;
      v169 = v180;
      v166 = v177;
      v167 = v178;
      v160 = v171;
      v161 = v172;
      v60 = v173;
      v7 = *(v173 + 16);
      if (v7)
      {
        v114 = v18;
        v115 = v19;
        v40 = v173 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v157 = v179;
        v158 = v180;
        v159 = v181;
        v153 = v175;
        v154 = v176;
        v155 = v177;
        v156 = v178;
        v149 = v171;
        v150 = v172;
        v151 = v173;
        v152 = v174;
        sub_1D778CEAC(&v149, &v193);
        v46 = 0;
        while (v46 < *(v60 + 16))
        {
          sub_1D778CF14(v40 + *(v121 + 72) * v46, v13);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload == 1)
            {
              sub_1D77826E8(0);

              v62 = sub_1D78B3294();
              (*(*(v62 - 8) + 8))(v13, v62);
            }
          }

          else
          {
            v63 = v23;
            v64 = *(v13 + 2);
            v118 = *(v13 + 10);
            v119 = v13[90];

            if ((v119 - 1) < 2)
            {
              *&v127 = v117;
              *(&v127 + 1) = v114;
              *&v128 = v115;
              v201 = v179;
              v202 = v180;
              *&v203 = v181;
              v197 = v175;
              v198 = v176;
              v200 = v178;
              v199 = v177;
              v193 = v171;
              v194 = v172;
              v196 = v174;
              v195 = v173;
              sub_1D778CEAC(&v160, &v122);
              v106 = sub_1D778C638(&v193);
              v108 = v107;
              v146 = v201;
              v147 = v202;
              v148 = v203;
              v142 = v197;
              v143 = v198;
              v144 = v199;
              v145 = v200;
              v138 = v193;
              v139 = v194;
              v140 = v195;
              v141 = v196;
              sub_1D7782600(&v138);
              if (v108)
              {
                if (qword_1EE08FB98 != -1)
                {
                  swift_once();
                }

                v109 = qword_1EE09C268;
                sub_1D774FE1C(0);
                v110 = swift_allocObject();
                *(v110 + 16) = xmmword_1D78BCAB0;
                *(v110 + 56) = MEMORY[0x1E69E6158];
                *(v110 + 64) = sub_1D775ABD4();
                *(v110 + 32) = v106;
                *(v110 + 40) = v108;

                v111 = sub_1D78B60A4();
                sub_1D78B42C4("Services bundle purchase model with purchase ID: %{public}@", 59, 2, &dword_1D7739000, v109, v111, v110);
                sub_1D7782600(&v171);

                *(&v123[7] + 8) = v167;
                *(&v123[8] + 8) = v168;
                *(&v123[9] + 8) = v169;
                *(&v123[3] + 8) = v163;
                *(&v123[4] + 8) = v164;
                *(&v123[5] + 8) = v165;
                *(&v123[6] + 8) = v166;
                *(v123 + 8) = v160;
                *(&v123[1] + 8) = v161;
                *(&v123[10] + 1) = v170;
                *(&v123[2] + 8) = v162;
                *&v122 = v106;
                *(&v122 + 1) = v108;
                *&v123[0] = v64;
                goto LABEL_27;
              }

              sub_1D7782600(&v171);
              if (qword_1EE08FB98 != -1)
              {
                swift_once();
              }

              v112 = qword_1EE09C268;
              v113 = sub_1D78B60A4();
              sub_1D78B42C4("Services bundle purchase ID not found", 37, 2, &dword_1D7739000, v112, v113, MEMORY[0x1E69E7CC0]);
              sub_1D7782600(&v171);

              sub_1D778CCE8(&v193);
              goto LABEL_28;
            }

            v23 = v63;
          }

          if (v7 == ++v46)
          {
            sub_1D7782600(&v171);
            v19 = v115;
            a3 = v116;
            v7 = &v149;
            v18 = v114;
            goto LABEL_47;
          }
        }

        goto LABEL_84;
      }

      a3 = v116;
      v7 = &v149;
      goto LABEL_47;
    }
  }

LABEL_13:
  *&v138 = v117;
  *(&v138 + 1) = v18;
  *&v139 = v19;
  v157 = v190;
  v158 = v191;
  v159 = v192;
  v153 = v186;
  v154 = v187;
  v155 = v188;
  v156 = v189;
  v149 = v182;
  v150 = v183;
  v151 = v184;
  v152 = v185;
  nullsub_1();
  v201 = v157;
  v202 = v158;
  *&v203 = v159;
  v197 = v153;
  v198 = v154;
  v200 = v156;
  v199 = v155;
  v193 = v149;
  v194 = v150;
  v196 = v152;
  v195 = v151;
  sub_1D778CEAC(&v182, &v122);
  v118 = sub_1D778C638(&v193);
  v39 = v38;
  v168 = v201;
  v169 = v202;
  v170 = v203;
  v164 = v197;
  v165 = v198;
  v166 = v199;
  v167 = v200;
  v160 = v193;
  v161 = v194;
  v162 = v195;
  v163 = v196;
  sub_1D7782600(&v160);
  v117 = v39;
  if (!v39)
  {
    sub_1D7782600(&v171);
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v65 = qword_1EE09C268;
    v66 = sub_1D78B60A4();
    sub_1D78B42C4("Services bundle CIP purchase ID not found", 41, 2, &dword_1D7739000, v65, v66, MEMORY[0x1E69E7CC0]);
    sub_1D7782600(&v171);
    goto LABEL_44;
  }

  v116 = a3;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v7 = swift_allocObject();
  v7[1] = xmmword_1D78BCAB0;
  *(v7 + 7) = MEMORY[0x1E69E6158];
  *(v7 + 8) = sub_1D775ABD4();
  v41 = v117;
  *(v7 + 4) = v118;
  *(v7 + 5) = v41;

  v42 = sub_1D78B60A4();
  sub_1D78B42C4("Services bundle purchase model with purchase ID: %{public}@", 59, 2, &dword_1D7739000, v40, v42, v7);

  v43 = v184;
  v44 = *(v184 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = v184 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    while (v45 < *(v43 + 16))
    {
      sub_1D778CF14(v46 + *(v121 + 72) * v45, v16);
      v48 = swift_getEnumCaseMultiPayload();
      if (v48)
      {
        if (v48 == 1)
        {
          sub_1D77826E8(0);
          v50 = &v16[*(v49 + 48)];
          v40 = *(v50 + 3);
          v7 = *(v50 + 7);

          v51 = sub_1D78B3294();
          (*(*(v51 - 8) + 8))(v16, v51);
        }
      }

      else
      {
        v47 = *(v16 + 2);
        v40 = *(v16 + 4);
        v7 = *(v16 + 6);
        v119 = v16[90];

        if ((v119 - 1) < 2)
        {
          sub_1D7782600(&v171);
          goto LABEL_26;
        }
      }

      if (v44 == ++v45)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    swift_once();
LABEL_57:
    v71 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1D78BCAB0;
    sub_1D778CE54(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    *(v72 + 56) = v73;
    *(v72 + 64) = sub_1D778CD74();
    *(v72 + 32) = v46;

    v74 = sub_1D78B60A4();
    sub_1D78B42C4("Services bundle purchase model with purchase ID: %{public}@", 59, 2, &dword_1D7739000, v71, v74, v72);

    v146 = v157;
    v147 = v158;
    v148 = v159;
    v142 = v153;
    v143 = v154;
    v144 = v155;
    v145 = v156;
    v138 = v149;
    v139 = v150;
    v140 = v151;
    v141 = v152;
    v75 = 0;
    if (sub_1D775F3CC(&v138) != 1 && !BYTE8(v140))
    {
      if (*(&v143 + 1))
      {
        if (__PAIR128__(0x80000001D78CF100, 0xD000000000000025) == v146)
        {
          v75 = 1;
        }

        else
        {
          v75 = sub_1D78B6724();
        }
      }

      else
      {
        v201 = v157;
        v202 = v158;
        *&v203 = v159;
        v197 = v153;
        v198 = v154;
        v200 = v156;
        v199 = v155;
        v193 = v149;
        v194 = v150;
        v196 = v152;
        v195 = v151;
        sub_1D778CEAC(&v193, &v122);
        v75 = AMSMarketingItem.isBundleHardwareOffer()();
        sub_1D7782600(&v149);
      }
    }

    v135 = v157;
    v136 = v158;
    v137 = v159;
    v131 = v153;
    v132 = v154;
    v133 = v155;
    v134 = v156;
    v127 = v149;
    v128 = v150;
    v129 = v151;
    v130 = v152;
    if (sub_1D775F3CC(&v127) == 1)
    {
      sub_1D778C858(MEMORY[0x1E69E7CC8]);
      v84 = objc_allocWithZone(MEMORY[0x1E698C988]);
      sub_1D778CDF0();
      v85 = sub_1D78B5BB4();

      v86 = [v84 initWithDictionary_];

      if (qword_1EE093E80 != -1)
      {
        swift_once();
      }

      v87 = byte_1EE09C310;
      v89 = qword_1EE09C318;
      v88 = unk_1EE09C320;

      sub_1D7782600(&v171);
      v90 = 0;
      v91 = 0;
      v92 = 0uLL;
      v93 = MEMORY[0x1E69E7CC0];
      v94 = 0uLL;
      v95 = 0uLL;
      v96 = 0uLL;
      v97 = 0uLL;
      v98 = 0uLL;
      v99 = 0uLL;
    }

    else
    {
      sub_1D7782600(&v171);
      v98 = v149;
      v99 = v150;
      v93 = v151;
      v90 = BYTE8(v151);
      v126[0] = *(v7 + 41);
      *(v126 + 3) = HIDWORD(v151);
      v87 = v152;
      v125[0] = *(v7 + 49);
      *(v125 + 3) = DWORD1(v152);
      v89 = *(&v152 + 1);
      v86 = *(&v153 + 1);
      v88 = v153;
      v92 = v154;
      v94 = v155;
      v95 = v156;
      v96 = v157;
      v97 = v158;
      v91 = v159;
    }

    *&v122 = v46;
    BYTE8(v122) = v75 & 1;
    v123[0] = v98;
    v123[1] = v99;
    *&v123[2] = v93;
    BYTE8(v123[2]) = v90;
    *(&v123[2] + 9) = v126[0];
    HIDWORD(v123[2]) = *(v126 + 3);
    LOBYTE(v123[3]) = v87;
    *(&v123[3] + 1) = v125[0];
    DWORD1(v123[3]) = *(v125 + 3);
    *(&v123[3] + 1) = v89;
    *&v123[4] = v88;
    *(&v123[4] + 1) = v86;
    v123[5] = v92;
    v123[6] = v94;
    v123[7] = v95;
    v123[8] = v96;
    v123[9] = v97;
    *&v123[10] = v91;
    sub_1D778CEA4(&v122);
    v203 = v123[9];
    v204 = v123[10];
    v205 = v124;
    v199 = v123[5];
    v200 = v123[6];
    v202 = v123[8];
    v201 = v123[7];
    v195 = v123[1];
    v196 = v123[2];
    v198 = v123[4];
    v197 = v123[3];
    v194 = v123[0];
    v193 = v122;
    nullsub_1();
    v100 = v204;
    *(v40 + 160) = v203;
    *(v40 + 176) = v100;
    *(v40 + 192) = v205;
    v101 = v200;
    *(v40 + 96) = v199;
    *(v40 + 112) = v101;
    v102 = v202;
    *(v40 + 128) = v201;
    *(v40 + 144) = v102;
    v103 = v196;
    *(v40 + 32) = v195;
    *(v40 + 48) = v103;
    v104 = v198;
    *(v40 + 64) = v197;
    *(v40 + 80) = v104;
    v105 = v194;
    *v40 = v193;
    *(v40 + 16) = v105;
    return;
  }

LABEL_25:
  sub_1D7782600(&v171);
  v47 = 0;
LABEL_26:
  *(&v123[7] + 8) = v189;
  *(&v123[8] + 8) = v190;
  *(&v123[9] + 8) = v191;
  *(&v123[3] + 8) = v185;
  *(&v123[4] + 8) = v186;
  *(&v123[5] + 8) = v187;
  *(&v123[6] + 8) = v188;
  *(v123 + 8) = v182;
  *(&v123[1] + 8) = v183;
  *(&v123[10] + 1) = v192;
  *(&v123[2] + 8) = v184;
  *&v122 = v118;
  *(&v122 + 1) = v117;
  *&v123[0] = v47;
LABEL_27:
  sub_1D778CF78(&v122);
  v203 = v123[9];
  v204 = v123[10];
  v205 = v124;
  v199 = v123[5];
  v200 = v123[6];
  v202 = v123[8];
  v201 = v123[7];
  v195 = v123[1];
  v196 = v123[2];
  v198 = v123[4];
  v197 = v123[3];
  v194 = v123[0];
  v193 = v122;
  nullsub_1();
LABEL_28:
  v52 = v204;
  v53 = v116;
  *(v116 + 160) = v203;
  *(v53 + 176) = v52;
  *(v53 + 192) = v205;
  v54 = v200;
  *(v53 + 96) = v199;
  *(v53 + 112) = v54;
  v55 = v202;
  *(v53 + 128) = v201;
  *(v53 + 144) = v55;
  v56 = v196;
  *(v53 + 32) = v195;
  *(v53 + 48) = v56;
  v57 = v198;
  *(v53 + 64) = v197;
  *(v53 + 80) = v57;
  v58 = v194;
  *v53 = v193;
  *(v53 + 16) = v58;
}

id sub_1D778C638(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = a1[9];
  v46 = a1[8];
  v47 = v4;
  v48 = *(a1 + 20);
  v5 = a1[5];
  v42 = a1[4];
  v43 = v5;
  v6 = a1[7];
  v44 = a1[6];
  v45 = v6;
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v8 = a1[3];
  v40 = a1[2];
  v41 = v8;
  if (sub_1D775F3CC(&v38) != 1)
  {
    v9 = a1[9];
    v34[8] = a1[8];
    v34[9] = v9;
    v35 = *(a1 + 20);
    v10 = a1[5];
    v34[4] = a1[4];
    v34[5] = v10;
    v11 = a1[7];
    v34[6] = a1[6];
    v34[7] = v11;
    v12 = a1[1];
    v34[0] = *a1;
    v34[1] = v12;
    v13 = a1[3];
    v34[2] = a1[2];
    v34[3] = v13;
    v31 = v46;
    v32 = v47;
    v33 = v48;
    v27 = v42;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v23 = v38;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    sub_1D778CEAC(v34, v22);
    v14 = Offer.purchaseID()();
    v36[8] = v31;
    v36[9] = v32;
    v37 = v33;
    v36[4] = v27;
    v36[5] = v28;
    v36[6] = v29;
    v36[7] = v30;
    v36[0] = v23;
    v36[1] = v24;
    v36[2] = v25;
    v36[3] = v26;
    sub_1D778D0B0(v36);
    if (v14.value._object)
    {
      return v14.value._countAndFlagsBits;
    }
  }

  result = [v3 configuration];
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      v17 = [v16 paidBundleConfig];
      swift_unknownObjectRelease();
      v18 = [v17 offeredBundlePurchaseIDs];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1D78B5EB4();

        if (*(v20 + 16))
        {
          v21 = *(v20 + 32);

          return v21;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D778C858(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D778D104(0);
    v2 = sub_1D78B6564();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);

        v18 = v17;
        result = sub_1D777BBB4(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v18;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D778CA2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D778D03C();
    v2 = sub_1D78B6564();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D777BE08(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D778D0A0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D778D0A0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D778D0A0(v31, v32);
    result = sub_1D78B63D4();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D778D0A0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_1D778CCE8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = -1;
  return result;
}

unint64_t sub_1D778CD10()
{
  result = qword_1EE08F9D0;
  if (!qword_1EE08F9D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08F9D0);
  }

  return result;
}

unint64_t sub_1D778CD74()
{
  result = qword_1EE08FFF8;
  if (!qword_1EE08FFF8)
  {
    sub_1D778CE54(255, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FFF8);
  }

  return result;
}

unint64_t sub_1D778CDF0()
{
  result = qword_1EE08FBA0;
  if (!qword_1EE08FBA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08FBA0);
  }

  return result;
}

void sub_1D778CE54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D778CF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D778CFA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D778CFEC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D778D03C()
{
  if (!qword_1EE08FAF0)
  {
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FAF0);
    }
  }
}

_OWORD *sub_1D778D0A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D778D104(uint64_t a1)
{
  if (!qword_1EC9C9C18)
  {
    sub_1D778CDF0();
    v1 = sub_1D78B6574();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9C9C18);
    }
  }
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1D778D198(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D778D1B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

char *sub_1D778D21C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView;
  *&v5[v12] = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton;
  v16 = objc_allocWithZone(sub_1D78B4864());
  *&v5[v15] = sub_1D78B4854();
  v17 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton;
  *&v5[v17] = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v18 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline;
  *&v5[v18] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setClipsToBounds_];
  [v19 addSubview_];
  v20 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  [v19 addSubview_];
  [v19 addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];
  [*&v19[v20] addSubview_];

  return v19;
}

void sub_1D778D5CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView;
  *(v1 + v3) = [objc_allocWithZone(sub_1D78B4564()) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v6 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton;
  v7 = objc_allocWithZone(sub_1D78B4864());
  *(v1 + v6) = sub_1D78B4854();
  v8 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton;
  *(v1 + v8) = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v9 = OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D778D798(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D778D7E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AlreadySubscribedAlert.title.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v8 = sub_1D78B5C94();
  }

  else
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D78B3134();
  }

  return v8;
}

uint64_t AlreadySubscribedAlert.message.getter()
{
  if (*v0)
  {
    v1 = [*v0 name];
    v2 = sub_1D78B5C74();
    v4 = v3;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C(0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D78BCAB0;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1D775ABD4();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v8 = sub_1D78B5C94();
  }

  else
  {
    type metadata accessor for Localized();
    v9 = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_1D78B3134();
  }

  return v8;
}

uint64_t AlreadySubscribedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AlreadySubscribedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

id sub_1D778DDEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v3 = sub_1D78B4304();
  __swift_project_value_buffer(v3, qword_1EE09C1F0);
  v4 = sub_1D78B42E4();
  v5 = sub_1D78B60A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D7739000, v4, v5, "De-initializing BundleSubscriptionManager!", v6, 2u);
    MEMORY[0x1DA7043F0](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1D778DFEC()
{
  swift_getObjectType();
  sub_1D7752C3C();
  sub_1D78B41F4();
  v0 = sub_1D78B4014();
  sub_1D78B40B4();

  v1 = sub_1D78B4014();
  sub_1D78B40D4();
}

void sub_1D778E268(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1D78B3E24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D778E9CC();
  if (v11 <= 2)
  {
    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
      v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
      if (v11 == 1)
      {
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24));
        (*(v13 + 16))(6, a1, a2, v12, v13);
      }

      else
      {
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24));
        (*(v13 + 16))(5, a1, a2, v12, v13);
      }
    }

    else
    {
      sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
      v38 = sub_1D78B6284();
      v28 = sub_1D78B60A4();
      sub_1D78B42C4("BundleSubscriptionDetectionManager: User does not qualify for onboarding flow.  Nothing will be presented.", 106, 2, &dword_1D7739000, v38, v28, MEMORY[0x1E69E7CC0]);
      v29 = v38;
    }

    return;
  }

  if (v11 == 3)
  {
    v30 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
    v31 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), v30);
    (*(v31 + 16))(4, a1, a2, v30, v31);
    return;
  }

  if (v11 != 4)
  {
    v32 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 24);
    v33 = *(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_postPurchaseOnboardingManager), v32);
    (*(v33 + 16))(7, a1, a2, v32, v33);
    return;
  }

  v14 = [*(v2 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  if ([v14 respondsToSelector_])
  {
    v16 = [v15 paidBundleConfig];
    swift_unknownObjectRelease();
    v17 = [v16 familySharingLandingPageArticleID];

    if (v17)
    {
      v18 = sub_1D78B5C74();
      v20 = v19;

      if (a1)
      {
        v36[1] = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_completionEventManager);
        sub_1D778F850(0, &qword_1EE08E4D8, MEMORY[0x1E69E6F90]);
        v37 = v18;
        v38 = v20;
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D78BCB50;

        sub_1D78B3DF4();
        v20 = v38;
        sub_1D78B3E14();
        v39 = v22;
        sub_1D7752B44(&qword_1EE08F240, 255, MEMORY[0x1E69D6810], MEMORY[0x1E69D6818]);
        sub_1D778F850(0, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
        sub_1D778F8B0();
        sub_1D78B6324();
        v23 = swift_allocObject();
        *(v23 + 16) = a1;
        *(v23 + 24) = a2;

        sub_1D78B3964();
        v18 = v37;

        sub_1D7744A7C(a1, a2);
        (*(v7 + 8))(v10, v6);
      }

      if (qword_1EC9C8688 != -1)
      {
        swift_once();
      }

      v40 = 1;
      sub_1D7752B44(&qword_1EC9C9CA8, v21, type metadata accessor for BundleSubscriptionDetectionManager, &unk_1D78BEE74);
      sub_1D78B3724();
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router + 24);
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_router), v24);
      v27 = sub_1D7752B44(&unk_1EC9C9CB0, v26, type metadata accessor for BundleSubscriptionDetectionManager, &unk_1D78BEE04);
      (*(v25 + 16))(v18, v20, 0, 0, 0, 0, v3, v27, v24, v25);

      return;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
  v34 = sub_1D78B6284();
  v35 = sub_1D78B60A4();
  sub_1D78B42C4("BundleSubscriptionDetectionManager: familySharingLandingPageArticleID is not found in paid bundle configuration.\nNo onboarding will be shown.", 141, 2, &dword_1D7739000, v34, v35, MEMORY[0x1E69E7CC0]);

  if (a1)
  {
    a1();
  }
}

uint64_t sub_1D778E86C(uint64_t a1)
{
  v1 = sub_1D778E9CC();
  if (qword_1EE08E648 != -1)
  {
    swift_once();
  }

  v2 = sub_1D78B4304();
  __swift_project_value_buffer(v2, qword_1EE09C1F0);
  v3 = sub_1D78B42E4();
  v4 = sub_1D78B60A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 != 0;
    _os_log_impl(&dword_1D7739000, v3, v4, "Post Purchase Onboarding Requires Presentation: %{BOOL}d.", v5, 8u);
    MEMORY[0x1DA7043F0](v5, -1, -1);
  }

  sub_1D7756C58(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D778E9CC()
{
  swift_getObjectType();
  v1 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v2 = v18;
      v3 = [v18 integerValue];
      if (v3 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D7756B84(&v21);
  }

  v2 = 0;
  v3 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (*(&v20 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v4 = v18;
      v5 = [v4 integerValue];

      if ((((v5 - 182) ^ v3) & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1D7756B84(&v21);
  }

LABEL_18:

  if (((v3 ^ 0xFFFFFF4A) & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_19:
  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v8 = [v7 paidBundleConfig];
  swift_unknownObjectRelease();
  if (![v8 areMagazinesEnabled])
  {

    goto LABEL_27;
  }

  if ([v1 isPaidBundleViaOfferActivated])
  {
    v9 = sub_1D778FB9C(7, v8);

    if (v9)
    {
      return 5;
    }

    return 0;
  }

  if ([v1 isAmplifyUser])
  {
    v10 = sub_1D778FB9C(6, v8);

    return (v10 & 1) != 0;
  }

  if ([v1 isServicesBundleUser])
  {
    v11 = sub_1D778FB9C(5, v8);

    if ((v11 & 1) == 0)
    {
      return 0;
    }

    return 2;
  }

  else if (sub_1D778FB9C(4, v8))
  {
    v13 = [v1 isPurchaser];

    if (v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (qword_1EC9C8688 != -1)
    {
      swift_once();
    }

    sub_1D7752B44(&unk_1EC9C9C98, v12, type metadata accessor for BundleSubscriptionDetectionManager, &unk_1D78BEEB4);
    sub_1D78B3574();
    if (v21 & 1) != 0 || ([v1 isPurchaser])
    {

      return 0;
    }

    v14 = [v8 familySharingLandingPageArticleID];
    if (!v14)
    {
      sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
      v16 = sub_1D78B6284();
      v17 = sub_1D78B60A4();
      sub_1D78B42C4("BundleSubscriptionDetectionManager: familySharingLandingPageArticleID is not found in paid bundle configuration", 111, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);

      return 0;
    }

    v15 = v14;

    return 4;
  }
}

void sub_1D778EE6C(uint64_t a1)
{
  v1 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D78BCAB0;
  sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
  sub_1D78B6504();
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D775ABD4();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
  v3 = sub_1D78B6284();
  sub_1D78B42C4("BundleSubscriptionDetectionManager failed to fetch configuration with error: %{public}@", 87, 2, &dword_1D7739000, v3, v1, v2);
}

void sub_1D778EF80(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (sub_1D778F0EC())
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;

      sub_1D778E268(sub_1D778FDAC, v7);

      return;
    }
  }

  v8 = sub_1D78B4B64();
  sub_1D7752B44(&qword_1EC9C9CD0, 255, MEMORY[0x1E69D8050], MEMORY[0x1E69D8058]);
  v9 = swift_allocError();
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69D8048], v8);
  a1(v9, 1);
}

uint64_t sub_1D778F0EC()
{
  v1 = sub_1D78B3394();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v42[-v9];
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v42[-v12];
  v14 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_bundleSubscriptionManager) cachedSubscription];
  v15 = [v14 initialPurchaseTimestamp];

  if (!v15)
  {
    return 0;
  }

  result = [*(v0 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_configurationManager) configuration];
  if (!result)
  {
    goto LABEL_17;
  }

  v17 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v18 = [v17 paidBundleConfig];
  swift_unknownObjectRelease();
  [v15 doubleValue];
  sub_1D78B3354();
  sub_1D78B3384();
  sub_1D78B3304();
  v20 = v19;
  v21 = v19;
  v22 = *(v2 + 8);
  result = (v22)(v10, v1);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if ([v18 maxAllowedSubscriptionDetectionTime] < v20)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v23 setTimeStyle_];
    [v23 setDateStyle_];
    (*(v2 + 16))(v6, v13, v1);
    sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
    v24 = v18;
    v25 = v23;
    v26 = sub_1D78B6284();
    v27 = sub_1D78B60A4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = v22;
      v29 = v28;
      v47 = swift_slowAlloc();
      v48 = v47;
      *v29 = 136315394;
      v45 = v26;
      v30 = sub_1D78B3324();
      v31 = [v25 stringFromDate_];
      v46 = v25;
      v32 = v31;

      v33 = sub_1D78B5C74();
      v43 = v27;
      v35 = v34;

      v36 = v6;
      v37 = v44;
      v44(v36, v1);
      v38 = sub_1D77AD82C(v33, v35, &v48);

      *(v29 + 4) = v38;
      *(v29 + 12) = 2048;
      v39 = [v24 maxAllowedSubscriptionDetectionTime];

      *(v29 + 14) = v39;
      v40 = v45;
      _os_log_impl(&dword_1D7739000, v45, v43, "BundleSubscriptionDetectionManager: User does not qualify for onboarding flow since the purchase date=%s has surpassed maximum allowed subscription detection time=%lld. Nothing will be presented.", v29, 0x16u);
      v41 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1DA7043F0](v41, -1, -1);
      MEMORY[0x1DA7043F0](v29, -1, -1);

      v37(v13, v1);
    }

    else
    {

      v22(v6, v1);
      v22(v13, v1);
    }

    return 0;
  }

  v22(v13, v1);

  return 1;
}

uint64_t sub_1D778F5E4(uint64_t a1)
{
  sub_1D7752C3C();
  sub_1D78B41F4();
  v1 = sub_1D78B4014();
  sub_1D78B40A4();

  v2 = sub_1D78B4014();
  v3 = sub_1D78B40D4();

  return v3;
}

void (*sub_1D778F6C8())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1D778FDA4;
}

uint64_t sub_1D778F724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47B40](a1, ObjectType, a3);
}

uint64_t sub_1D778F774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47B30](a1, ObjectType, a3);
}

void sub_1D778F850(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78B3E24();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D778F8B0()
{
  result = qword_1EE08E600;
  if (!qword_1EE08E600)
  {
    sub_1D778F850(255, &unk_1EE08E608, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08E600);
  }

  return result;
}

void sub_1D778F924(char a1)
{
  swift_getObjectType();
  if (a1)
  {
    sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
    v10 = sub_1D78B6284();
    v3 = sub_1D78B60A4();
    sub_1D78B42C4("BundleSubscriptionDetectionManager: Detected new bundle subscription but we were flagged to hide the UI.\nNo onboarding will be shown.", 133, 2, &dword_1D7739000, v10, v3, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC16NewsSubscription34BundleSubscriptionDetectionManager_presentationOperationManager))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D78B4DE4();
      sub_1D78B3AF4();

      v4 = sub_1D78B4C84();
      if (v4)
      {
        MEMORY[0x1EEE9AC00](v4, v5);
        sub_1D7752C3C();
        sub_1D78B41F4();
        v6 = sub_1D78B4014();
        sub_1D78B40B4();

        v7 = sub_1D78B4014();
        sub_1D78B40D4();
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }

    sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
    v8 = sub_1D78B6284();
    v9 = sub_1D78B60A4();
    sub_1D78B42C4("BundleSubscriptionDetectionManager: Detected new bundle subscription but presentation operation manager is currently processing.\nNo onboarding will be shown.", 157, 2, &dword_1D7739000, v8, v9, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1D778FB9C(uint64_t a1, id a2)
{
  result = [a2 postPurchaseOnboardingConfigurationsByType];
  if (result)
  {
    v4 = result;
    sub_1D773F004(0, &qword_1EE08FBD0, 0x1E696AD98);
    sub_1D778FCD4(0);
    sub_1D778FD3C();
    v5 = sub_1D78B5BC4();

    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    v7 = v6;
    if (*(v5 + 16) && (v8 = sub_1D777BC98(v6), (v9 & 1) != 0))
    {
      v10 = *(*(v5 + 56) + 8 * v8);

      if (v10 >> 62)
      {
        v11 = sub_1D78B6534();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v11)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_1D778FCD4(uint64_t a1)
{
  if (!qword_1EC9CA440)
  {
    sub_1D773F004(255, &unk_1EC9C9CC0, 0x1E69B5498);
    v1 = sub_1D78B5F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9CA440);
    }
  }
}

unint64_t sub_1D778FD3C()
{
  result = qword_1EE08FBC0;
  if (!qword_1EE08FBC0)
  {
    sub_1D773F004(255, &qword_1EE08FBD0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08FBC0);
  }

  return result;
}

char *sub_1D778FE38(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v11 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_headline;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_subheadline;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo];
  v15 = v13;
  [v15 addSubview_];
  [v15 addSubview_];
  [v15 addSubview_];

  return v15;
}

void sub_1D7790074()
{
  sub_1D7790100(&qword_1EC9C9CF8, &unk_1D78BEF70);

  JUMPOUT(0x1DA702390);
}

uint64_t sub_1D7790100(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HideMyEmailSignupBlueprintHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7790140()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_publisherLogo;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v2 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_headline;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription36HideMyEmailSignupBlueprintHeaderView_subheadline;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

char *sub_1D7790234(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView;
  *&v5[v12] = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v13 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1;
  *&v5[v13] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1;
  v15 = sub_1D78B4864();
  v16 = objc_allocWithZone(v15);
  *&v5[v14] = sub_1D78B4854();
  v17 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v18 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2;
  v19 = objc_allocWithZone(v15);
  *&v5[v18] = sub_1D78B4854();
  v20 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3;
  *&v5[v20] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v21 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3;
  v22 = objc_allocWithZone(v15);
  *&v5[v21] = sub_1D78B4854();
  v23 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton;
  *&v5[v23] = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v24 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel;
  *&v5[v24] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  [v25 setClipsToBounds_];
  v26 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  [v25 addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];

  return v25;
}

void sub_1D77906E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_logoImageView;
  *(v1 + v3) = [objc_allocWithZone(sub_1D78B5204()) initWithFrame_];
  v4 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel1;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton1;
  v6 = sub_1D78B4864();
  v7 = objc_allocWithZone(v6);
  *(v1 + v5) = sub_1D78B4854();
  v8 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel2;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v9 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton2;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_1D78B4854();
  v11 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_accessLabel3;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_subscribeButton3;
  v13 = objc_allocWithZone(v6);
  *(v1 + v12) = sub_1D78B4854();
  v14 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_webAuthButton;
  *(v1 + v14) = [objc_allocWithZone(sub_1D78B4524()) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription22SubscriptionOffersView_learnMoreLabel;
  *(v1 + v15) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D7790930()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of MetricsProviderType.metrics(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(a1, a2);
}

{
  return (*(a3 + 32))(a1, a2);
}

id sub_1D7790A00()
{
  v0 = sub_1D7790A8C();
  v1 = sub_1D78B31E4();
  v7 = MEMORY[0x1E69E6158];
  *&v6 = v1;
  *(&v6 + 1) = v2;
  sub_1D778D0A0(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D782E03C(v5, 0x4C5255666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  return v0;
}

id sub_1D7790A8C()
{
  v1 = v0;
  v2 = 0xEE007377656E2E65;
  v3 = 0x6C7070612E6D6F63;
  v4 = sub_1D77FEE78(MEMORY[0x1E69E7CC0]);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = MEMORY[0x1E69E6158];
  if (v6)
  {
    v8 = sub_1D78B5C74();
    v10 = v9;

    *(&v36 + 1) = v7;
    if (v10)
    {
      v3 = v8;
      v2 = v10;
    }
  }

  else
  {
    *(&v36 + 1) = MEMORY[0x1E69E6158];
  }

  *&v35 = v3;
  *(&v35 + 1) = v2;
  sub_1D778D0A0(&v35, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v4;
  sub_1D782E03C(v33, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v12 = v46;
  result = [*(v1 + 16) configuration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = 0xEF73635F7377656ELL;
  v16 = 0x5F737070615F7078;
  if (([result respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v17 = [v14 paidBundleConfig];
  swift_unknownObjectRelease();
  v18 = [v17 servicesBundleMetricsTopicName];

  if (!v18)
  {
LABEL_11:
    *(&v36 + 1) = v7;
    goto LABEL_12;
  }

  v19 = sub_1D78B5C74();
  v21 = v20;

  *(&v36 + 1) = v7;
  if (v21)
  {
    v16 = v19;
    v15 = v21;
  }

LABEL_12:
  *&v35 = v16;
  *(&v35 + 1) = v15;
  sub_1D778D0A0(&v35, v33);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v12;
  sub_1D782E03C(v33, 0x6369706F74, 0xE500000000000000, v22);
  v23 = v46;
  v24 = [objc_opt_self() sharedInstance];
  v25 = [v24 feldsparID];

  if (!v25)
  {
    v26 = 0;
    v47 = v7;
    goto LABEL_16;
  }

  v26 = sub_1D78B5C74();
  v28 = v27;

  v47 = v7;
  if (!v28)
  {
    v26 = 0;
LABEL_16:
    v28 = 0xE000000000000000;
  }

  *&v46 = v26;
  *(&v46 + 1) = v28;
  sub_1D778D0A0(&v46, &v35);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v33[0] = v23;
  sub_1D782E03C(&v35, 0x72617073646C6566, 0xEA00000000006449, v29);
  v30 = *&v33[0];
  v31 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v35) = 4;
  (*(v31 + 40))(v33, &v35, ObjectType, v31);
  v43 = v33[8];
  v44 = v33[9];
  v45 = v34;
  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];
  v35 = v33[0];
  v36 = v33[1];
  v37 = v33[2];
  v38 = v33[3];
  if (sub_1D775F3CC(&v35) != 1)
  {
    if (!BYTE8(v37) && !*(&v40 + 1))
    {
      AMSMarketingItem.isBundleHardwareOffer()();
    }

    sub_1D7791888(v33, &qword_1EE090600, &type metadata for Offer, sub_1D7756CA8);
  }

  return v30;
}

id sub_1D7790E60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v5 = type metadata accessor for PurchaseContext(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77402F0(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v54 = &v52 - v11;
  v56 = sub_1D78B3294();
  v12 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v13);
  v52 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77402F0(0, qword_1EE096030, type metadata accessor for PurchaseContext);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v57 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v52 - v20;
  v22 = *a1;
  v23 = sub_1D7790A8C();
  v64 = v23;
  v58 = a2;
  sub_1D77918E8(a2, v21, qword_1EE096030, type metadata accessor for PurchaseContext);
  v24 = *(v6 + 48);
  v25 = v5;
  v26 = v24(v21, 1, v5);
  v27 = MEMORY[0x1E69E6158];
  if (v26 == 1)
  {
    sub_1D7791888(v21, qword_1EE096030, type metadata accessor for PurchaseContext, sub_1D77402F0);
    v63 = v27;
  }

  else
  {
    v28 = v21[57];
    sub_1D7791954(v21);
    LOBYTE(v62) = v28;
    v29 = PurchaseConversionLocation.pageContext.getter();
    v63 = v27;
    if (v30)
    {
      v31 = v25;
      v32 = v56;
      v33 = v12;
      goto LABEL_26;
    }
  }

  v32 = v56;
  v33 = v12;
  if (v22 <= 5)
  {
    if (v22 <= 1)
    {
      if (v22)
      {
        v30 = 0xE500000000000000;
        v29 = 0x6F69647541;
      }

      else
      {
        v30 = 0xE800000000000000;
        v29 = 0x6575737349666450;
      }
    }

    else if ((v22 - 2) >= 2)
    {
      if (v22 == 4)
      {
        v30 = 0xE500000000000000;
        v29 = 0x2B7377654ELL;
      }

      else
      {
        v30 = 0xE700000000000000;
        v29 = 0x6C656E6E616843;
      }
    }

    else
    {
      v30 = 0xE700000000000000;
      v29 = 0x656C6369747241;
    }
  }

  else if (v22 > 8)
  {
    if ((v22 - 10) >= 2)
    {
      if (v22 == 9)
      {
        v30 = 0xE400000000000000;
        v29 = 1685024582;
      }

      else
      {
        v30 = 0xE900000000000067;
        v29 = 0x6E69776F6C6C6F46;
      }
    }

    else
    {
      v30 = 0xE600000000000000;
      v29 = 0x657069636552;
    }
  }

  else if (v22 == 6 || v22 == 7)
  {
    v29 = 0x50676E69646E614CLL;
    v30 = 0xEB00000000656761;
  }

  else
  {
    v30 = 0xE600000000000000;
    v29 = 0x656C7A7A7550;
  }

  v31 = v25;
LABEL_26:
  *&v62 = v29;
  *(&v62 + 1) = v30;
  sub_1D778D0A0(&v62, v61);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v23;
  sub_1D782E03C(v61, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  v35 = v60;
  v64 = v60;
  v36 = v54;
  sub_1D77918E8(v55, v54, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  if ((*(v33 + 48))(v36, 1, v32) == 1)
  {
    sub_1D7791888(v36, &unk_1EE096460, MEMORY[0x1E6968FB0], sub_1D77402F0);
  }

  else
  {
    v37 = v52;
    (*(v33 + 32))(v52, v36, v32);
    v38 = sub_1D78B31E4();
    v63 = v27;
    *&v62 = v38;
    *(&v62 + 1) = v39;
    sub_1D778D0A0(&v62, v61);
    v40 = v64;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v60 = v40;
    sub_1D782E03C(v61, 0x4C5255666572, 0xE600000000000000, v41);
    (*(v33 + 8))(v37, v32);
    v35 = v60;
    v64 = v60;
  }

  v42 = v57;
  sub_1D77918E8(v58, v57, qword_1EE096030, type metadata accessor for PurchaseContext);
  if (v24(v42, 1, v31) == 1)
  {
    sub_1D7791888(v42, qword_1EE096030, type metadata accessor for PurchaseContext, sub_1D77402F0);
  }

  else
  {
    v43 = v53;
    sub_1D777044C(v42, v53);
    v44 = sub_1D78AE2DC();
    if (v45)
    {
      v60 = MEMORY[0x1E69E7CC8];
      sub_1D7827CB8(v44, v45, 0x49656C6369747261, 0xE900000000000064);
      v46 = MEMORY[0x1E69E6158];
      v47 = sub_1D78B5BE4();
      v49 = v48;

      if (v49)
      {
        v63 = v46;
        *&v62 = v47;
        *(&v62 + 1) = v49;
        sub_1D778D0A0(&v62, v61);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v59 = v35;
        sub_1D782E03C(v61, 0x6174654465676170, 0xEB00000000736C69, v50);
        sub_1D7791954(v43);
        return v59;
      }

      else
      {
        sub_1D782AFE8(0x6174654465676170, 0xEB00000000736C69, &v62);
        sub_1D7791888(&v62, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, sub_1D7756CA8);
        sub_1D7791954(v43);
        return v64;
      }
    }

    else
    {
      sub_1D7791954(v43);
    }
  }

  return v35;
}

id sub_1D77915E8()
{
  v0 = sub_1D7790A8C();
  v1 = PurchaseConversionLocation.pageContext.getter();
  v14 = MEMORY[0x1E69E6158];
  *&v13 = v1;
  *(&v13 + 1) = v2;
  sub_1D778D0A0(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D782E03C(v12, 0x746E6F4365676170, 0xEB00000000747865, isUniquelyReferenced_nonNull_native);
  v15 = v0;
  v4 = sub_1D78AE2DC();
  if (v5)
  {
    sub_1D7827CB8(v4, v5, 0x49656C6369747261, 0xE900000000000064);
    v6 = MEMORY[0x1E69E6158];
    v7 = sub_1D78B5BE4();
    v9 = v8;

    if (v9)
    {
      v14 = v6;
      *&v13 = v7;
      *(&v13 + 1) = v9;
      sub_1D778D0A0(&v13, v12);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D782E03C(v12, 0x6174654465676170, 0xEB00000000736C69, v10);
    }

    else
    {
      sub_1D782AFE8(0x6174654465676170, 0xEB00000000736C69, &v13);
      sub_1D7791888(&v13, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, sub_1D7756CA8);
      return v15;
    }
  }

  return v0;
}

uint64_t sub_1D77917B8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7791888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D77918E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D77402F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7791954(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D77919B0@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v86 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D78B3294();
  v84 = *(v11 - 8);
  v85 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[13];
  v115 = a2[12];
  v116 = v14;
  v15 = a2[15];
  v117 = a2[14];
  v118 = v15;
  v16 = a2[9];
  v111 = a2[8];
  v112 = v16;
  v17 = a2[11];
  v113 = a2[10];
  v114 = v17;
  v18 = a2[5];
  v107 = a2[4];
  v108 = v18;
  v19 = a2[7];
  v109 = a2[6];
  v110 = v19;
  v20 = a2[1];
  v103 = *a2;
  v104 = v20;
  v21 = a2[3];
  v105 = a2[2];
  v106 = v21;
  result = [*(v4 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_configurationManager) configuration];
  if (result)
  {
    v23 = result;
    if ([result respondsToSelector_])
    {
      v24 = a2[13];
      v99 = a2[12];
      v100 = v24;
      v25 = a2[15];
      v101 = a2[14];
      v102 = v25;
      v26 = a2[9];
      v95 = a2[8];
      v96 = v26;
      v27 = a2[11];
      v97 = a2[10];
      v98 = v27;
      v28 = a2[5];
      v91 = a2[4];
      v92 = v28;
      v29 = a2[7];
      v93 = a2[6];
      v94 = v29;
      v30 = a2[1];
      v87 = *a2;
      v88 = v30;
      v31 = a2[3];
      v89 = a2[2];
      v90 = v31;
      v32 = [PaywallModel.tag.getter() identifier];
      swift_unknownObjectRelease();
      if (!v32)
      {
        sub_1D78B5C74();
        v32 = sub_1D78B5C44();
      }

      v33 = [v23 paidALaCartePaywallConfigForChannelID_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v33 = 0;
    }

    v34 = sub_1D77920B4(v4, &v103);
    v35 = sub_1D7792244(v34 & 1, v33);
    v80 = (a1 < 0xC) & (0x806u >> a1);
    v37 = sub_1D779261C(a1, v33, &v103, v80, v35, v36);
    v78 = v38;
    v79 = v37;

    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v87 = v103;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v39 = PaywallModel.tag.getter();
    v77 = sub_1D7792EAC(a1, v39, *(v4 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseProvider));
    swift_unknownObjectRelease();
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v87 = v103;
    v88 = v104;
    v89 = v105;
    v90 = v106;
    v40 = PaywallModel.purchaseIDs.getter();
    v81 = v33;
    v82 = v8;
    if (v40)
    {
      if (v40[2])
      {
        v41 = v4;
        v42 = v40[4];
        v73 = v40[5];
        v74 = v42;

        goto LABEL_12;
      }
    }

    v41 = v4;
    v73 = 0xE000000000000000;
    v74 = 0;
LABEL_12:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = objc_opt_self();
    v45 = [v44 bundleForClass_];
    v46 = sub_1D78B3134();
    v75 = v47;
    v76 = v46;

    v48 = [v44 bundleForClass_];
    v49 = sub_1D78B3134();
    v71 = v50;
    v72 = v49;

    (*(v84 + 16))(v83, v41 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_learnMoreURL, v85);
    v51 = [v44 bundleForClass_];
    v52 = sub_1D78B3134();
    v54 = v53;

    v55 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
    v56 = type metadata accessor for PostPurchaseDestination(0);
    v57 = v86;
    (*(*(v56 - 8) + 56))(v86 + v55, 1, 1, v56);
    v58 = v73;
    *v57 = v74;
    v57[1] = v58;
    swift_storeEnumTagMultiPayload();
    v60 = *(v41 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_webAuthButtonTitle);
    v59 = *(v41 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_webAuthButtonTitle + 8);
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v87 = v103;
    v88 = v104;
    v89 = v105;
    v90 = v106;

    v61 = PaywallModel.purchaseIDs.getter();

    if (v61)
    {

      if (v80)
      {
LABEL_14:
        v62 = 3;
LABEL_17:
        v63 = v61 == 0;
        v64 = type metadata accessor for AlacartePaywallViewModel(0);
        v65 = &a3[v64[9]];
        v66 = v78;
        *a3 = v79;
        *(a3 + 1) = v66;
        v67 = v75;
        *(a3 + 2) = v76;
        *(a3 + 3) = v67;
        v68 = v71;
        *(a3 + 4) = v72;
        *(a3 + 5) = v68;
        (*(v84 + 32))(&a3[v64[7]], v83, v85);
        v69 = &a3[v64[8]];
        *v69 = v52;
        *(v69 + 1) = v54;
        *v65 = 0;
        *(v65 + 1) = 0;
        result = sub_1D779300C(v86, &a3[v64[10]]);
        v70 = &a3[v64[11]];
        *v70 = v60;
        *(v70 + 1) = v59;
        a3[v64[12]] = (v77 & 1) == 0;
        a3[v64[13]] = v63;
        a3[v64[14]] = v62;
        return result;
      }
    }

    else if (v80)
    {
      goto LABEL_14;
    }

    v62 = 2;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1D77920B4(uint64_t a1, __int128 *a2)
{
  result = [*(a1 + OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_purchaseController) purchaseLookUpEntriesByTagID];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1D7793070();
  v5 = sub_1D78B5BC4();

  v6 = [PaywallModel.tag.getter() identifier];
  swift_unknownObjectRelease();
  v7 = sub_1D78B5C74();
  v9 = v8;

  if (*(v5 + 16))
  {
    v10 = sub_1D777BBB4(v7, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v5 + 56) + 8 * v10);

      v14 = [v13 purchaseValidationState];

      return (v14 == 2);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1D7792244(uint64_t a1, id a2)
{
  if (a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_1D78B3134();

    return v4;
  }

  if (a2)
  {
    v6 = [a2 hardPaywallTitle];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D78B5C74();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        return v8;
      }
    }
  }

  v12 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = [v12 paywallDescription];

    if (v13)
    {
      v14 = [v13 hardPaywall];

      if (v14)
      {
        v8 = sub_1D78B5C74();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          return v8;
        }
      }
    }
  }

  type metadata accessor for Localized();
  v18 = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D7740344(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D78BCAB0;
  v21 = [PaywallModel.tag.getter() name];
  swift_unknownObjectRelease();
  v22 = sub_1D78B5C74();
  v24 = v23;

  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1D775ABD4();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = sub_1D78B5C94();

  return v25;
}

uint64_t sub_1D779261C(id a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == 5)
  {
    if (a2)
    {
      v6 = [a2 channelPaywallTitle];
      if (v6)
      {
        v7 = v6;
        v8 = sub_1D78B5C74();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          return v8;
        }
      }
    }

    v12 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
    swift_unknownObjectRelease();
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = [v12 paywallDescription];

    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = [v13 channelPaywall];

    if (!v14)
    {
      goto LABEL_15;
    }

    v8 = sub_1D78B5C74();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {

LABEL_15:
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      sub_1D78B3134();

      sub_1D7740344(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D78BCAB0;
      v21 = [PaywallModel.tag.getter() name];
      swift_unknownObjectRelease();
      v22 = sub_1D78B5C74();
      v24 = v23;

      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1D775ABD4();
      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      v8 = sub_1D78B5C94();

      return v8;
    }

    return v8;
  }

  v8 = a5;
  if (*(a3 + 240) == 1)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        v25 = [a2 leakyPaywallTitle];
        if (v25)
        {
          v26 = v25;
          v8 = sub_1D78B5C74();
          v28 = v27;

          v29 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v29 = v8 & 0xFFFFFFFFFFFFLL;
          }

          if (v29)
          {
            return v8;
          }
        }
      }

      v30 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
      swift_unknownObjectRelease();
      if (v30)
      {
        v31 = [v30 paywallDescription];

        if (v31)
        {
          v32 = [v31 leakyPaywall];

          if (v32)
          {
            v8 = sub_1D78B5C74();
            v34 = v33;

            v35 = HIBYTE(v34) & 0xF;
            if ((v34 & 0x2000000000000000) == 0)
            {
              v35 = v8 & 0xFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              return v8;
            }
          }
        }
      }

      type metadata accessor for Localized();
      v36 = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass_];
      v8 = sub_1D78B3134();

      return v8;
    }

LABEL_33:

    return v8;
  }

  if (a4)
  {
    goto LABEL_33;
  }

  if (a2)
  {
    v39 = [a2 promotionalPaywallTitle];
    if (v39)
    {
      v40 = v39;
      v8 = sub_1D78B5C74();
      v42 = v41;

      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        return v8;
      }
    }
  }

  v44 = [PaywallModel.tag.getter() publisherPaidDescriptionStrings];
  swift_unknownObjectRelease();
  if (!v44)
  {
    goto LABEL_15;
  }

  v45 = [v44 paywallDescription];

  if (!v45)
  {
    goto LABEL_15;
  }

  v46 = [v45 promotionalPaywall];

  if (!v46)
  {
    goto LABEL_15;
  }

  v8 = sub_1D78B5C74();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    goto LABEL_15;
  }

  return v8;
}

uint64_t sub_1D7792DC4()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription31AlacartePaywallViewModelFactory_learnMoreURL;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7792EAC(uint64_t result, id a2, void *a3)
{
  if (result)
  {
    if ([a2 isAuthenticationSetup])
    {
      if ([swift_unknownObjectRetain() tagType] == 3)
      {
        v5 = [a2 asSection];
        if (!v5 || (v6 = [v5 parentID], swift_unknownObjectRelease(), !v6))
        {
          swift_unknownObjectRelease();
          return 1;
        }
      }

      else
      {
        v6 = [a2 identifier];
      }

      v7 = sub_1D78B5C74();
      v9 = v8;

      v10 = [a3 purchasedTagIDs];
      v11 = sub_1D78B5F64();

      LOBYTE(v10) = sub_1D7832E64(v7, v9, v11);

      swift_unknownObjectRelease();

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D779300C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscribeButtonDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7793070()
{
  result = qword_1EE08FD80;
  if (!qword_1EE08FD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FD80);
  }

  return result;
}

id sub_1D7793344()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler____lazy_storage___paidBundleViaOfferConfig;
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler____lazy_storage___paidBundleViaOfferConfig);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_appConfigurationManager) possiblyUnfetchedAppConfiguration];
    if ([v4 respondsToSelector_])
    {
      v3 = [v4 paidBundleViaOfferConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_1D7796F5C(v5);
  }

  sub_1D7796F6C(v2);
  return v3;
}

uint64_t sub_1D7793414()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3394();
  v55 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v54 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v52 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v52 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v56 = &v52 - v23;
  v24 = sub_1D7793344();
  if (v24)
  {
    v25 = v24;
    v53 = [v24 iconBadgeQuiescenceInterval];

    v27 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v26 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v27);
    (*(v26 + 8))(v27, v26);
    v28 = *(v6 + 48);
    if (v28(v4, 1, v5) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *(v9 + v5[5]) = 0;
      *(v9 + v5[7]) = 0;
      *(v9 + v5[9]) = 0;
      if (v28(v4, 1, v5) != 1)
      {
        sub_1D7796E98(v4, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v4, v9);
    }

    v34 = v55;
    v33 = v56;
    v35 = *(v55 + 16);
    v35(v56, v9, v10);
    sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    LODWORD(v9) = sub_1D78B3334();
    v36 = *(v34 + 8);
    v36(v17, v10);
    v36(v21, v10);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D78B4304();
    __swift_project_value_buffer(v37, qword_1EE09C270);
    v38 = v54;
    v35(v54, v33, v10);
    v39 = v33;
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v38;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      LODWORD(v55) = v9;
      v9 = v44;
      v57 = v44;
      *v43 = 67109634;
      *(v43 + 4) = v55 & 1;
      *(v43 + 8) = 2048;
      *(v43 + 10) = v53;
      *(v43 + 18) = 2080;
      sub_1D7796F7C();
      v45 = sub_1D78B66E4();
      v47 = v46;
      v36(v42, v10);
      v48 = sub_1D77AD82C(v45, v47, &v57);

      *(v43 + 20) = v48;
      _os_log_impl(&dword_1D7739000, v40, v41, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Icon Badge Date [%s]", v43, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      v49 = v9;
      LOBYTE(v9) = v55;
      MEMORY[0x1DA7043F0](v49, -1, -1);
      MEMORY[0x1DA7043F0](v43, -1, -1);

      v50 = v56;
    }

    else
    {

      v36(v38, v10);
      v50 = v39;
    }

    v36(v50, v10);
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D78B4304();
    __swift_project_value_buffer(v29, qword_1EE09C270);
    v30 = sub_1D78B42E4();
    v31 = sub_1D78B60A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7739000, v30, v31, "Icon badge quiescence interval is null. Exiting.", v32, 2u);
      MEMORY[0x1DA7043F0](v32, -1, -1);
    }

    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D7793A18()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3394();
  v50 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v46 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v49 = &v46 - v23;
  v24 = sub_1D7793344();
  if (v24)
  {
    v25 = v24;
    v47 = [v24 upsellBestOfferRefreshQuiescenceInterval];

    v27 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v26 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v27);
    (*(v26 + 8))(v27, v26);
    v28 = *(v6 + 48);
    if (v28(v4, 1, v5) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v9[v5[5]] = 0;
      *&v9[v5[7]] = 0;
      *&v9[v5[9]] = 0;
      if (v28(v4, 1, v5) != 1)
      {
        sub_1D7796E98(v4, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v4, v9);
    }

    v30 = v49;
    v31 = v50;
    v32 = *(v50 + 16);
    v32(v49, &v9[v5[10]], v10);
    sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v29 = sub_1D78B3334();
    v33 = *(v31 + 8);
    v33(v17, v10);
    v50 = v31 + 8;
    v33(v21, v10);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D78B4304();
    __swift_project_value_buffer(v34, qword_1EE09C270);
    v35 = v48;
    v32(v48, v30, v10);
    v36 = sub_1D78B42E4();
    v37 = sub_1D78B60A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v35;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 67109634;
      *(v39 + 4) = v29 & 1;
      *(v39 + 8) = 2048;
      *(v39 + 10) = v47;
      *(v39 + 18) = 2080;
      sub_1D7796F7C();
      v41 = sub_1D78B66E4();
      v43 = v42;
      v33(v38, v10);
      v44 = sub_1D77AD82C(v41, v43, &v51);

      *(v39 + 20) = v44;
      _os_log_impl(&dword_1D7739000, v36, v37, "Checking hasBestOfferRefreshQuiescenceIntervalElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Refresh Date [%s]", v39, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1DA7043F0](v40, -1, -1);
      MEMORY[0x1DA7043F0](v39, -1, -1);

      v33(v49, v10);
    }

    else
    {

      v33(v35, v10);
      v33(v30, v10);
    }
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1D7793F7C()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3394();
  v54 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v50 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v53 = &v50 - v23;
  v24 = sub_1D7793344();
  if (v24)
  {
    v25 = v24;
    v51 = [v24 localNotificationQuiescenceInterval];

    v27 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v26 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v27);
    (*(v26 + 8))(v27, v26);
    v28 = *(v6 + 48);
    if (v28(v4, 1, v5) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v9[v5[5]] = 0;
      *&v9[v5[7]] = 0;
      *&v9[v5[9]] = 0;
      if (v28(v4, 1, v5) != 1)
      {
        sub_1D7796E98(v4, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v4, v9);
    }

    v34 = v53;
    v35 = v54;
    v36 = *(v54 + 16);
    v36(v53, &v9[v5[6]], v10);
    sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v33 = sub_1D78B3334();
    v37 = *(v35 + 8);
    v37(v17, v10);
    v54 = v35 + 8;
    v37(v21, v10);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D78B4304();
    __swift_project_value_buffer(v38, qword_1EE09C270);
    v39 = v52;
    v36(v52, v34, v10);
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 67109634;
      *(v43 + 4) = v33 & 1;
      *(v43 + 8) = 2048;
      *(v43 + 10) = v51;
      *(v43 + 18) = 2080;
      sub_1D7796F7C();
      v45 = sub_1D78B66E4();
      v47 = v46;
      v37(v42, v10);
      v48 = sub_1D77AD82C(v45, v47, &v55);

      *(v43 + 20) = v48;
      _os_log_impl(&dword_1D7739000, v40, v41, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Local Notification Date [%s]", v43, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA7043F0](v44, -1, -1);
      MEMORY[0x1DA7043F0](v43, -1, -1);

      v37(v53, v10);
    }

    else
    {

      v37(v39, v10);
      v37(v34, v10);
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D78B4304();
    __swift_project_value_buffer(v29, qword_1EE09C270);
    v30 = sub_1D78B42E4();
    v31 = sub_1D78B60A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7739000, v30, v31, "Local notification quiescence interval is null. Exiting.", v32, 2u);
      MEMORY[0x1DA7043F0](v32, -1, -1);
    }

    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1D7794594()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3394();
  v54 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &v50 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v53 = &v50 - v23;
  v24 = sub_1D7793344();
  if (v24)
  {
    v25 = v24;
    v51 = [v24 upsellQuiescenceInterval];

    v27 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v26 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v27);
    (*(v26 + 8))(v27, v26);
    v28 = *(v6 + 48);
    if (v28(v4, 1, v5) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v9[v5[5]] = 0;
      *&v9[v5[7]] = 0;
      *&v9[v5[9]] = 0;
      if (v28(v4, 1, v5) != 1)
      {
        sub_1D7796E98(v4, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v4, v9);
    }

    v34 = v53;
    v35 = v54;
    v36 = *(v54 + 16);
    v36(v53, &v9[v5[8]], v10);
    sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
    sub_1D78B3374();
    sub_1D78B3314();
    v33 = sub_1D78B3334();
    v37 = *(v35 + 8);
    v37(v17, v10);
    v54 = v35 + 8;
    v37(v21, v10);
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v38 = sub_1D78B4304();
    __swift_project_value_buffer(v38, qword_1EE09C270);
    v39 = v52;
    v36(v52, v34, v10);
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 67109634;
      *(v43 + 4) = v33 & 1;
      *(v43 + 8) = 2048;
      *(v43 + 10) = v51;
      *(v43 + 18) = 2080;
      sub_1D7796F7C();
      v45 = sub_1D78B66E4();
      v47 = v46;
      v37(v42, v10);
      v48 = sub_1D77AD82C(v45, v47, &v55);

      *(v43 + 20) = v48;
      _os_log_impl(&dword_1D7739000, v40, v41, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Upsell Date [%s]", v43, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA7043F0](v44, -1, -1);
      MEMORY[0x1DA7043F0](v43, -1, -1);

      v37(v53, v10);
    }

    else
    {

      v37(v39, v10);
      v37(v34, v10);
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D78B4304();
    __swift_project_value_buffer(v29, qword_1EE09C270);
    v30 = sub_1D78B42E4();
    v31 = sub_1D78B60A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D7739000, v30, v31, "Upsell quiescence interval is null. Exiting.", v32, 2u);
      MEMORY[0x1DA7043F0](v32, -1, -1);
    }

    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_1D7794BAC()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7793344();
  if (v10)
  {
    v11 = v10;
    v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
    v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v12);
    (*(v13 + 8))(v12, v13);
    v14 = *(v6 + 48);
    if (v14(v4, 1, v5) == 1)
    {
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      sub_1D78B32E4();
      *&v9[v5[5]] = 0;
      *&v9[v5[7]] = 0;
      *&v9[v5[9]] = 0;
      if (v14(v4, 1, v5) != 1)
      {
        sub_1D7796E98(v4, sub_1D7796E40);
      }
    }

    else
    {
      sub_1D7796EF8(v4, v9);
    }

    v19 = *&v9[v5[9]];
    sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
    if (v19 < [v11 upsellMaxNumberOfPresentations])
    {

      return 1;
    }

    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D78B4304();
    __swift_project_value_buffer(v21, qword_1EE09C270);
    v16 = v11;
    v22 = sub_1D78B42E4();
    v23 = sub_1D78B60A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = [v16 upsellMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v22, v23, "Reached max number of upsell presentations [%lld]. Exiting.", v24, 0xCu);
      MEMORY[0x1DA7043F0](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C270);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D7739000, v16, v17, "No via offer configuration found. Exiting.", v18, 2u);
      MEMORY[0x1DA7043F0](v18, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1D7795044(char a1)
{
  v2 = v1;
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaidBundleViaOfferState(0);
  v9 = *(v8 - 1);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v43 - v15;
  if ((sub_1D7794594() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D78B4304();
    __swift_project_value_buffer(v22, qword_1EE09C270);
    v23 = sub_1D78B42E4();
    v24 = sub_1D78B60A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D7739000, v23, v24, "Upsell quiescence interval has not elapsed. Skipping.", v25, 2u);
      MEMORY[0x1DA7043F0](v25, -1, -1);
    }

    v47 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  if ((sub_1D7794BAC() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v26 = sub_1D78B4304();
    __swift_project_value_buffer(v26, qword_1EE09C270);
    v27 = sub_1D78B42E4();
    v28 = sub_1D78B60A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D7739000, v27, v28, "Upsell cannot be presented. Exiting.", v29, 2u);
      MEMORY[0x1DA7043F0](v29, -1, -1);
    }

    v46 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  if ((a1 & 1) != 0 && (sub_1D7793A18() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D78B4304();
    __swift_project_value_buffer(v39, qword_1EE09C270);
    v40 = sub_1D78B42E4();
    v41 = sub_1D78B60A4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1D7739000, v40, v41, "Best Offer refresh quiescence interval did not elapse. Exiting.", v42, 2u);
      MEMORY[0x1DA7043F0](v42, -1, -1);
    }

    v45 = 0;
    sub_1D77505D0();
    swift_allocObject();
    return sub_1D78B4104();
  }

  v17 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v18 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v44 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v43[1] = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v44);
  v20 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v20);
  (*(v19 + 8))(v20, v19);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v13[v8[5]] = 0;
    *&v13[v8[7]] = 0;
    *&v13[v8[9]] = 0;
    if (v21(v7, 1, v8) != 1)
    {
      sub_1D7796E98(v7, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v7, v13);
  }

  sub_1D78B3374();
  v31 = sub_1D78B3394();
  v32 = *(*(v31 - 8) + 16);
  v32(v16, v13, v31);
  v33 = *&v13[v8[5]];
  v32(&v16[v8[6]], &v13[v8[6]], v31);
  v34 = *&v13[v8[7]];
  v32(&v16[v8[8]], &v13[v8[8]], v31);
  v35 = *&v13[v8[9]];
  sub_1D7796E98(v13, type metadata accessor for PaidBundleViaOfferState);
  *&v16[v8[5]] = v33;
  *&v16[v8[7]] = v34;
  *&v16[v8[9]] = v35;
  (*(v18 + 24))(v16, v44, v18);
  sub_1D7796E98(v16, type metadata accessor for PaidBundleViaOfferState);
  v36 = (v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_featureAvailability);
  v37 = *(v2 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_featureAvailability + 24);
  v38 = v36[4];
  __swift_project_boxed_opaque_existential_1(v36, v37);
  return (*(v38 + 72))(v37, v38);
}

uint64_t sub_1D7795678()
{
  v1 = v0;
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaidBundleViaOfferState(0);
  v7 = *(v6 - 1);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v40 - v17;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D78B4304();
  __swift_project_value_buffer(v19, qword_1EE09C270);
  v20 = sub_1D78B42E4();
  v21 = sub_1D78B60A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D7739000, v20, v21, "Will present upsell. Updating counters.", v22, 2u);
    MEMORY[0x1DA7043F0](v22, -1, -1);
  }

  v23 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v24 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v43 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v44 = v24;
  v42 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v24);
  v26 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v26);
  (*(v25 + 8))(v26, v25);
  v27 = *(v7 + 48);
  v28 = v27(v5, 1, v6);
  v47 = v18;
  if (v28 == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v11[v6[5]] = 0;
    *&v11[v6[7]] = 0;
    *&v11[v6[9]] = 0;
    if (v27(v5, 1, v6) != 1)
    {
      sub_1D7796E98(v5, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v5, v11);
  }

  v46 = v6[8];
  sub_1D78B3374();
  v29 = sub_1D78B3394();
  v30 = *(*(v29 - 8) + 16);
  v30(v15, v11, v29);
  v31 = v6[6];
  v32 = *&v11[v6[5]];
  v30(&v15[v31], &v11[v31], v29);
  v33 = *&v11[v6[7]];
  v34 = v6[10];
  v45 = *&v11[v6[9]];
  v30(&v15[v34], &v11[v34], v29);
  sub_1D7796E98(v11, type metadata accessor for PaidBundleViaOfferState);
  v35 = v6[5];
  v40 = v33;
  v41 = v32;
  *&v15[v35] = v32;
  *&v15[v6[7]] = v33;
  v36 = v45;
  *&v15[v6[9]] = v45;
  v37 = v47;
  v30(v47, v15, v29);
  v30((v37 + v6[6]), &v15[v31], v29);
  result = (v30)(v37 + v6[8], &v15[v46], v29);
  if (__OFADD__(v36, 1))
  {
    __break(1u);
  }

  else
  {
    v30((v37 + v6[10]), &v15[v34], v29);
    sub_1D7796E98(v15, type metadata accessor for PaidBundleViaOfferState);
    v39 = v40;
    *(v37 + v6[5]) = v41;
    *(v37 + v6[7]) = v39;
    *(v37 + v6[9]) = v36 + 1;
    (*(v43 + 24))(v37, v44);
    return sub_1D7796E98(v37, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

uint64_t sub_1D7795B64()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7793F7C() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C270);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Local notification quiescence interval has not elapsed. Skipping.";
LABEL_14:
    _os_log_impl(&dword_1D7739000, v16, v17, v19, v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
LABEL_15:

    return 0;
  }

  v10 = sub_1D7793344();
  if (!v10)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D78B4304();
    __swift_project_value_buffer(v20, qword_1EE09C270);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No via offer configuration found. Exiting.";
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v12);
  (*(v13 + 8))(v12, v13);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v9[v5[5]] = 0;
    *&v9[v5[7]] = 0;
    *&v9[v5[9]] = 0;
    if (v14(v4, 1, v5) != 1)
    {
      sub_1D7796E98(v4, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v4, v9);
  }

  v22 = *&v9[v5[7]];
  sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
  if (v22 >= [v11 localNotificationMaxNumberOfPresentations])
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v16 = v11;
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = [v16 localNotificationMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v24, v25, "Reached max number of local notifications [%lld]. Exiting.", v26, 0xCu);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1D7795FF8()
{
  v1 = v0;
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaidBundleViaOfferState(0);
  v7 = *(v6 - 1);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v40 - v17;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D78B4304();
  __swift_project_value_buffer(v19, qword_1EE09C270);
  v20 = sub_1D78B42E4();
  v21 = sub_1D78B60A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1D7739000, v20, v21, "Will send local notification. Updating counters.", v22, 2u);
    MEMORY[0x1DA7043F0](v22, -1, -1);
  }

  v23 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v24 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v44 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v45 = v24;
  v43 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v24);
  v26 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v26);
  (*(v25 + 8))(v26, v25);
  v27 = *(v7 + 48);
  v28 = v27(v5, 1, v6);
  v47 = v18;
  if (v28 == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v11[v6[5]] = 0;
    *&v11[v6[7]] = 0;
    *&v11[v6[9]] = 0;
    if (v27(v5, 1, v6) != 1)
    {
      sub_1D7796E98(v5, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v5, v11);
  }

  v46 = v6[6];
  sub_1D78B3374();
  v29 = sub_1D78B3394();
  v30 = *(*(v29 - 8) + 16);
  v30(v15, v11, v29);
  v31 = *&v11[v6[5]];
  v32 = v6[8];
  v33 = *&v11[v6[7]];
  v40 = v32;
  v30(&v15[v32], &v11[v32], v29);
  v34 = v6[10];
  v35 = *&v11[v6[9]];
  v30(&v15[v34], &v11[v34], v29);
  sub_1D7796E98(v11, type metadata accessor for PaidBundleViaOfferState);
  v36 = v6[5];
  v41 = v35;
  v42 = v31;
  *&v15[v36] = v31;
  *&v15[v6[7]] = v33;
  *&v15[v6[9]] = v35;
  v37 = v47;
  v30(v47, v15, v29);
  result = (v30)(v37 + v6[6], &v15[v46], v29);
  if (__OFADD__(v33, 1))
  {
    __break(1u);
  }

  else
  {
    v30((v37 + v6[8]), &v15[v40], v29);
    v30((v37 + v6[10]), &v15[v34], v29);
    sub_1D7796E98(v15, type metadata accessor for PaidBundleViaOfferState);
    v39 = v41;
    *(v37 + v6[5]) = v42;
    *(v37 + v6[7]) = v33 + 1;
    *(v37 + v6[9]) = v39;
    (*(v44 + 24))(v37, v45);
    return sub_1D7796E98(v37, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

uint64_t sub_1D77964E4()
{
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaidBundleViaOfferState(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D7793414() & 1) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C270);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Icon badging quiescence interval has not elapsed. Skipping.";
LABEL_14:
    _os_log_impl(&dword_1D7739000, v16, v17, v19, v18, 2u);
    MEMORY[0x1DA7043F0](v18, -1, -1);
LABEL_15:

    return 0;
  }

  v10 = sub_1D7793344();
  if (!v10)
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D78B4304();
    __swift_project_value_buffer(v20, qword_1EE09C270);
    v16 = sub_1D78B42E4();
    v17 = sub_1D78B60A4();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No via offer configuration found. Exiting.";
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v12);
  (*(v13 + 8))(v12, v13);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v9[v5[5]] = 0;
    *&v9[v5[7]] = 0;
    *&v9[v5[9]] = 0;
    if (v14(v4, 1, v5) != 1)
    {
      sub_1D7796E98(v4, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v4, v9);
  }

  v22 = *&v9[v5[5]];
  sub_1D7796E98(v9, type metadata accessor for PaidBundleViaOfferState);
  if (v22 >= [v11 iconBadgeMaxNumberOfPresentations])
  {
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D78B4304();
    __swift_project_value_buffer(v23, qword_1EE09C270);
    v16 = v11;
    v24 = sub_1D78B42E4();
    v25 = sub_1D78B60A4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = [v16 iconBadgeMaxNumberOfPresentations];

      _os_log_impl(&dword_1D7739000, v24, v25, "Reached max number of icon badging [%lld]. Exiting.", v26, 0xCu);
      MEMORY[0x1DA7043F0](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1D7796978()
{
  v1 = v0;
  sub_1D7796E40(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaidBundleViaOfferState(0);
  v7 = *(v6 - 1);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v47 = &v40 - v17;
  if (qword_1EE0904F0 != -1)
  {
    swift_once();
  }

  v18 = sub_1D78B4304();
  __swift_project_value_buffer(v18, qword_1EE09C270);
  v19 = sub_1D78B42E4();
  v20 = sub_1D78B60A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1D7739000, v19, v20, "Will badge icon. Updating counters.", v21, 2u);
    MEMORY[0x1DA7043F0](v21, -1, -1);
  }

  v22 = (v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store);
  v23 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 24);
  v45 = *(v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store + 32);
  v46 = v23;
  v44 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16NewsSubscription25PaidBundleViaOfferHandler_store), v23);
  v25 = v22[3];
  v24 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v25);
  (*(v24 + 8))(v25, v24);
  v26 = *(v7 + 48);
  if (v26(v5, 1, v6) == 1)
  {
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    sub_1D78B32E4();
    *&v11[v6[5]] = 0;
    *&v11[v6[7]] = 0;
    *&v11[v6[9]] = 0;
    if (v26(v5, 1, v6) != 1)
    {
      sub_1D7796E98(v5, sub_1D7796E40);
    }
  }

  else
  {
    sub_1D7796EF8(v5, v11);
  }

  sub_1D78B3374();
  v27 = v15;
  v28 = v6[6];
  v29 = *&v11[v6[5]];
  v30 = sub_1D78B3394();
  v31 = *(*(v30 - 8) + 16);
  v41 = v28;
  v31(v27 + v28, &v11[v28], v30);
  v32 = v6[8];
  v33 = *&v11[v6[7]];
  v40 = v32;
  v31(v27 + v32, &v11[v32], v30);
  v34 = v6[10];
  v35 = *&v11[v6[9]];
  v31(v27 + v34, &v11[v34], v30);
  sub_1D7796E98(v11, type metadata accessor for PaidBundleViaOfferState);
  *(v27 + v6[5]) = v29;
  v36 = v6[7];
  v42 = v35;
  v43 = v33;
  *(v27 + v36) = v33;
  *(v27 + v6[9]) = v35;
  v37 = v47;
  result = (v31)(v47, v27, v30);
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v31(v37 + v6[6], (v27 + v41), v30);
    v31(v37 + v6[8], (v27 + v40), v30);
    v31(v37 + v6[10], (v27 + v34), v30);
    sub_1D7796E98(v27, type metadata accessor for PaidBundleViaOfferState);
    *(v37 + v6[5]) = v29 + 1;
    v39 = v42;
    *(v37 + v6[7]) = v43;
    *(v37 + v6[9]) = v39;
    (*(v45 + 24))(v37, v46);
    return sub_1D7796E98(v37, type metadata accessor for PaidBundleViaOfferState);
  }

  return result;
}

void sub_1D7796E40(uint64_t a1)
{
  if (!qword_1EE092D58[0])
  {
    type metadata accessor for PaidBundleViaOfferState(255);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, qword_1EE092D58);
    }
  }
}

uint64_t sub_1D7796E98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7796EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaidBundleViaOfferState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7796F5C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1D7796F6C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_1D7796F7C()
{
  result = qword_1EE095650;
  if (!qword_1EE095650)
  {
    sub_1D78B3394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE095650);
  }

  return result;
}

uint64_t sub_1D77970D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D78B52D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v8 = sub_1D78B6104();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1D78B52F4();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v9 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
    swift_beginAccess();
    v4 = *(v2 + v9);
    v17 = MEMORY[0x1E69E7CC0];
    if (!(v4 >> 62))
    {
      v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_21:
    __break(1u);
  }

  v10 = sub_1D78B6534();
LABEL_4:

  if (v10)
  {
    v15 = v9;
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v2, v4);
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v2 = v16;
          v13 = v17;
          v9 = v15;
          goto LABEL_19;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v9 = Strong, swift_unknownObjectRelease(), v9 == a1))
      {
      }

      else
      {
        v9 = &v17;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      ++v2;
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v2 + v9) = v13;
}

uint64_t sub_1D7797354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v39 = a2;
  v40 = a1;
  v5 = sub_1D78B52D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  *v9 = sub_1D78B6104();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v10 = sub_1D78B52F4();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v10 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
    swift_beginAccess();
    v3 = *(v4 + v10);
    v41 = MEMORY[0x1E69E7CC0];
    if (!(v3 >> 62))
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }

  v11 = sub_1D78B6534();
LABEL_4:

  if (v11)
  {
    v35 = v10;
    v36 = v4;
    v12 = 0;
    v37 = v3 & 0xFFFFFFFFFFFFFF8;
    v38 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v38)
      {
        v13 = MEMORY[0x1DA703700](v12, v3);
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v33 = v41;
          v10 = v35;
          v4 = v36;
          goto LABEL_37;
        }
      }

      else
      {
        if (v12 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v13 = *(v3 + 8 * v12 + 32);

        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 24);
        ObjectType = swift_getObjectType();
        v16 = (*(*(v14 + 8) + 8))(ObjectType);
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_getObjectType();
      v20 = *(v39 + 8);
      v21 = (*(v20 + 8))(v19, v20);
      if (!v18)
      {
        goto LABEL_6;
      }

      if (v16 == v21 && v18 == v22)
      {
      }

      else
      {
        v24 = sub_1D78B6724();

        if ((v24 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v13 + 24);
        v26 = swift_getObjectType();
        v27 = (*(*(v25 + 8) + 16))(v26);
        v29 = v28;
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = (*(v20 + 16))(v19, v20);
      v10 = v31;
      if (v29)
      {
        if (v27 == v30 && v29 == v31)
        {

          goto LABEL_8;
        }

        v32 = sub_1D78B6724();

        if (v32)
        {

          goto LABEL_8;
        }
      }

      else
      {
LABEL_6:
      }

LABEL_7:
      v10 = &v41;
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
LABEL_8:
      ++v12;
      if (v4 == v11)
      {
        goto LABEL_35;
      }
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v4 + v10) = v33;
}

double sub_1D779776C@<D0>(uint64_t a1@<X0>, void (*a2)()@<X1>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  sub_1D779C6B0(a1, v10);
  if (!v11)
  {
    sub_1D779C78C(v10, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
    goto LABEL_5;
  }

  sub_1D773F004(0, &qword_1EE08FF20, 0x1E69B54D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    sub_1D779C65C();
    v7 = swift_allocError();
    a3();

    goto LABEL_6;
  }

  a2();

LABEL_6:
  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_1D7797898(void *a1, void (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = a1;
    v5 = v3;
  }

  else
  {
    sub_1D779C65C();
    v5 = swift_allocError();
    v3 = v5;
  }

  a2(v5);
}

void sub_1D7797914(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_1D7797980()
{
  sub_1D78B3F24();
  v0 = *__swift_project_boxed_opaque_existential_1(v4, v4[3]);

  sub_1D78B3854();

  swift_beginAccess();
  v1 = *(v0 + 24);

  sub_1D78B3864();

  v2 = *(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 != 0;
}

void sub_1D7797A3C(void *a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v5 = [a1 offerName];
  v6 = sub_1D78B5C74();
  v8 = v7;

  sub_1D77BBB6C(v6, v8, a2);

  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);
  v10 = sub_1D78B5C44();
  v11 = *(a2 + 56);
  v14[0] = 0;
  [v9 startPurchaseWithTagID:v10 purchase:a1 webAccessOptIn:v11 error:v14];

  v12 = v14[0];
  if (v14[0])
  {
    swift_willThrow();
    v13 = v12;
  }
}

id sub_1D7797BA0(void *a1, uint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v5 = [a1 offerName];
  v6 = sub_1D78B5C74();
  v8 = v7;

  sub_1D77BBB6C(v6, v8, a2);

  __swift_destroy_boxed_opaque_existential_1(v12);
  v9 = *(v2 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_internalPurchaseManager);
  v12[0] = 0;
  result = [v9 startBundlePurchaseWithPurchase:a1 error:v12];
  v11 = v12[0];
  if (v12[0])
  {
    swift_willThrow();
    return v11;
  }

  return result;
}

void sub_1D7797CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a3;
  v54 = a4;
  v15 = type metadata accessor for PurchaseContext(0);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v18 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v52 = v19;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(aBlock, v56);
  sub_1D77BBB6C(*a6, a6[1], a6);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v20 = &a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier];
  *v20 = a7;
  *(v20 + 1) = a8;

  v21 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:a9];
  v22 = [objc_opt_self() sharedAccount];
  v23 = [v22 activeiTunesAccount];

  [v21 setAccount_];
  [v21 setUserInitiated_];
  if (a8)
  {
    v24 = sub_1D78B5C44();
  }

  else
  {
    v24 = 0;
  }

  [v21 setPresentingSceneIdentifier_];

  v25 = *&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder + 24];
  v26 = *&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder + 32];
  __swift_project_boxed_opaque_existential_1(&a5[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_metricsBuilder], v25);
  v27 = (*(v26 + 32))(a6, v25, v26);
  sub_1D778CA2C(v27);
  v28 = sub_1D78B5BB4();

  [v21 setMetricsOverlay_];

  v29 = sub_1D78B5BE4();
  v31 = v30;

  if (v31)
  {
    sub_1D779C548(0, &qword_1EC9C9E80, sub_1D779C328, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D78BCAB0;
    *(inited + 32) = 0x7363697274656DLL;
    v33 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v29;
    *(inited + 56) = v31;
    sub_1D77FEFC4(inited);
    swift_setDeallocating();
    sub_1D779C45C(v33, sub_1D779C328);
    v34 = sub_1D78B5BB4();

    [v21 setAdditionalHeaders_];
  }

  v35 = objc_opt_self();
  v36 = v21;
  v37 = [v35 bag];
  v38 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v36 bag:v37];

  swift_unknownObjectRelease();
  [v38 setDelegate_];
  v39 = [v38 performPurchase];
  sub_1D7770378(a6, &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v41 = (v16 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  sub_1D777044C(v18, v43 + v40);
  v44 = (v43 + v41);
  v45 = v54;
  *v44 = v53;
  v44[1] = v45;
  v46 = (v43 + v42);
  v47 = v52;
  *v46 = sub_1D7757030;
  v46[1] = v47;
  *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v57 = sub_1D779C258;
  v58 = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D779D648;
  v56 = &block_descriptor_2;
  v48 = _Block_copy(aBlock);
  v49 = a5;

  v50 = v38;

  [v39 addFinishBlock_];
  _Block_release(v48);
}

uint64_t sub_1D7798274(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a5;
  v14 = type metadata accessor for PurchaseContext(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  if (a2)
  {
    v18 = sub_1D78B31B4();
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v19 = qword_1EE09C268;
    v20 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D78BCAB0;
    v22 = [v18 description];
    v23 = sub_1D78B5C74();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1D775ABD4();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    sub_1D78B42C4("AMSPurchaseResult: Purchase failed with error=%{public}@", 56, 2, &dword_1D7739000, v19, v20, v21);

    v26 = v18;
    sub_1D7798780(v26, a4);

    v27 = v26;
    v63();
  }

  else if (a1)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE09C268;
    v29 = sub_1D78B60A4();
    sub_1D78B42C4("AMSPurchaseResult: Purchase succeeded", 37, 2, &dword_1D7739000, v28, v29, MEMORY[0x1E69E7CC0]);
    v30 = *&a3[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_bundleSubscriptionManager];
    sub_1D7770378(a4, &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = a3;
    sub_1D777044C(&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
    v33 = (v32 + ((v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = a7;
    v33[1] = a8;
    *&v66 = sub_1D779C3B8;
    *(&v66 + 1) = v32;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v65 = sub_1D7781488;
    *(&v65 + 1) = &block_descriptor_17;
    v34 = _Block_copy(&aBlock);
    v35 = a3;

    [v30 refreshBundleSubscriptionWithCachePolicy:3 completion:v34];
    _Block_release(v34);
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v36 = qword_1EE09C268;
    v37 = sub_1D78B60A4();
    sub_1D78B42C4("AMSPurchaseResult: Purchase failed with result nil", 50, 2, &dword_1D7739000, v36, v37, MEMORY[0x1E69E7CC0]);
    sub_1D779C384(&aBlock);
    sub_1D7781E98();
    v38 = swift_allocError();
    v40 = v65;
    v39 = v66;
    *v41 = aBlock;
    *(v41 + 16) = v40;
    *(v41 + 32) = v39;
    v42 = v70;
    v44 = v67;
    v43 = v68;
    *(v41 + 80) = v69;
    *(v41 + 96) = v42;
    *(v41 + 48) = v44;
    *(v41 + 64) = v43;
    v46 = v72;
    v45 = v73;
    v47 = v71;
    *(v41 + 160) = v74;
    *(v41 + 128) = v46;
    *(v41 + 144) = v45;
    *(v41 + 112) = v47;
    sub_1D7798780(v38, a4);

    v48 = swift_allocError();
    v50 = v65;
    v49 = v66;
    *v51 = aBlock;
    *(v51 + 16) = v50;
    *(v51 + 32) = v49;
    v52 = v70;
    v54 = v67;
    v53 = v68;
    *(v51 + 80) = v69;
    *(v51 + 96) = v52;
    *(v51 + 48) = v54;
    *(v51 + 64) = v53;
    v56 = v72;
    v55 = v73;
    v57 = v71;
    *(v51 + 160) = v74;
    *(v51 + 128) = v56;
    *(v51 + 144) = v55;
    *(v51 + 112) = v57;
    v63();
  }

  v59 = *a4;
  v58 = a4[1];
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(&aBlock, *(&v65 + 1));
  sub_1D77BC598(v59, v58);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v60 = &a3[OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier];
  *v60 = 0;
  *(v60 + 1) = 0;
}

uint64_t sub_1D7798780(void *a1, uint64_t a2)
{
  v56 = a1;
  v55 = sub_1D78B5254();
  v4 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v5);
  v54 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D78B52A4();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v8);
  v52 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PurchaseContext(0);
  v51 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v49 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v57 = &v40 - v15;
  sub_1D7770378(a2, &v40 - v15);
  v16 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  result = swift_beginAccess();
  v18 = *(v2 + v16);
  if (v18 >> 62)
  {
LABEL_33:
    result = sub_1D78B6534();
    v19 = result;
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v16;
  if (v19)
  {
    if (v19 < 1)
    {
      __break(1u);
      return result;
    }

    v41 = v2;
    v20 = v18 & 0xC000000000000001;
    v45 = v59;
    v44 = (v4 + 8);
    v43 = (v7 + 8);

    v21 = 0;
    v48 = v18;
    v47 = v19;
    v46 = v18 & 0xC000000000000001;
    v22 = v54;
    do
    {
      if (v20)
      {
        v23 = MEMORY[0x1DA703700](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        v25 = Strong;
        v26 = *(v23 + 24);
        sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
        v27 = sub_1D78B6104();
        v28 = v49;
        sub_1D7770378(v57, v49);
        v29 = (*(v51 + 80) + 40) & ~*(v51 + 80);
        v30 = swift_allocObject();
        v30[2] = v25;
        v30[3] = v26;
        v31 = v56;
        v30[4] = v56;
        sub_1D777044C(v28, v30 + v29);
        v59[2] = sub_1D779C5AC;
        v59[3] = v30;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v59[0] = sub_1D775FB6C;
        v59[1] = &block_descriptor_29_0;
        v32 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v33 = v31;

        v34 = v52;
        sub_1D78B5274();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D775F4A4();
        v35 = v55;
        v19 = v47;
        sub_1D78B6324();
        MEMORY[0x1DA7033B0](0, v34, v22, v32);
        v20 = v46;
        _Block_release(v32);
        swift_unknownObjectRelease();

        (*v44)(v22, v35);
        v36 = v34;
        v18 = v48;
        (*v43)(v36, v53);
      }

      else
      {
      }

      ++v21;
    }

    while (v19 != v21);

    v2 = v41;
    v16 = v42;
  }

  v7 = *(v2 + v16);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v18 = sub_1D78B6534();
  }

  else
  {
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v37 = v2;
    v4 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1DA703700](v4, v7);
        v38 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v39 = aBlock[0];
          v2 = v37;
          v16 = v42;
          goto LABEL_31;
        }
      }

      else
      {
        if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v16 = *(v7 + 8 * v4 + 32);

        v38 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_28;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v2 = aBlock;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v4;
      if (v38 == v18)
      {
        goto LABEL_29;
      }
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_31:

  sub_1D779C45C(v57, type metadata accessor for PurchaseContext);
  *(v2 + v16) = v39;
}

uint64_t sub_1D7798E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  sub_1D78B42C4("AMSPurchaseResult: Entitlement refresh finished", 47, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  v8 = sub_1D7798ED0(a3);
  return a4(v8);
}

uint64_t sub_1D7798ED0(uint64_t a1)
{
  v50 = sub_1D78B5254();
  v3 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v4);
  v49 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D78B52A4();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v7);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PurchaseContext(0);
  v46 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v44 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v51 = &v37 - v14;
  sub_1D7770378(a1, &v37 - v14);
  v15 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  result = swift_beginAccess();
  v17 = *(v1 + v15);
  if (v17 >> 62)
  {
LABEL_33:
    result = sub_1D78B6534();
    v18 = result;
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v15;
  if (v18)
  {
    if (v18 < 1)
    {
      __break(1u);
      return result;
    }

    v37 = v1;
    v19 = v17 & 0xC000000000000001;
    v41 = v54;
    v40 = (v3 + 8);
    v39 = (v6 + 8);

    v20 = 0;
    v43 = v17;
    v42 = v17 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v6 = MEMORY[0x1DA703700](v20, v17);
      }

      else
      {
        v6 = *(v17 + 8 * v20 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
      {
        v22 = Strong;
        v23 = *(v6 + 24);
        sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
        v52 = sub_1D78B6104();
        v24 = v44;
        sub_1D7770378(v51, v44);
        v25 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v26 = swift_allocObject();
        *(v26 + 16) = v22;
        *(v26 + 24) = v23;
        sub_1D777044C(v24, v26 + v25);
        v54[2] = sub_1D779C4BC;
        v54[3] = v26;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v54[0] = sub_1D775FB6C;
        v54[1] = &block_descriptor_23;
        v27 = _Block_copy(aBlock);
        swift_unknownObjectRetain();

        v28 = v47;
        sub_1D78B5274();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D775F4A4();
        v29 = v49;
        v30 = v50;
        sub_1D78B6324();
        v31 = v52;
        MEMORY[0x1DA7033B0](0, v28, v29, v27);
        v19 = v42;
        _Block_release(v27);
        swift_unknownObjectRelease();

        (*v40)(v29, v30);
        v32 = v28;
        v17 = v43;
        (*v39)(v32, v48);
      }

      else
      {
      }

      ++v20;
    }

    while (v18 != v20);

    v1 = v37;
    v15 = v38;
  }

  v17 = *(v1 + v15);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    v33 = sub_1D78B6534();
  }

  else
  {
    v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v33)
  {
    v34 = v1;
    v3 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA703700](v3, v17);
        v35 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v36 = aBlock[0];
          v1 = v34;
          v15 = v38;
          goto LABEL_31;
        }
      }

      else
      {
        if (v3 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v15 = *(v17 + 8 * v3 + 32);

        v35 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_28;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v1 = aBlock;
        sub_1D78B64B4();
        v6 = *(aBlock[0] + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v3;
      if (v35 == v33)
      {
        goto LABEL_29;
      }
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_31:

  sub_1D779C45C(v51, type metadata accessor for PurchaseContext);
  *(v1 + v15) = v36;
}

id sub_1D7799540()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 connectedScenes];

  sub_1D773F004(0, &unk_1EC9C9EC0, 0x1E69DCE70);
  v3 = sub_1D779D4C0();
  v4 = sub_1D78B5F64();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1D78B6364();
    sub_1D78B5F94();
    v4 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  v32 = v5;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D78B63B4() || (swift_dynamicCast(), v3 = v34, v15 = v7, v16 = v8, !v34))
      {
LABEL_25:
        sub_1D779D528(v4);
        return 0;
      }
    }

    else
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= v12)
          {
            goto LABEL_25;
          }

          v14 = *(v5 + 8 * v15);
          ++v13;
          if (v14)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_37:
        result = sub_1D78B6534();
        if (!result)
        {
          goto LABEL_38;
        }

LABEL_31:
        if ((v0 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1DA703700](0, v0);
        }

        else
        {
          if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v29 = *(v0 + 32);
        }

        v30 = v29;
        goto LABEL_39;
      }

LABEL_14:
      v16 = (v14 - 1) & v14;
      v3 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v3)
      {
        goto LABEL_25;
      }
    }

    v17 = *(v33 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier + 8);
    if (!v17)
    {
      goto LABEL_8;
    }

    v18 = v4;
    v19 = *(v33 + OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_activeSceneIdentifier);

    v20 = [v3 _sceneIdentifier];
    v21 = sub_1D78B5C74();
    v23 = v22;

    if (v19 == v21 && v17 == v23)
    {
      break;
    }

    v0 = sub_1D78B6724();

    v4 = v18;
    v5 = v32;
    if (v0)
    {
      goto LABEL_28;
    }

LABEL_8:

    v7 = v15;
    v8 = v16;
  }

  v4 = v18;
LABEL_28:
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
    sub_1D779D528(v4);

    return 0;
  }

  v27 = v26;
  v3 = v3;
  v28 = [v27 windows];
  sub_1D773F004(0, &unk_1EC9C9ED0, 0x1E69DD2E8);
  v0 = sub_1D78B5EB4();

  if (v0 >> 62)
  {
    goto LABEL_37;
  }

  result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_31;
  }

LABEL_38:
  v30 = 0;
LABEL_39:

  v31 = [v30 rootViewController];

  sub_1D779D528(v4);
  return v31;
}

uint64_t sub_1D7799A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D779C73C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

void sub_1D7799B0C(uint64_t a1, void (*a2)(void, void), uint64_t a3, void *a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [a4 account];
    v11 = v9;
    v12 = [a4 options];
    v13 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v10 presentingViewController:v11 options:v12];

    v14 = [v13 performAuthentication];
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v17[4] = sub_1D779D5E8;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1D7780F60;
    v17[3] = &block_descriptor_86;
    v16 = _Block_copy(v17);

    [v14 addFinishBlock_];
    _Block_release(v16);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1D7799CCC(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, id))
{
  if (a2)
  {
    v6 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE09C268;
    v8 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCAB0;
    sub_1D773CA14(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], 1);
    sub_1D78B6504();
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D775ABD4();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1D78B42C4("AMSUIPurchaseDelegate: attempting silent authentication error: %{public}@", 73, 2, &dword_1D7739000, v7, v8, v9);
  }

  else
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE09C268;
    v11 = sub_1D78B60A4();
    sub_1D78B42C4("AMSUIPurchaseDelegate: successfully finished silent authentication.", 67, 2, &dword_1D7739000, v10, v11, MEMORY[0x1E69E7CC0]);
    v12 = [objc_opt_self() sharedAccount];
    [v12 reloadiTunesAccount];
  }

  return a3(a1, a2);
}

void sub_1D7799F10(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [objc_allocWithZone(MEMORY[0x1E698CC50]) initWithRequest:a4 presentingViewController:v9];
    v11 = [v10 present];
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D779D648;
    v13[3] = &block_descriptor_71;
    v12 = _Block_copy(v13);

    [v11 addFinishBlock_];
    _Block_release(v12);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1D779A088(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

void sub_1D779A148(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D7799540();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D78B60B4();
    v10 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a4 bag:objc_msgSend(objc_opt_self() presentingViewController:{sel_bag), v9}];
    swift_unknownObjectRelease();
    v11 = [v10 presentEngagement];
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v14[4] = sub_1D779D53C;
    v14[5] = v12;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1D779D648;
    v14[3] = &block_descriptor_59_0;
    v13 = _Block_copy(v14);

    [v11 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_1D779A31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D78B31B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1D779A420(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v48 = a3;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v40 - v12;
  v50 = v5;
  v51 = a2;
  if (sub_1D779AA10(a1, a2))
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 24))(a4, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  v17 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v18 = v50;
  swift_beginAccess();
  v41 = v17;
  v19 = *(v18 + v17);
  if (v19 >> 62)
  {
LABEL_43:
    v20 = sub_1D78B6534();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = a1;
  v49 = a4;
  if (v20)
  {
    if (v20 < 1)
    {
      __break(1u);
      return;
    }

    v45 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
    v21 = v19 & 0xC000000000000001;

    v22 = 0;
    v42 = a5;
    v46 = v20;
    v47 = v19;
    v44 = v19 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v23 = MEMORY[0x1DA703700](v22, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
      {
        v24 = *(v23 + 24);
        sub_1D78B3F24();
        v25 = *__swift_project_boxed_opaque_existential_1(v53, v54);

        sub_1D78B3854();

        swift_beginAccess();
        v26 = *(v25 + 24);
        if (*(v26 + 16) && (v27 = sub_1D777BBB4(a1, v51), (v28 & 1) != 0))
        {
          a4 = v27;
          v29 = *(v26 + 56);
          v30 = type metadata accessor for PurchaseContext(0);
          v31 = *(v30 - 8);
          v32 = v29 + *(v31 + 72) * a4;
          a5 = v42;
          sub_1D7770378(v32, v13);
          (*(v31 + 56))(v13, 0, 1, v30);
          a1 = v43;
        }

        else
        {
          v33 = type metadata accessor for PurchaseContext(0);
          (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
        }

        swift_endAccess();

        sub_1D78B3864();

        __swift_destroy_boxed_opaque_existential_1(v53);
        v34 = swift_getObjectType();
        (*(v24 + 32))(a1, v51, v48, v49, v13, a5, v34, v24);

        swift_unknownObjectRelease();
        sub_1D779C78C(v13, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
        v20 = v46;
        v19 = v47;
        v21 = v44;
      }

      else
      {
      }

      ++v22;
    }

    while (v20 != v22);
  }

  v19 = *(v50 + v41);
  v53[0] = MEMORY[0x1E69E7CC0];
  if (v19 >> 62)
  {
    v35 = sub_1D78B6534();
  }

  else
  {
    v35 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35)
  {
    v36 = 0;
    a1 = v19 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v36, v19);
        a5 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v37 = v53[0];
          a1 = v43;
          goto LABEL_37;
        }
      }

      else
      {
        if (v36 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_43;
        }

        a5 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        a4 = *(v53[0] + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v36;
      if (a5 == v35)
      {
        goto LABEL_35;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v50 + v41) = v37;

  v53[0] = v49;
  v38 = v49;
  sub_1D773CA14(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], 1);
  type metadata accessor for SKError(0);
  if (swift_dynamicCast())
  {
    v39 = v52;
    if (sub_1D779AE40(v48, v52))
    {
      sub_1D78B3F24();
      __swift_project_boxed_opaque_existential_1(v53, v54);
      sub_1D77BC598(a1, v51);

      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    else
    {
    }
  }
}

uint64_t sub_1D779AA10(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for PurchaseContext(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_1D77BB9E4(a1, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D779C78C(v9, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
    __swift_destroy_boxed_opaque_existential_1(v32);
    if (qword_1EE08FB98 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  sub_1D777044C(v9, v14);
  __swift_destroy_boxed_opaque_existential_1(v32);
  v18 = sub_1D779BD88(v2, v14, a1, a2);
  v20 = v19;
  v21 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v31 = MEMORY[0x1E69E7CC0];
  if (v22 >> 62)
  {
    v23 = sub_1D78B6534();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_20:

    sub_1D779C45C(v14, type metadata accessor for PurchaseContext);
    *(v3 + v21) = v26;
    goto LABEL_21;
  }

  v28[0] = v21;
  v28[1] = v20;
  v29 = v18;
  v30 = v14;
  v24 = 0;
  a1 = v22 & 0xC000000000000001;
  a2 = v22 & 0xFFFFFFFFFFFFFF8;
  while (a1)
  {
    MEMORY[0x1DA703700](v24, v22);
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      v14 = v30;
      v26 = v31;
      v18 = v29;
      v21 = v28[0];
      goto LABEL_20;
    }

LABEL_13:
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1D78B64B4();
      sub_1D78B64E4();
      sub_1D78B64F4();
      sub_1D78B64C4();
    }

    else
    {
    }

    ++v24;
    if (v25 == v23)
    {
      goto LABEL_18;
    }
  }

  if (v24 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_3:
  v15 = qword_1EE09C268;
  v16 = sub_1D78B6094();
  sub_1D774FE1C(0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D78BCAB0;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D775ABD4();
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  sub_1D78B42C4("PurchaseContextEntry not found in entries manager for productID=%{public}@", 74, 2, &dword_1D7739000, v15, v16, v17);
  v18 = 0;
LABEL_21:

  return v18;
}

BOOL sub_1D779AE40(uint64_t a1, uint64_t a2)
{
  if (a1 == 4)
  {
    return 0;
  }

  type metadata accessor for SKError(0);
  sub_1D7746524(&qword_1EC9C91E0, type metadata accessor for SKError, &unk_1D78BC7D4);
  sub_1D78B3184();
  result = 1;
  if (v3)
  {
    sub_1D78B3184();
    if (v3 != 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D779AFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v53 - v9;
  v62 = v3;
  v11 = sub_1D779AA10(a1, a2);
  v57 = v10;
  if (v11)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    sub_1D775F3AC(&v63);
    sub_1D7781E98();
    v15 = swift_allocError();
    v16 = v65;
    v17 = v64;
    *v18 = v63;
    *(v18 + 16) = v17;
    *(v18 + 32) = v16;
    v19 = v69;
    v21 = v66;
    v20 = v67;
    *(v18 + 80) = v68;
    *(v18 + 96) = v19;
    *(v18 + 48) = v21;
    *(v18 + 64) = v20;
    v23 = v71;
    v22 = v72;
    v24 = v70;
    *(v18 + 160) = v73;
    *(v18 + 128) = v23;
    *(v18 + 144) = v22;
    *(v18 + 112) = v24;
    v25 = ObjectType;
    v10 = v57;
    (*(v13 + 24))(v15, v25, v13);

    swift_unknownObjectRelease();
  }

  v26 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v27 = v62;
  result = swift_beginAccess();
  v54 = v26;
  v29 = *(v27 + v26);
  if (v29 >> 62)
  {
LABEL_39:
    result = sub_1D78B6534();
    v30 = result;
    if (!result)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      goto LABEL_21;
    }
  }

  if (v30 < 1)
  {
    __break(1u);
    return result;
  }

  v59 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
  v31 = v29 & 0xC000000000000001;

  v32 = 0;
  v56 = a1;
  v55 = a3;
  v61 = v29;
  v60 = v30;
  v58 = v29 & 0xC000000000000001;
  do
  {
    if (v31)
    {
      v33 = MEMORY[0x1DA703700](v32, v29);
    }

    else
    {
      v33 = *(v29 + 8 * v32 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v34 = *(v33 + 24);
      sub_1D78B3F24();
      v35 = *__swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));

      sub_1D78B3854();

      swift_beginAccess();
      v36 = *(v35 + 24);
      if (*(v36 + 16))
      {
        v37 = sub_1D777BBB4(a1, a2);
        if (v38)
        {
          v39 = v37;
          v40 = a2;
          v41 = *(v36 + 56);
          v42 = type metadata accessor for PurchaseContext(0);
          v43 = *(v42 - 8);
          v44 = v41 + *(v43 + 72) * v39;
          a2 = v40;
          a3 = v55;
          v10 = v57;
          sub_1D7770378(v44, v57);
          (*(v43 + 56))(v10, 0, 1, v42);
          a1 = v56;
        }

        else
        {
          v46 = type metadata accessor for PurchaseContext(0);
          v10 = v57;
          (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
        }
      }

      else
      {
        v45 = type metadata accessor for PurchaseContext(0);
        (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
      }

      swift_endAccess();

      sub_1D78B3864();

      __swift_destroy_boxed_opaque_existential_1(&v63);
      v47 = swift_getObjectType();
      (*(v34 + 40))(a1, a2, v10, a3, v47, v34);

      swift_unknownObjectRelease();
      sub_1D779C78C(v10, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
      v29 = v61;
      v30 = v60;
      v31 = v58;
    }

    else
    {
    }

    ++v32;
  }

  while (v30 != v32);

LABEL_21:
  v29 = *(v62 + v54);
  *&v63 = MEMORY[0x1E69E7CC0];
  v53 = a2;
  v48 = a1;
  if (v29 >> 62)
  {
    v49 = sub_1D78B6534();
  }

  else
  {
    v49 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v49)
  {
    v50 = 0;
    a2 = v29 & 0xC000000000000001;
    a1 = v29 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        a3 = MEMORY[0x1DA703700](v50, v29);
        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v52 = v63;
          goto LABEL_37;
        }
      }

      else
      {
        if (v50 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        a3 = *(v29 + 8 * v50 + 32);

        v51 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D78B64B4();
        v10 = *(v63 + 16);
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v50;
      if (v51 == v49)
      {
        goto LABEL_35;
      }
    }
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_37:

  *(v62 + v54) = v52;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
  sub_1D77BC598(v48, v53);
  return __swift_destroy_boxed_opaque_existential_1(&v63);
}

uint64_t sub_1D779B6E0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v54 = a4;
  sub_1D779C548(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v46 - v14;
  v56 = a1;
  v57 = a2;
  v55 = v6;
  if (sub_1D779AA10(a1, a2))
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(a3, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  v48 = a3;
  v19 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseObservers;
  v20 = v55;
  result = swift_beginAccess();
  v46 = v19;
  v22 = *(v20 + v19);
  if (v22 >> 62)
  {
LABEL_40:
    result = sub_1D78B6534();
    v23 = result;
    v24 = v48;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v48;
    if (!v23)
    {
      goto LABEL_22;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
    return result;
  }

  v53 = v15;
  v50 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_purchaseContextEntriesManager;
  v25 = v22 & 0xC000000000000001;

  v26 = 0;
  v51 = v23;
  v52 = v22;
  v49 = v22 & 0xC000000000000001;
  v47 = a5;
  do
  {
    if (v25)
    {
      v27 = MEMORY[0x1DA703700](v26, v22);
    }

    else
    {
      v27 = *(v22 + 8 * v26 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v28 = *(v27 + 24);
      sub_1D78B3F24();
      v29 = *__swift_project_boxed_opaque_existential_1(v58, v59);

      sub_1D78B3854();

      swift_beginAccess();
      v30 = *(v29 + 24);
      if (*(v30 + 16))
      {
        v31 = sub_1D777BBB4(v56, v57);
        if (v32)
        {
          v33 = v31;
          v34 = *(v30 + 56);
          v35 = type metadata accessor for PurchaseContext(0);
          v36 = a6;
          v37 = *(v35 - 8);
          v38 = v34 + *(v37 + 72) * v33;
          v39 = v53;
          sub_1D7770378(v38, v53);
          (*(v37 + 56))(v39, 0, 1, v35);
          a6 = v36;
          a5 = v47;
        }

        else
        {
          v41 = type metadata accessor for PurchaseContext(0);
          v39 = v53;
          (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
        }

        v24 = v48;
      }

      else
      {
        v40 = type metadata accessor for PurchaseContext(0);
        v39 = v53;
        (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
      }

      swift_endAccess();

      sub_1D78B3864();

      __swift_destroy_boxed_opaque_existential_1(v58);
      v42 = swift_getObjectType();
      (*(v28 + 16))(v56, v57, v24, v54, a5, v39, a6, v42, v28);

      swift_unknownObjectRelease();
      sub_1D779C78C(v39, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D779C548);
      v23 = v51;
      v22 = v52;
      v25 = v49;
    }

    else
    {
    }

    ++v26;
  }

  while (v23 != v26);

LABEL_22:
  a5 = v46;
  v43 = *(v55 + v46);
  v58[0] = MEMORY[0x1E69E7CC0];
  if (v43 >> 62)
  {
    v15 = sub_1D78B6534();
  }

  else
  {
    v15 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v44 = 0;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA703700](v44, v43);
        a6 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          v45 = v58[0];
          goto LABEL_38;
        }
      }

      else
      {
        if (v44 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_40;
        }

        a6 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          goto LABEL_35;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v22 = v58;
        sub_1D78B64B4();
        sub_1D78B64E4();
        sub_1D78B64F4();
        sub_1D78B64C4();
      }

      else
      {
      }

      ++v44;
      if (a6 == v15)
      {
        goto LABEL_36;
      }
    }
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_38:

  *(v55 + a5) = v45;

  sub_1D78B3F24();
  __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_1D77BC598(v56, v57);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1D779BD88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC16NewsSubscription15PurchaseManager_transactionObservers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
LABEL_38:
    v10 = sub_1D78B6534();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    v31 = qword_1EE09C268;
    v32 = sub_1D78B6094();
    sub_1D774FE1C(0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D78BCAB0;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1D775ABD4();
    *(v33 + 32) = a3;
    *(v33 + 40) = a4;

    sub_1D78B42C4("Purchase originator not found for productID=%{public}@", 54, 2, &dword_1D7739000, v31, v32, v33);

    return 0;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_3:
  v44 = a3;
  v45 = a4;
  v11 = v9 & 0xC000000000000001;
  v46 = v9 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  v47 = v9 & 0xC000000000000001;
  v48 = v9;
  while (1)
  {
    if (v11)
    {
      a4 = MEMORY[0x1DA703700](v12, v9);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (v12 >= *(v46 + 16))
      {
        goto LABEL_37;
      }

      a4 = *(v9 + 8 * v12 + 32);

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v14 = a2[5];
      v15 = a2[6];
      if (swift_unknownObjectWeakLoadStrong())
      {
        break;
      }
    }

LABEL_5:
    ++v12;
    if (v13 == v10)
    {

      a3 = v44;
      a4 = v45;
      goto LABEL_29;
    }
  }

  v16 = v10;
  v17 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  a3 = (*(*(v17 + 8) + 8))(ObjectType);
  v20 = v19;
  swift_unknownObjectRelease();
  if (v14 == a3 && v15 == v20)
  {
  }

  else
  {
    v22 = sub_1D78B6724();

    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v23 = a2[3];
  v24 = a2[4];
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_27:

    v10 = v16;
    v11 = v47;
    v9 = v48;
    goto LABEL_5;
  }

  v25 = *(a4 + 24);
  v26 = swift_getObjectType();
  v27 = (*(*(v25 + 8) + 16))(v26);
  a3 = v28;
  swift_unknownObjectRelease();
  if (v23 != v27 || v24 != a3)
  {
    v30 = sub_1D78B6724();

    if (v30)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_33:

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v35 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D78BCB50;
  swift_unknownObjectWeakLoadStrong();
  sub_1D779C7EC(0);
  v37 = sub_1D78B5CC4();
  v39 = v38;
  v40 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  v41 = sub_1D775ABD4();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  *(v36 + 96) = v40;
  *(v36 + 104) = v41;
  *(v36 + 64) = v41;
  *(v36 + 72) = v44;
  *(v36 + 80) = v45;

  v42 = sub_1D78B60A4();
  sub_1D78B42C4("Purchase originator=%{public}@ identified for productID=%{public}@", 66, 2, &dword_1D7739000, v35, v42, v36);

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D779C1E0(void (*a1)(uint64_t))
{
  a1(v1 + 16);
  sub_1D776ABA8(v1 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D779C258(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PurchaseContext(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7798274(a1, a2, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1D779C328()
{
  if (!qword_1EC9C9E88)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9C9E88);
    }
  }
}

double sub_1D779C384(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 9;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t sub_1D779C3B8(uint64_t a1)
{
  v3 = *(type metadata accessor for PurchaseContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7798E18(a1, v5, v1 + v4, v6);
}

uint64_t sub_1D779C45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D779C4BC()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v0 + v2, ObjectType, v3);
}

void sub_1D779C548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D779C5AC()
{
  v1 = *(type metadata accessor for PurchaseContext(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(v4, v0 + v2, ObjectType, v3);
}

unint64_t sub_1D779C65C()
{
  result = qword_1EC9C9EA0;
  if (!qword_1EC9C9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9EA0);
  }

  return result;
}

uint64_t sub_1D779C6B0(uint64_t a1, uint64_t a2)
{
  sub_1D779C73C(0, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D779C73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D779C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D779C7EC(uint64_t a1)
{
  if (!qword_1EC9C9EA8)
  {
    sub_1D773CA14(255, &unk_1EC9C9EB0, &protocol descriptor for PurchaseTransactionObserver, 0);
    v1 = sub_1D78B62A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC9C9EA8);
    }
  }
}

uint64_t sub_1D779C858(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D78B5254();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D78B52A4();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("AMSUIPurchaseDelegate: We were asked to authenticate. Attempting silent authentication.", 87, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v18 = sub_1D78B6104();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a1;
  aBlock[4] = sub_1D779D5DC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_80_0;
  v20 = _Block_copy(aBlock);
  v21 = v4;

  v22 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v15, v11, v20);
  _Block_release(v20);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

uint64_t sub_1D779CBC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D78B5254();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D78B52A4();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("AMSUIPurchaseDelegate: We were asked to handle a dialog request", 63, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v18 = sub_1D78B6104();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a1;
  aBlock[4] = sub_1D779D580;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_68_0;
  v20 = _Block_copy(aBlock);
  v21 = v4;

  v22 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v15, v11, v20);
  _Block_release(v20);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

uint64_t sub_1D779CF38(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D78B5254();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D78B52A4();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE09C268;
  v17 = sub_1D78B60A4();
  sub_1D78B42C4("AMSUIPurchaseDelegate: We were asked to handle a engagement request", 67, 2, &dword_1D7739000, v16, v17, MEMORY[0x1E69E7CC0]);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v18 = sub_1D78B6104();
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a1;
  aBlock[4] = sub_1D779D530;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_53_0;
  v20 = _Block_copy(aBlock);
  v21 = v4;

  v22 = a1;

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7746524(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D779C548(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v15, v11, v20);
  _Block_release(v20);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

void sub_1D779D2A8(uint64_t a1, void (**a2)(void, void, void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  v4 = sub_1D78B60A4();
  sub_1D78B42C4("AMSUIPurchaseDelegate: We were asked to handle a window request", 63, 2, &dword_1D7739000, v3, v4, MEMORY[0x1E69E7CC0]);
  v5 = sub_1D7799540();
  if (v5)
  {
    v6 = v5;
    sub_1D773F004(0, &qword_1EE08FB80, 0x1E69E9BF8);
    v7 = sub_1D78B6284();
    v8 = sub_1D78B60A4();
    sub_1D78B42C4("AMSUIPurchaseDelegate: returning the active window", 50, 2, &dword_1D7739000, v7, v8, MEMORY[0x1E69E7CC0]);

    v9 = sub_1D78B60B4();
    v10 = [v9 view];

    if (!v10)
    {
      _Block_release(a2);
      __break(1u);
      return;
    }

    v13 = [v10 window];

    (a2)[2](a2, v13, 0);
  }

  else
  {
    v11 = sub_1D78B5C44();
    v12 = sub_1D78B5C44();
    v6 = AMSError();

    v13 = sub_1D78B31B4();
    (a2)[2](a2, 0, v13);
  }
}

unint64_t sub_1D779D4C0()
{
  result = qword_1EC9C9F80;
  if (!qword_1EC9C9F80)
  {
    sub_1D773F004(255, &unk_1EC9C9EC0, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F80);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t HideMyEmailSignupDataModel.Selection.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

uint64_t _s16NewsSubscription21HideMyEmailProxyModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v13 = a2[6];
  v14 = a1[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1D78B6724()) && (v2 == v7 && v4 == v8 || (sub_1D78B6724()) && (v3 == v9 && v5 == v10 || (sub_1D78B6724()))
  {
    if (v6)
    {
      if (v11 && (v14 == v13 && v6 == v11 || (sub_1D78B6724() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D779D810()
{
  result = qword_1EC9C9F40;
  if (!qword_1EC9C9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9C9F40);
  }

  return result;
}

uint64_t type metadata accessor for HideMyEmailSignupDataModel(uint64_t a1)
{
  result = qword_1EE08EBE0;
  if (!qword_1EE08EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D779D8D8(uint64_t a1)
{
  sub_1D779DA04(319, &qword_1EE08EBF0, &type metadata for HideMyEmailSignupDataModel.Selection, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D779DA04(319, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D779DA54();
      if (v3 <= 0x3F)
      {
        type metadata accessor for PurchaseContext(319);
        if (v4 <= 0x3F)
        {
          sub_1D779DAB8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D779DA04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D779DA54()
{
  result = qword_1EE08E590;
  if (!qword_1EE08E590)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE08E590);
  }

  return result;
}

unint64_t sub_1D779DAB8()
{
  result = qword_1EE08E568;
  if (!qword_1EE08E568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08E568);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D779DB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1D779DB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D779DBD0(uint64_t a1)
{
  v2 = sub_1D78B6334();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1D77A2BCC(v2, *(a1 + 36), 0, a1);
  return swift_unknownObjectRetain();
}

id sub_1D779DC38()
{
  v1 = v0[26];
  if (v1)
  {
    v2 = v0[26];
  }

  else
  {
    v3 = v0[24];
    v4 = v0[25];
    __swift_project_boxed_opaque_existential_1(v0 + 21, v3);
    v10 = 1;
    v5 = v0;
    v6 = (*(v4 + 8))(&v10, v3, v4);
    v7 = v0[26];
    v5[26] = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

void sub_1D779DCD8(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in showAlacarteExpiredAlerts method", 61, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  if (*(v1 + 240) == 1)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = sub_1D78B5C74();
      v8 = v7;

      if (v6 == 0xD000000000000010 && 0x80000001D78CF0A0 == v8)
      {
LABEL_21:

        return;
      }

      v10 = sub_1D78B6724();

      if (v10)
      {
        return;
      }
    }

    v11 = *(v1 + 16);
    v12 = [v11 subscriptionNotSupportedChannelIDs];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D78B5EB4();
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v15 = [v11 expiredPurchaseChannelIDs];
    v16 = v1;
    if (v15)
    {
      v17 = v15;
      v18 = sub_1D78B5EB4();
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v24[0] = v14;

    sub_1D78A603C(v18);
    if (*(v14 + 16))
    {
      v19 = *(v16 + 32);
      sub_1D77C38CC(v24[0]);

      v20 = sub_1D78B5E94();

      sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
      v21 = sub_1D78B6104();
      v22 = swift_allocObject();
      *(v22 + 16) = v16;
      *(v22 + 24) = v14;
      v24[4] = sub_1D77A2848;
      v24[5] = v22;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_1D779E658;
      v24[3] = &block_descriptor_3;
      v23 = _Block_copy(v24);

      [v19 fetchTagsForTagIDs:v20 qualityOfService:9 callbackQueue:v21 completionHandler:v23];
      _Block_release(v23);

      return;
    }

    goto LABEL_21;
  }
}

void sub_1D779E034(uint64_t a1, id a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v4 = sub_1D78B6094();
    if (qword_1EE08FB98 != -1)
    {
LABEL_21:
      swift_once();
    }

    v8 = qword_1EE09C268;
    sub_1D774FE1C(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCAB0;
    aBlock = 0;
    v36 = 0xE000000000000000;
    v41[0] = v6;
    sub_1D773C9B8(0, &qword_1EE08F9F0, MEMORY[0x1E69E7280]);
    sub_1D78B6504();
    v10 = aBlock;
    v11 = v36;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D775ABD4();
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_1D78B42D4(v4, &dword_1D7739000, v8, "Error in obtaining tags for subscription not supported tagIDs: %@", 65, 2, v9);

    sub_1D779E438(v12);
  }

  else if (a1)
  {
    v33 = a4;
    v13 = a1 + 64;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v17 = (v14 + 63) >> 6;

    v20 = 0;
    v6 = 0;
    v34 = a3;
    v32 = v18;
    while (v16)
    {
LABEL_15:
      v23 = __clz(__rbit64(v16)) | (v20 << 6);
      v24 = (*(v18 + 48) + 16 * v23);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(*(v18 + 56) + 8 * v23);
      aBlock = *v24;
      v36 = v25;
      MEMORY[0x1EEE9AC00](v18, v19);
      v31[2] = &aBlock;

      swift_unknownObjectRetain();
      if (sub_1D781DA18(sub_1D7782F40, v31, v33))
      {
        a3 = v34;
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = a3[27];
        a3[27] = 0x8000000000000000;
        v4 = v41;
        sub_1D782E63C(v27, v26, v25, isUniquelyReferenced_nonNull_native);

        a3[27] = v41[0];
      }

      else
      {
        a3 = v34;
        swift_beginAccess();
        swift_unknownObjectRetain();
        v21 = swift_isUniquelyReferenced_nonNull_native();
        v41[0] = a3[28];
        a3[28] = 0x8000000000000000;
        v4 = v41;
        sub_1D782E63C(v27, v26, v25, v21);

        a3[28] = v41[0];
      }

      swift_endAccess();
      v16 &= v16 - 1;
      swift_unknownObjectRelease();
      v18 = v32;
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v22 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v22);
      ++v20;
      if (v16)
      {
        v20 = v22;
        goto LABEL_15;
      }
    }

    a1 = swift_beginAccess();
    if (!*(a3[27] + 16))
    {
      goto LABEL_19;
    }

    v29 = a3[29];
    v39 = sub_1D77A2A68;
    v40 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D779ECCC;
    v38 = &block_descriptor_7;
    v30 = _Block_copy(&aBlock);

    [v29 enqueueBlock_];
    _Block_release(v30);
  }

  else
  {
LABEL_19:
    sub_1D779E438(a1);
  }
}

void sub_1D779E438(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE09C268;
  v3 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in showAllAlacarteExpiredAlerts method", 64, 2, &dword_1D7739000, v2, v3, MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  if (!*(*(v1 + 224) + 16))
  {
    v9 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showAllAlacarteExpiredAlerts not showing because subscriptionsExpiredTagsByID is empty", 115, 2, &dword_1D7739000, v2, v9, MEMORY[0x1E69E7CC0]);
    return;
  }

  v5 = sub_1D779DBD0(v4);

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *(v1 + 16);
  v7 = [v5 identifier];
  if (!v7)
  {
    sub_1D78B5C74();
    v7 = sub_1D78B5C44();
  }

  v8 = [v6 purchaseLookUpEntryForTagID_];

  if (!v8)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v10 = sub_1D78B60A4();
    sub_1D78B42C4("SubscriptionExpiryManager in showAllAlacarteExpiredAlerts not showing because no first tag ID lookup entry", 106, 2, &dword_1D7739000, v2, v10, MEMORY[0x1E69E7CC0]);
    return;
  }

  if ([v8 purchaseType] == 1)
  {
    sub_1D779ED6C(v5);
  }

  else if ([v8 purchaseType] == 2)
  {
    sub_1D779EF38(v5);
  }

  else
  {
    v11 = sub_1D78B6094();
    sub_1D78B42C4("Expiration alert cannot be shown due to the unknown purchase type set for purchase lookup entry.", 96, 2, &dword_1D7739000, v2, v11, MEMORY[0x1E69E7CC0]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1D779E658(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1D779DA54();
    v4 = sub_1D78B5BC4();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1D779E6FC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = swift_beginAccess();
  if (!*(a1[27] + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_1D779DBD0(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1[2];
  v10 = [v8 identifier];
  if (!v10)
  {
    sub_1D78B5C74();
    v10 = sub_1D78B5C44();
  }

  v11 = [v9 purchaseLookUpEntryForTagID_];

  if (!v11)
  {
    v6 = swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if ([v11 hasShownRenewalNotice])
  {
    swift_unknownObjectRelease();

LABEL_9:
    sub_1D779E438(v6);
    a2();
    return;
  }

  v29 = v9;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v12 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D78BCAB0;
  v14 = [v8 identifier];
  v15 = sub_1D78B5C74();
  v17 = v16;

  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D775ABD4();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v18 = sub_1D78B60A4();
  sub_1D78B42C4("Showing SubscriptionNotSupported alert for tagID: %{public}@", 60, 2, &dword_1D7739000, v12, v18, v13);

  sub_1D77A2B1C();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v19 = sub_1D78B5004();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v8;
  v20[4] = a2;
  v20[5] = a3;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v21 = a1[9];
  v22 = a1[10];
  __swift_project_boxed_opaque_existential_1(a1 + 6, v21);
  (*(v22 + 88))(v19, v21, v22);
  sub_1D77A2B7C();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D78BCAB0;
  v24 = [v8 identifier];
  v25 = sub_1D78B5C74();
  v27 = v26;

  *(v23 + 32) = v25;
  *(v23 + 40) = v27;
  v28 = sub_1D78B5E94();

  [v29 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
  swift_unknownObjectRelease();
}

uint64_t sub_1D779EA78(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE09C268;
  v7 = sub_1D78B60A4();
  sub_1D78B42C4("Selected okay in SubscriptionNotSupported alert", 49, 2, &dword_1D7739000, v6, v7, MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 16);
  sub_1D77A2B7C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D78BCAB0;
  v10 = [a2 identifier];
  v11 = sub_1D78B5C74();
  v13 = v12;

  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v14 = sub_1D78B5E94();

  [v8 updatePurchaseEntryToExpiredForTagIDs_];

  v15 = [a2 identifier];
  v16 = sub_1D78B5C74();
  v18 = v17;

  swift_beginAccess();
  sub_1D782B134(v16, v18);
  swift_endAccess();

  swift_unknownObjectRelease();
  v19 = *(a1 + 232);
  v22[4] = sub_1D77A3180;
  v22[5] = a1;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D779ECCC;
  v22[3] = &block_descriptor_23_0;
  v20 = _Block_copy(v22);

  [v19 enqueueBlock_];
  _Block_release(v20);
  return a3();
}

uint64_t sub_1D779ECCC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D77A2AA8, v4);
}

void sub_1D779ED6C(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [a1 identifier];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in checking for alacarte appStore subscription expiry for tag: %{public}@", 99, 2, &dword_1D7739000, v3, v9, v4);

  v10 = *(v1 + 232);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v13[4] = sub_1D77A2C1C;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D779ECCC;
  v13[3] = &block_descriptor_29_1;
  v12 = _Block_copy(v13);

  swift_unknownObjectRetain();

  [v10 enqueueBlock_];
  _Block_release(v12);
}

void sub_1D779EF38(void *a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [a1 identifier];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B60A4();
  sub_1D78B42C4("SubscriptionExpiryManager in showWebSubscriptionExpiredAlert for tag: %{public}@", 80, 2, &dword_1D7739000, v3, v9, v4);

  v10 = *(v1 + 232);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  v13[4] = sub_1D77A2CE8;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D779ECCC;
  v13[3] = &block_descriptor_59_1;
  v12 = _Block_copy(v13);

  swift_unknownObjectRetain();

  [v10 enqueueBlock_];
  _Block_release(v12);
}

uint64_t sub_1D779F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v9 = sub_1D78B5254();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D78B52A4();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v17 = sub_1D78B6104();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = v21;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77A2AC4(0);
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v16, v12, v19);
  _Block_release(v19);

  (*(v24 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v23);
}

void sub_1D779F424(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(a1 + 24);
  v34 = [v6 bundleSubscriptionLookupEntry];
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE09C268;
  sub_1D774FE1C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D78BCAB0;
  v9 = [v34 description];
  v10 = sub_1D78B5C74();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1D775ABD4();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_1D78B60A4();
  sub_1D78B42C4("In showBundleSubscriptionExpiredAlert bundleSubscriptionEntry: %{public}@", 73, 2, &dword_1D7739000, v7, v13, v8);

  if ([v34 purchaseValidationState] == 1 && (objc_msgSend(v34, sel_hasShownRenewalNotice) & 1) == 0)
  {
    v15 = [*(a1 + 40) configuration];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    if ([v15 respondsToSelector_])
    {
      v17 = [v16 paidBundleConfig];
      swift_unknownObjectRelease();
      v18 = [v17 expirationAlertDescription];

      if (v18)
      {
        v33 = sub_1D78B5C74();
        v20 = v19;

LABEL_12:
        sub_1D77A301C();
        v35 = swift_allocObject();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v22 = [objc_opt_self() bundleForClass_];
        v23 = sub_1D78B3134();
        v25 = v24;

        v35[4] = v23;
        v35[5] = v25;
        v35[2] = v33;
        v35[3] = v20;
        sub_1D78B5054();
        swift_allocObject();
        v26 = sub_1D78B5004();
        v27 = swift_allocObject();
        v27[2] = a1;
        v27[3] = a2;
        v27[4] = a3;

        sub_1D78B5034();

        v28 = swift_allocObject();
        v28[2] = a1;
        v28[3] = a2;
        v28[4] = a3;

        sub_1D78B5044();

        v29 = sub_1D78B60A4();
        sub_1D78B42C4("Showing BundleSubscriptionExpiredAlert", 38, 2, &dword_1D7739000, v7, v29, MEMORY[0x1E69E7CC0], 0x80000001D78D1760);
        v30 = *(a1 + 72);
        v31 = *(a1 + 80);
        __swift_project_boxed_opaque_existential_1((a1 + 48), v30);
        (*(v31 + 88))(v26, v30, v31);
        v32 = [v34 purchaseID];
        if (!v32)
        {
          sub_1D78B5C74();
          v32 = sub_1D78B5C44();
        }

        [v6 renewalNoticeShownWithPurchaseID_];

        v14 = v32;
        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v33 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  a2();
  v14 = v34;
LABEL_15:
}

uint64_t sub_1D779F8CC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D78B52A4();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE09C268;
  v14 = sub_1D78B60A4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D78B42C4("Selected renew in BundleSubscriptionExpiredAlert", 50, 2, &dword_1D7739000, v13, v14, MEMORY[0x1E69E7CC0]);
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v16 = sub_1D78B6104();
  aBlock[4] = sub_1D77A30C8;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_138;
  v17 = _Block_copy(aBlock);

  sub_1D78B5274();
  aBlock[0] = v15;
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77A2AC4(0);
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v12, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  v18 = (*(v9 + 8))(v12, v21);
  return v23(v18);
}

id sub_1D779FC14(uint64_t a1)
{
  result = [*(a1 + 40) configuration];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      v4 = [v3 paidBundleConfig];
      swift_unknownObjectRelease();
      v5 = [v4 renewalLandingPageArticleID];

      v6 = sub_1D78B5C74();
      v8 = v7;

      v9 = *(a1 + 72);
      v10 = *(a1 + 80);
      __swift_project_boxed_opaque_existential_1((a1 + 48), v9);
      (*(v10 + 8))(v6, v8, 0, 0, 0, 0, v9, v10);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D779FD58(void *a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE09C268;
  v5 = sub_1D78B60A4();
  sub_1D78B42C4("Selected no thanks in BundleSubscriptionExpiredAlert", 54, 2, &dword_1D7739000, v4, v5, MEMORY[0x1E69E7CC0]);
  v6 = swift_beginAccess();
  if (!*(a1[28] + 16))
  {
    v7 = sub_1D78B60A4();
    sub_1D78B42C4("Refresh entitlements ignoring cache from BundleSubscriptionExpired alert", 72, 2, &dword_1D7739000, v4, v7, MEMORY[0x1E69E7CC0]);
    v8 = *__swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
    v9 = [objc_opt_self() sharedAccount];
    v10 = [v9 isUserSignedIntoiTunes];

    if (v10)
    {
      v11 = *(v8 + 24);
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = 1;
      aBlock[4] = sub_1D77A3184;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7781488;
      aBlock[3] = &block_descriptor_135;
      v13 = _Block_copy(aBlock);

      [v11 refreshBundleSubscriptionWithCachePolicy:3 hideBundleDetectionUI:0 completion:v13];
      _Block_release(v13);
    }
  }

  return a2(v6);
}

void sub_1D779FF64(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D77A2C68();
  sub_1D78B5054();
  swift_allocObject();
  swift_unknownObjectRetain();
  v8 = sub_1D78B5004();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5034();

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = a3;
  v10[5] = a4;
  swift_unknownObjectRetain();

  sub_1D78B5044();

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE09C268;
  v12 = sub_1D78B60A4();
  sub_1D78B42C4("Showing AlacarteAppStoreSubscriptionExpiredAlert", 48, 2, &dword_1D7739000, v11, v12, MEMORY[0x1E69E7CC0]);
  v13 = a2[9];
  v14 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 6, v13);
  (*(v14 + 88))(v8, v13, v14);
  v15 = a2[2];
  sub_1D77A2B7C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D78BCAB0;
  v17 = [a1 identifier];
  v18 = sub_1D78B5C74();
  v20 = v19;

  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v21 = sub_1D78B5E94();

  [v15 renewalNoticeShownForPurchasedChannelsListWithTagIDs_];
}

uint64_t sub_1D77A01F8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = sub_1D78B5254();
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B52A4();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE09C268;
  v15 = sub_1D78B60A4();
  v16 = [a2 identifier];
  v17 = sub_1D78B5C74();
  v19 = v18;

  swift_beginAccess();
  sub_1D782B134(v17, v19);
  swift_endAccess();

  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08FE10, 0x1E69E9610);
  v20 = sub_1D78B6104();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  aBlock[4] = sub_1D77A2CE0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_53_1;
  v22 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1D78B5274();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D774656C(&qword_1EE090300, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D77A2AC4(0);
  sub_1D774656C(&qword_1EE090030, sub_1D77A2AC4, MEMORY[0x1E69E6328]);
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v13, v9, v22);
  _Block_release(v22);

  (*(v28 + 8))(v9, v6);
  v23 = (*(v26 + 8))(v13, v27);
  return v30(v23);
}