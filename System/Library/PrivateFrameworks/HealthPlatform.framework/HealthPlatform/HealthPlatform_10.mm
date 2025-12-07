uint64_t PluginFeedItem.NotificationRequest.makeNotificationRequest.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationRequest.ContentState.stringRawValue.getter()
{
  v1 = v0[1];
  v2 = 0x4F656D6954656E6FLL;
  if (v1 != 1)
  {
    v2 = *v0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1701736302;
  }

  sub_2284C7554(*v0, v1);
  return v3;
}

double sub_2284C7554(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double PluginFeedItem.NotificationRequest.notificationStateValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return sub_2284C7554(v2, v3);
}

uint64_t PluginFeedItem.NotificationRequest.notificationStateValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2284C776C(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

__n128 PluginFeedItem.NotificationRequest.init(feedItemIdentifier:notificationIdentifier:notificationRequest:notificationStateValue:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, __n128 *a7@<X6>, __n128 *a8@<X8>)
{
  a8->n128_u64[0] = a1;
  a8->n128_u64[1] = a2;
  a8[1].n128_u64[0] = a3;
  a8[1].n128_u64[1] = a4;
  a8[2].n128_u64[0] = a5;
  a8[2].n128_u64[1] = a6;
  result = *a7;
  a8[3] = *a7;
  return result;
}

uint64_t sub_2284C75E8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t _s14HealthPlatform14PluginFeedItemV19NotificationRequestV12ContentStateO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_2284C776C(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_2284C776C(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_22855E15C();
      sub_2284C7554(v4, v5);
      sub_2284C7554(v2, v3);
      sub_2284C776C(v2, v3);
      sub_2284C776C(v4, v5);
      return v11 & 1;
    }

    sub_2284C7554(v9, v3);
    sub_2284C7554(v2, v3);
    sub_2284C776C(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_2284C7554(*a2, *(a2 + 8));
    sub_2284C7554(v2, v3);
    sub_2284C776C(v2, v3);
    sub_2284C776C(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_2284C776C(*a1, 1uLL);
  sub_2284C776C(v4, 1uLL);
  return v6;
}

uint64_t sub_2284C776C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform14PluginFeedItemV19NotificationRequestV12ContentStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284C77E8(uint64_t a1, int a2)
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

uint64_t sub_2284C7830(uint64_t result, int a2, int a3)
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

uint64_t sub_2284C7890(uint64_t a1, unsigned int a2)
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

uint64_t sub_2284C78E4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_2284C7940(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_2284C7A74@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void *PluginContentStateManager.__allocating_init(domain:healthStore:category:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v9 = objc_allocWithZone(MEMORY[0x277CCD570]);

  v10 = sub_22855D17C();

  v11 = [v9 initWithCategory:a4 domainName:v10 healthStore:a3];

  v8[4] = v11;
  return v8;
}

void *PluginContentStateManager.init(domain:healthStore:category:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = objc_allocWithZone(MEMORY[0x277CCD570]);

  v8 = sub_22855D17C();

  v9 = [v7 initWithCategory:a4 domainName:v8 healthStore:a3];

  v4[4] = v9;
  return v4;
}

uint64_t sub_2284C7BF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_22855D70C();

  return v4;
}

uint64_t sub_2284C7C48(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_22855D71C();

  return v4;
}

uint64_t sub_2284C7C98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_22855D6BC();

  return v4;
}

uint64_t sub_2284C7CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_22855D74C();

  return v4;
}

uint64_t sub_2284C7D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = sub_22855D72C();

  return v5;
}

uint64_t sub_2284C7D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = sub_22855D73C();

  return v5;
}

uint64_t sub_2284C7DE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = sub_22855D6CC();

  return v6;
}

uint64_t sub_2284C7E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = sub_22855D75C();

  return v6;
}

uint64_t sub_2284C7EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a3;
  v58 = a2;
  sub_2284C8634(0, &qword_27D83FDF8, MEMORY[0x277CBCE68]);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = &v49 - v8;
  sub_22843609C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = sub_22855C16C();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = *(v17 + 16);
  v27(&v49 - v28, a1, a4);
  if (swift_dynamicCast())
  {
    v29 = *(v4 + 32);
    v30 = sub_22855D75C();

    v59 = v30;
    v31 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v31, MEMORY[0x277CBCEB0]);
    v32 = sub_22855CE6C();
LABEL_8:

    return v32;
  }

  v27(v26, a1, a4);
  if (swift_dynamicCast())
  {
    v33 = *(v4 + 32);
    v34 = sub_22855D6CC();
LABEL_7:
    v35 = v34;

    v59 = v35;
    v36 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v36, MEMORY[0x277CBCEB0]);
    v32 = sub_22855CE6C();
    goto LABEL_8;
  }

  v27(v23, a1, a4);
  if (swift_dynamicCast())
  {
    v33 = *(v4 + 32);
    v34 = sub_22855D72C();
    goto LABEL_7;
  }

  v27(v20, a1, a4);
  v38 = v56;
  v39 = swift_dynamicCast();
  v40 = v55;
  v41 = *(v55 + 56);
  if (v39)
  {
    v41(v13, 0, 1, v38);
    v42 = v51;
    (*(v40 + 32))(v51, v13, v38);
    v43 = v50;
    (*(v40 + 16))(v50, v42, v38);
    v41(v43, 0, 1, v38);
    v44 = *(v4 + 32);
    v45 = sub_22855D73C();

    sub_2284648E4(v43);
    v59 = v45;
    v46 = MEMORY[0x277CBCEA8];
    sub_2284C8634(0, &qword_280DE9780, MEMORY[0x277CBCEA8]);
    sub_2284C86A8(&qword_280DE9788, &qword_280DE9780, v46, MEMORY[0x277CBCEB0]);
    v32 = sub_22855CE6C();

    (*(v40 + 8))(v42, v38);
  }

  else
  {
    v41(v13, 1, 1, v38);
    sub_2284648E4(v13);
    sub_2284C85E0();
    v59 = swift_allocError();
    sub_228418D44();
    v47 = v52;
    sub_22855CD7C();
    sub_2284C86A8(&qword_27D83FE08, &qword_27D83FDF8, MEMORY[0x277CBCE68], MEMORY[0x277CBCE70]);
    v48 = v54;
    v32 = sub_22855CE6C();
    (*(v53 + 8))(v47, v48);
  }

  return v32;
}

unint64_t sub_2284C85E0()
{
  result = qword_27D83FE00;
  if (!qword_27D83FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE00);
  }

  return result;
}

void sub_2284C8634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_228418D44();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284C86A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284C8634(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284C86EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  sub_2284C95D0(0, &qword_280DEE7A0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = v5;

  v8 = sub_22855D6EC();

  return v8;
}

uint64_t sub_2284C8794()
{
  v1 = *(v0 + 32);
  v2 = sub_22855D6FC();

  return v2;
}

uint64_t sub_2284C87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v12, v13);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v9 + 32))(v15 + v14, v11, a4);
  v16 = sub_2284C8988(a1, a2, sub_2284C8924, v15, a4);

  return v16;
}

uint64_t sub_2284C8988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a1;
  v86 = a4;
  v82 = a3;
  v78 = a2;
  sub_22855DA2C();
  v5 = sub_228418D44();
  v83 = sub_22855CCCC();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_22855CBBC();
  v88 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v85 = v61 - v7;
  v8 = swift_getWitnessTable();
  v9 = MEMORY[0x277D839B0];
  v89 = v6;
  v79 = v8;
  v87 = sub_22855CB6C();
  v84 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = v61 - v10;
  v72 = v5;
  v11 = sub_22855CD8C();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = v61 - v12;
  sub_22849B520(255);
  v14 = v13;
  v15 = sub_2284C949C();
  v61[1] = v14;
  v61[0] = v15;
  v64 = sub_22855CB6C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = v61 - v16;
  sub_2284C94F4(255, &qword_27D83FE10, &unk_280DED228, v9);
  v18 = v17;
  v19 = sub_2284C9580(&qword_27D83FE18, &qword_27D83FE10, &unk_280DED228, v9);
  v67 = v18;
  v65 = v19;
  v69 = sub_22855CB6C();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v61 - v20;
  v21 = MEMORY[0x277D83B88];
  sub_2284C94F4(255, &qword_27D83FE20, &qword_27D83FE28, MEMORY[0x277D83B88]);
  v23 = v22;
  v73 = sub_2284C9580(&qword_27D83FE30, &qword_27D83FE20, &qword_27D83FE28, v21);
  v74 = v23;
  v24 = sub_22855CB6C();
  v75 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = v61 - v25;
  v27 = MEMORY[0x277D837D0];
  sub_2284C94F4(255, &qword_280DE97A8, &qword_280DEE7D0, MEMORY[0x277D837D0]);
  sub_2284C9580(&qword_280DE97B0, &qword_280DE97A8, &qword_280DEE7D0, v27);
  v28 = sub_22855CB6C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = v61 - v31;
  if (v30 == v27)
  {
    v42 = *(v76 + 32);
    v76 = v30;
    v43 = v42;
    v44 = sub_22855D74C();

    v90 = v44;
    *(swift_allocObject() + 16) = v27;
    sub_22855CE8C();

    swift_getWitnessTable();
    v41 = sub_22855CE6C();
    (*(v29 + 8))(v32, v28);
    v38 = v76;
    goto LABEL_12;
  }

  v33 = v11;
  v34 = v76;
  v35 = v77;
  v36 = v78;
  v37 = MEMORY[0x277D83B88];
  v38 = v30;
  if (v30 == MEMORY[0x277D83B88])
  {
    v45 = *(v76 + 32);
    v46 = sub_22855D6BC();

    v90 = v46;
    *(swift_allocObject() + 16) = v37;
    sub_22855CE8C();

    swift_getWitnessTable();
    v41 = sub_22855CE6C();
    v47 = *(v75 + 8);
    v48 = v26;
LABEL_11:
    v47(v48, v24);
    goto LABEL_12;
  }

  v39 = MEMORY[0x277D839B0];
  if (v30 == MEMORY[0x277D839B0])
  {
    v49 = *(v76 + 32);
    v50 = sub_22855D70C();

    v90 = v50;
    *(swift_allocObject() + 16) = v39;
    v51 = v66;
    sub_22855CE8C();

    v24 = v69;
    swift_getWitnessTable();
    v41 = sub_22855CE6C();
    v52 = &v92;
LABEL_10:
    v47 = *(*(v52 - 32) + 8);
    v48 = v51;
    goto LABEL_11;
  }

  if (sub_22855C16C() == v30)
  {
    v90 = (*(*v34 + 144))(v35, v36);
    *(swift_allocObject() + 16) = v38;
    v51 = v62;
    sub_22855CE8C();

    v24 = v64;
    swift_getWitnessTable();
    v41 = sub_22855CE6C();
    v52 = &v91;
    goto LABEL_10;
  }

  sub_2284C85E0();
  v90 = swift_allocError();
  v40 = v70;
  sub_22855CD6C();
  swift_getWitnessTable();
  v41 = sub_22855CE6C();
  (*(v71 + 8))(v40, v33);
LABEL_12:
  v90 = v41;
  v53 = swift_allocObject();
  v54 = v82;
  v53[2] = v38;
  v53[3] = v54;
  v53[4] = v86;

  v55 = v85;
  sub_22855CEFC();

  *(swift_allocObject() + 16) = v38;
  v56 = v81;
  v57 = v89;
  sub_22855CE8C();

  (*(v88 + 8))(v55, v57);
  v58 = v87;
  swift_getWitnessTable();
  v59 = sub_22855CE6C();

  (*(v84 + 8))(v56, v58);
  return v59;
}

unint64_t sub_2284C949C()
{
  result = qword_280DE97E0;
  if (!qword_280DE97E0)
  {
    sub_22849B520(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE97E0);
  }

  return result;
}

void sub_2284C94F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2284C95D0(255, a3, a4, MEMORY[0x277D83D88]);
    sub_228418D44();
    v5 = sub_22855CDFC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2284C9580(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284C94F4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2284C95D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2284C9620@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C95D0(0, &qword_280DEE7D0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);

  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C96E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C95D0(0, &qword_27D83FE28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C979C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2284C95D0(0, &unk_280DED228, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t sub_2284C984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22843609C(0);
  MEMORY[0x28223BE20](v6);
  sub_2284360F4(a1, &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v8 ^ 1u, 1, a2);
}

uint64_t sub_2284C9930(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_22855DA2C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v15 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v11, a4);
    v15 = a2(v14);
    (*(v12 + 8))(v14, a4);
  }

  return v15 & 1;
}

uint64_t PluginContentStateManager.deinit()
{

  return v0;
}

uint64_t PluginContentStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2284C9DE8()
{
  result = qword_27D83FE38;
  if (!qword_27D83FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE38);
  }

  return result;
}

uint64_t NotificationContentState.init(identifier:uuid:contentState:hasGeneratedLocally:isAcknowledged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v14 = type metadata accessor for NotificationContentState(0);
  v15 = v14[5];
  v16 = sub_22855C1DC();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[6]];
  *v18 = a4;
  *(v18 + 1) = a5;
  a8[v14[7]] = a6;
  a8[v14[8]] = a7;
  return result;
}

double NotificationContentState.protectedData()@<D0>(char *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = type metadata accessor for NotificationContentState(0);
  v6 = *(v5 + 20);
  v7 = type metadata accessor for ProtectedNotificationContentState(0);
  v8 = *(v7 + 20);
  v9 = sub_22855C1DC();
  (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
  v10 = &v1[*(v5 + 24)];
  v11 = *v10;
  v12 = *(v10 + 1);
  *a1 = v4;
  *(a1 + 1) = v3;
  v13 = &a1[*(v7 + 24)];
  *v13 = v11;
  *(v13 + 1) = v12;

  return result;
}

double NotificationContentState.unprotectedData()@<D0>(char *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 1);
  v5 = type metadata accessor for NotificationContentState(0);
  v6 = v5[5];
  v7 = type metadata accessor for UnprotectedNotificationContentState(0);
  v8 = v7[5];
  v9 = sub_22855C1DC();
  (*(*(v9 - 8) + 16))(&a1[v8], &v1[v6], v9);
  v10 = v1[v5[7]];
  v11 = v1[v5[8]];
  *a1 = v4;
  *(a1 + 1) = v3;
  a1[v7[6]] = v10;
  a1[v7[7]] = v11;

  return result;
}

uint64_t NotificationContentState.description.getter()
{
  sub_22855DC6C();
  v1 = *v0;

  v9 = v1;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v2 = type metadata accessor for NotificationContentState(0);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70, MEMORY[0x277CC9628]);
  v3 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v0 + v2[6]), *(v0 + v2[6] + 8));
  MEMORY[0x22AAB92A0](0x746172656E656720, 0xEC000000203A6465);
  if (*(v0 + v2[7]))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + v2[7]))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v4, v5);

  MEMORY[0x22AAB92A0](0x6C776F6E6B636120, 0xEF203A6465676465);
  if (*(v0 + v2[8]))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + v2[8]))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v6, v7);

  return v9;
}

uint64_t ProtectedNotificationContentState.description.getter()
{
  v4 = *v0;

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v1 = type metadata accessor for ProtectedNotificationContentState(0);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70, MEMORY[0x277CC9628]);
  v2 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v2);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v0 + *(v1 + 24)), *(v0 + *(v1 + 24) + 8));
  return v4;
}

uint64_t UnprotectedNotificationContentState.description.getter()
{
  sub_22855DC6C();
  v1 = *v0;

  v9 = v1;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v2 = type metadata accessor for UnprotectedNotificationContentState(0);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70, MEMORY[0x277CC9628]);
  v3 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](0x746172656E656720, 0xEC000000203A6465);
  if (*(v0 + *(v2 + 24)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v4, v5);

  MEMORY[0x22AAB92A0](0x6C776F6E6B636120, 0xEF203A6465676465);
  if (*(v0 + *(v2 + 28)))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 28)))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x22AAB92A0](v6, v7);

  return v9;
}

uint64_t NotificationContentState.DataError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t NotificationContentState.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2284CA630()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x53746E65746E6F63;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x776F6E6B63417369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684632949;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2284CA6E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2284CDA74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2284CA714(uint64_t a1)
{
  v2 = sub_2284CCD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CA750(uint64_t a1)
{
  v2 = sub_2284CCD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationContentState.encode(to:)(void *a1)
{
  sub_2284CD030(0, &qword_27D83FE40, sub_2284CCD84, &type metadata for NotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCD84();
  sub_22855E31C();
  v14 = 0;
  sub_22855E08C();
  if (!v1)
  {
    type metadata accessor for NotificationContentState(0);
    v13 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50, MEMORY[0x277CC95F8]);
    sub_22855E0CC();
    v12 = 2;
    sub_22855E08C();
    v11 = 3;
    sub_22855E09C();
    v10 = 4;
    sub_22855E09C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NotificationContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_22855C1DC();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE58, sub_2284CCD84, &type metadata for NotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v27 = v5;
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for NotificationContentState(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCD84();
  v26 = v7;
  v11 = v28;
  sub_22855E30C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v4;
  v13 = v24;
  v14 = v25;
  v33 = 0;
  *v10 = sub_22855DFFC();
  v10[1] = v15;
  v28 = v15;
  v32 = 1;
  sub_2284CCDD8(&qword_27D83FE60, MEMORY[0x277CC9618]);
  sub_22855E03C();
  (*(v23 + 32))(v10 + v8[5], v12, v14);
  v31 = 2;
  v21 = 0;
  v16 = sub_22855DFFC();
  v17 = (v10 + v8[6]);
  *v17 = v16;
  v17[1] = v18;
  v30 = 3;
  *(v10 + v8[7]) = sub_22855E00C() & 1;
  v29 = 4;
  v19 = sub_22855E00C();
  (*(v13 + 8))(v26, v27);
  *(v10 + v8[8]) = v19 & 1;
  sub_2284CCE70(v10, v22, type metadata accessor for NotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2284CCED8(v10, type metadata accessor for NotificationContentState);
}

uint64_t sub_2284CAE94@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22855C1DC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2284CAF30(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t ProtectedNotificationContentState.init(identifier:uuid:contentState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for ProtectedNotificationContentState(0);
  v11 = *(v10 + 20);
  v12 = sub_22855C1DC();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t static ProtectedNotificationContentState.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for ProtectedNotificationContentState(0);
  if ((sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_2284CB0F0()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0x53746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2284CB150@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2284CDC40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2284CB178(uint64_t a1)
{
  v2 = sub_2284CCE1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CB1B4(uint64_t a1)
{
  v2 = sub_2284CCE1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProtectedNotificationContentState.encode(to:)(void *a1)
{
  sub_2284CD030(0, &qword_27D83FE68, sub_2284CCE1C, &type metadata for ProtectedNotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCE1C();
  sub_22855E31C();
  v12 = 0;
  sub_22855E08C();
  if (!v1)
  {
    type metadata accessor for ProtectedNotificationContentState(0);
    v11 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50, MEMORY[0x277CC95F8]);
    sub_22855E0CC();
    v10 = 2;
    sub_22855E08C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ProtectedNotificationContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_22855C1DC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE78, sub_2284CCE1C, &type metadata for ProtectedNotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v33 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v27 - v7;
  v9 = type metadata accessor for ProtectedNotificationContentState(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCE1C();
  v34 = v8;
  v12 = v35;
  sub_22855E30C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = a1;
  v14 = v30;
  v13 = v31;
  v28 = v11;
  v15 = v32;
  v16 = v33;
  v38 = 0;
  v17 = sub_22855DFFC();
  v18 = v28;
  *v28 = v17;
  v18[1] = v19;
  v27[1] = v19;
  v37 = 1;
  sub_2284CCDD8(&qword_27D83FE60, MEMORY[0x277CC9618]);
  v20 = v5;
  sub_22855E03C();
  v21 = v28;
  (*(v13 + 32))(v28 + *(v9 + 20), v20, v15);
  v36 = 2;
  v22 = sub_22855DFFC();
  v24 = v23;
  (*(v14 + 8))(v34, v16);
  v25 = (v21 + *(v9 + 24));
  *v25 = v22;
  v25[1] = v24;
  sub_2284CCE70(v21, v29, type metadata accessor for ProtectedNotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return sub_2284CCED8(v21, type metadata accessor for ProtectedNotificationContentState);
}

uint64_t sub_2284CB814(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22855E15C() & 1) == 0 || (sub_22855C1AC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_22855E15C();
}

uint64_t sub_2284CB8CC(uint64_t a1)
{
  v5 = *v1;

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  sub_22855C1DC();
  sub_2284CCDD8(&qword_280DECD70, MEMORY[0x277CC9628]);
  v3 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8));
  return v5;
}

uint64_t UnprotectedNotificationContentState.init(identifier:uuid:hasGeneratedLocally:isAcknowledged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for UnprotectedNotificationContentState(0);
  v11 = v10[5];
  v12 = sub_22855C1DC();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  a6[v10[6]] = a4;
  a6[v10[7]] = a5;
  return result;
}

unint64_t sub_2284CBAC4()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x776F6E6B63417369;
  }

  if (*v0)
  {
    v1 = 1684632949;
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

uint64_t sub_2284CBB4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2284CDD64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2284CBB80(uint64_t a1)
{
  v2 = sub_2284CCFDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CBBBC(uint64_t a1)
{
  v2 = sub_2284CCFDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnprotectedNotificationContentState.encode(to:)(void *a1)
{
  sub_2284CD030(0, &qword_27D83FE80, sub_2284CCFDC, &type metadata for UnprotectedNotificationContentState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCFDC();
  sub_22855E31C();
  v13 = 0;
  sub_22855E08C();
  if (!v1)
  {
    type metadata accessor for UnprotectedNotificationContentState(0);
    v12 = 1;
    sub_22855C1DC();
    sub_2284CCDD8(&qword_27D83FE50, MEMORY[0x277CC95F8]);
    sub_22855E0CC();
    v11 = 2;
    sub_22855E09C();
    v10 = 3;
    sub_22855E09C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t UnprotectedNotificationContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_22855C1DC();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CD030(0, &qword_27D83FE90, sub_2284CCFDC, &type metadata for UnprotectedNotificationContentState.CodingKeys, MEMORY[0x277D844C8]);
  v28 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for UnprotectedNotificationContentState(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284CCFDC();
  v27 = v8;
  v12 = v29;
  sub_22855E30C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v24;
  v14 = v25;
  v29 = a1;
  v15 = v26;
  v33 = 0;
  v16 = v11;
  *v11 = sub_22855DFFC();
  v11[1] = v17;
  v22 = v17;
  v32 = 1;
  sub_2284CCDD8(&qword_27D83FE60, MEMORY[0x277CC9618]);
  sub_22855E03C();
  (*(v14 + 32))(v11 + v9[5], v5, v15);
  v31 = 2;
  *(v11 + v9[6]) = sub_22855E00C() & 1;
  v30 = 3;
  v18 = sub_22855E00C();
  v19 = v29;
  v20 = v18;
  (*(v13 + 8))(v27, v28);
  *(v16 + v9[7]) = v20 & 1;
  sub_2284CCE70(v16, v23, type metadata accessor for UnprotectedNotificationContentState);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_2284CCED8(v16, type metadata accessor for UnprotectedNotificationContentState);
}

uint64_t NotificationContentState.init(protected:unprotected:)@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ProtectedNotificationContentState(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for UnprotectedNotificationContentState(0);
  if (sub_22855C1AC())
  {
    v9 = type metadata accessor for NotificationContentState(0);
    v10 = v9[5];
    v11 = sub_22855C1DC();
    v22 = *(v11 - 8);
    v23 = v11;
    v24 = v10;
    (*(v22 + 16))(&a3[v10], &a1[v7]);
    v12 = *a1;
    v13 = *(a1 + 1);
    if (*a1 == *a2 && v13 == a2[1] || (sub_22855E15C() & 1) != 0)
    {
      *a3 = v12;
      *(a3 + 1) = v13;
      v14 = &a1[*(v6 + 24)];
      v16 = *v14;
      v15 = *(v14 + 1);

      sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
      v17 = &a3[v9[6]];
      *v17 = v16;
      *(v17 + 1) = v15;
      a3[v9[7]] = *(a2 + *(v8 + 24));
      v18 = *(a2 + *(v8 + 28));
      result = sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
      a3[v9[8]] = v18;
    }

    else
    {
      sub_2284CD098();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
      sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
      sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
      return (*(v22 + 8))(&a3[v24], v23);
    }
  }

  else
  {
    sub_2284CD098();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    sub_2284CCED8(a2, type metadata accessor for UnprotectedNotificationContentState);
    return sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
  }

  return result;
}

uint64_t NotificationContentState.init(protected:)@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for ProtectedNotificationContentState(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnprotectedNotificationContentState(0);
  v8 = (v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(v4 + 28);
  v17 = v8[7];
  v18 = sub_22855C1DC();
  (*(*(v18 - 8) + 16))(&v13[v17], &a1[v16], v18);
  *v13 = v14;
  *(v13 + 1) = v15;
  v13[v8[8]] = 1;
  v13[v8[9]] = 0;
  sub_2284CCE70(a1, v6, type metadata accessor for ProtectedNotificationContentState);
  sub_2284CCE70(v13, v11, type metadata accessor for UnprotectedNotificationContentState);

  NotificationContentState.init(protected:unprotected:)(v6, v11, v21);
  sub_2284CCED8(a1, type metadata accessor for ProtectedNotificationContentState);
  return sub_2284CCED8(v13, type metadata accessor for UnprotectedNotificationContentState);
}

uint64_t NotificationContentState.dateFromContentState()@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationContentState(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v9 = 0;
  if (sub_2284CCBBC(v4, v5, &v9))
  {
    sub_22855C0BC();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22855C16C();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

Swift::Bool __swiftcall NotificationContentState.shouldGenerateNotification(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for NotificationContentState(0);
  if (object && ((v5 = (v1 + v4[6]), *v5 == countAndFlagsBits) ? (v6 = v5[1] == object) : (v6 = 0), v6 || (v7 = v4, v8 = sub_22855E15C(), v4 = v7, (v8 & 1) != 0)))
  {
    if (*(v1 + v4[8]))
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v1 + v4[7]) ^ 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall NotificationContentState.shouldRemoveNotification(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for NotificationContentState(0);
  if (object && ((v5 = (v1 + *(v4 + 24)), *v5 == countAndFlagsBits) ? (v6 = v5[1] == object) : (v6 = 0), v6 || (v7 = v4, v8 = sub_22855E15C(), v4 = v7, (v8 & 1) != 0)))
  {
    return *(v1 + *(v4 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t Optional<A>.shouldGenerateNotification(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2284B7804(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CCE70(v3, v8, sub_2284B7804);
  v9 = type metadata accessor for NotificationContentState(0);
  v10 = 1;
  if ((*(*(v9 - 1) + 48))(v8, 1, v9) == 1)
  {
    v11 = sub_2284B7804;
  }

  else
  {
    v11 = type metadata accessor for NotificationContentState;
    if (a2)
    {
      v12 = &v8[v9[6]];
      v13 = *v12 == a1 && *(v12 + 1) == a2;
      if (v13 || (v14 = sub_22855E15C(), v11 = type metadata accessor for NotificationContentState, (v14 & 1) != 0))
      {
        v11 = type metadata accessor for NotificationContentState;
        if (v8[v9[8]])
        {
          v10 = 0;
        }

        else
        {
          v10 = v8[v9[7]] ^ 1;
          v11 = type metadata accessor for NotificationContentState;
        }
      }
    }
  }

  sub_2284CCED8(v8, v11);
  return v10 & 1;
}

uint64_t Optional<A>.shouldRemoveNotification(with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2284B7804(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2284B7804;
  sub_2284CCE70(v3, v8, sub_2284B7804);
  v10 = type metadata accessor for NotificationContentState(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    a2 = 0;
  }

  else
  {
    if (a2)
    {
      v11 = &v8[*(v10 + 24)];
      v12 = *v11 == a1 && *(v11 + 1) == a2;
      if (!v12 && (sub_22855E15C() & 1) == 0)
      {
        v9 = type metadata accessor for NotificationContentState;
        a2 = 0;
        goto LABEL_11;
      }

      a2 = v8[*(v10 + 32)];
    }

    v9 = type metadata accessor for NotificationContentState;
  }

LABEL_11:
  sub_2284CCED8(v8, v9);
  return a2;
}

BOOL sub_2284CCBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22855DC5C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t _s14HealthPlatform24NotificationContentStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22855E15C()) && (v5 = type metadata accessor for NotificationContentState(0), (sub_22855C1AC()) && ((v6 = v5[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_22855E15C()) && *(a1 + v5[7]) == *(a2 + v5[7])))
  {
    v11 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_2284CCD84()
{
  result = qword_27D83FE48;
  if (!qword_27D83FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE48);
  }

  return result;
}

uint64_t sub_2284CCDD8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22855C1DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2284CCE1C()
{
  result = qword_27D83FE70;
  if (!qword_27D83FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE70);
  }

  return result;
}

uint64_t sub_2284CCE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2284CCED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14HealthPlatform35UnprotectedNotificationContentStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22855E15C()) && (v5 = type metadata accessor for UnprotectedNotificationContentState(0), (sub_22855C1AC()) && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)))
  {
    v6 = *(a1 + *(v5 + 28)) ^ *(a2 + *(v5 + 28)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_2284CCFDC()
{
  result = qword_27D83FE88;
  if (!qword_27D83FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE88);
  }

  return result;
}

void sub_2284CD030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2284CD098()
{
  result = qword_27D83FE98;
  if (!qword_27D83FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FE98);
  }

  return result;
}

unint64_t sub_2284CD0F0()
{
  result = qword_27D83FEA0;
  if (!qword_27D83FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEA0);
  }

  return result;
}

uint64_t sub_2284CD16C(uint64_t a1)
{
  result = sub_22855C1DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2284CD22C(uint64_t a1)
{
  result = sub_22855C1DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22855C1DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22855C1DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2284CD420(uint64_t a1)
{
  result = sub_22855C1DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnprotectedNotificationContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnprotectedNotificationContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationContentState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationContentState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2284CD760()
{
  result = qword_27D83FEA8;
  if (!qword_27D83FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEA8);
  }

  return result;
}

unint64_t sub_2284CD7B8()
{
  result = qword_27D83FEB0;
  if (!qword_27D83FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEB0);
  }

  return result;
}

unint64_t sub_2284CD810()
{
  result = qword_27D83FEB8;
  if (!qword_27D83FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEB8);
  }

  return result;
}

unint64_t sub_2284CD868()
{
  result = qword_27D83FEC0;
  if (!qword_27D83FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEC0);
  }

  return result;
}

unint64_t sub_2284CD8C0()
{
  result = qword_27D83FEC8;
  if (!qword_27D83FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEC8);
  }

  return result;
}

unint64_t sub_2284CD918()
{
  result = qword_27D83FED0;
  if (!qword_27D83FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FED0);
  }

  return result;
}

unint64_t sub_2284CD970()
{
  result = qword_27D83FED8;
  if (!qword_27D83FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FED8);
  }

  return result;
}

unint64_t sub_2284CD9C8()
{
  result = qword_27D83FEE0;
  if (!qword_27D83FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEE0);
  }

  return result;
}

unint64_t sub_2284CDA20()
{
  result = qword_27D83FEE8;
  if (!qword_27D83FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FEE8);
  }

  return result;
}

uint64_t sub_2284CDA74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000228571670 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x776F6E6B63417369 && a2 == 0xEE0064656764656CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t sub_2284CDC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2284CDD64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000228571670 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F6E6B63417369 && a2 == 0xEE0064656764656CLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

_BYTE *sub_2284CDEE0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

HealthPlatform::SharableModelVersion __swiftcall SharableModelVersion.init(latestSupported:minimumSupported:)(Swift::Int latestSupported, Swift::Int minimumSupported)
{
  v3 = minimumSupported;
  v4 = latestSupported;
  v5 = v2;
  if (latestSupported < minimumSupported)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v6 = sub_22855CABC();
    __swift_project_value_buffer(v6, qword_280DEEC98);
    v7 = sub_22855CA8C();
    v8 = sub_22855D68C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136315650;
      v15 = v10;
      sub_2284CF860();
      v11 = sub_22855D1BC();
      v13 = sub_2283F8938(v11, v12, &v15);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v4;
      *(v9 + 22) = 2048;
      *(v9 + 24) = v3;
      _os_log_impl(&dword_2283ED000, v7, v8, "[%s]: error: Malformed version with %ld < %ld, returning false version", v9, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AABAD40](v10, -1, -1);
      MEMORY[0x22AABAD40](v9, -1, -1);
    }

    v4 = -1;
    v3 = -1;
  }

  *v5 = v4;
  v5[1] = v3;
  result.minimumSupported = minimumSupported;
  result.latestSupported = latestSupported;
  return result;
}

uint64_t PluginSharableModel.init(identifier:version:authorizationIdentifiers:objectTypes:data:sourceTimeZone:sourceLocale:sharedSummary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v51 = a8;
  v47 = a5;
  v48 = a6;
  v45 = a2;
  v46 = a4;
  v54 = a11;
  v49 = a10;
  v43 = a1;
  v44 = MEMORY[0x277CC9788];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v42 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = sub_22855C29C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a3;
  v23 = a3[1];
  v24 = type metadata accessor for PluginSharableModel(0);
  v25 = *(v24 + 40);
  v26 = sub_22855C30C();
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v27 = *(v24 + 44);
  v52 = *(v19 + 56);
  v53 = v27;
  v52(&a9[v27], 1, 1, v18);
  v28 = v45;
  v29 = v46;
  *a9 = v43;
  *(a9 + 1) = v28;
  *(a9 + 2) = v22;
  *(a9 + 3) = v23;
  v30 = v47;
  v31 = v48;
  *(a9 + 4) = v29;
  *(a9 + 5) = v30;
  v32 = v50;
  *(a9 + 6) = v31;
  *(a9 + 7) = v32;
  v33 = &a9[v25];
  v34 = v51;
  sub_2284B7200(v51, v33);
  v35 = v49;
  sub_2284CF9C8(v49, v17, &qword_280DECD58, v44);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v36 = MEMORY[0x277CC9788];
    sub_2284CF958(v35, &qword_280DECD58, MEMORY[0x277CC9788]);
    sub_2284CF958(v34, &qword_280DEE788, MEMORY[0x277CC9A70]);
    sub_2284CF958(v17, &qword_280DECD58, v36);
    v37 = v53;
    sub_2284CF958(&a9[v53], &qword_280DECD58, v36);
    result = (v52)(&a9[v37], 1, 1, v18);
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    sub_22855C1FC();
    v39 = v42;
    sub_22855C1EC();
    v40 = MEMORY[0x277CC9788];
    sub_2284CF958(v35, &qword_280DECD58, MEMORY[0x277CC9788]);
    sub_2284CF958(v34, &qword_280DEE788, MEMORY[0x277CC9A70]);
    (*(v19 + 8))(v21, v18);
    v52(v39, 0, 1, v18);
    result = sub_2284CFA48(v39, &a9[v53], &qword_280DECD58, v40);
  }

  *(a9 + 8) = v54;
  return result;
}

uint64_t PluginSharableModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 PluginSharableModel.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PluginSharableModel.version.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t PluginSharableModel.authorizationIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t PluginSharableModel.objectTypes.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t PluginSharableModel.data.getter()
{
  v1 = *(v0 + 48);
  sub_22842B3E0(v1, *(v0 + 56));
  return v1;
}

uint64_t PluginSharableModel.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B38C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void *PluginSharableModel.sharedSummary.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

int64x2_t static PluginSharableModel.currentCodeVersion.getter@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  return result;
}

uint64_t PluginSharableModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22855C29C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v38 - v8;
  v9 = sub_22855C30C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v38 - v12;
  v13 = sub_22855C4CC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855D20C();
  v17 = v2[3];
  MEMORY[0x22AABA2B0](v2[2]);
  MEMORY[0x22AABA2B0](v17);
  v45 = v2;
  v18 = v2[4];
  MEMORY[0x22AABA2B0](*(v18 + 16));
  v19 = *(v18 + 16);
  if (v19)
  {
    v22 = *(v14 + 16);
    v20 = v14 + 16;
    v21 = v22;
    v23 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v24 = *(v20 + 56);
    do
    {
      v21(v16, v23, v13);
      sub_2284D0C54(&qword_280DE9F70, MEMORY[0x277D11300], MEMORY[0x277D11308]);
      sub_22855D14C();
      (*(v20 - 8))(v16, v13);
      v23 += v24;
      --v19;
    }

    while (v19);
  }

  v25 = v45;
  sub_2284BF160(a1, v45[5]);
  sub_22855C0AC();
  v26 = v25[8];
  sub_22855E24C();
  if (v26)
  {
    v27 = v26;
    sub_22855D9BC();
  }

  v28 = v47;
  v30 = v42;
  v29 = v43;
  v31 = type metadata accessor for PluginSharableModel(0);
  v32 = v41;
  sub_2284CF9C8(v25 + *(v31 + 40), v41, &qword_280DEE788, MEMORY[0x277CC9A70]);
  if ((*(v30 + 48))(v32, 1, v29) == 1)
  {
    sub_22855E24C();
  }

  else
  {
    v33 = v39;
    (*(v30 + 32))(v39, v32, v29);
    sub_22855E24C();
    sub_2284D0C54(&qword_280DECD48, MEMORY[0x277CC9A70], MEMORY[0x277CC9A80]);
    sub_22855D14C();
    (*(v30 + 8))(v33, v29);
  }

  v34 = v44;
  sub_2284CF9C8(v25 + *(v31 + 44), v44, &qword_280DECD58, MEMORY[0x277CC9788]);
  v35 = v46;
  if ((*(v46 + 48))(v34, 1, v28) == 1)
  {
    return sub_22855E24C();
  }

  v37 = v40;
  (*(v35 + 32))(v40, v34, v28);
  sub_22855E24C();
  sub_2284D0C54(&qword_280DECD60, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  sub_22855D14C();
  return (*(v35 + 8))(v37, v28);
}

uint64_t PluginSharableModel.hashValue.getter()
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_2284CEF34()
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v1);
  return sub_22855E27C();
}

uint64_t sub_2284CEF78(uint64_t a1)
{
  sub_22855E22C();
  PluginSharableModel.hash(into:)(v2);
  return sub_22855E27C();
}

Swift::Bool __swiftcall SharableModelVersion.isCompatible(with:)(HealthPlatform::SharableModelVersion_optional with)
{
  if (*(with.value.latestSupported + 16))
  {
    return 0;
  }

  v3 = *(with.value.latestSupported + 8);
  return v3 >= v1[1] && *v1 >= v3;
}

unint64_t SharableModelVersion.description.getter()
{
  sub_22855DC6C();

  v0 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v0);

  MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285716B0);
  v1 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v1);

  MEMORY[0x22AAB92A0](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_2284CF144()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x755374736574616CLL;
  }
}

uint64_t sub_2284CF190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x755374736574616CLL && a2 == 0xEF646574726F7070;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002285716D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284CF27C(uint64_t a1)
{
  v2 = sub_2284D050C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284CF2B8(uint64_t a1)
{
  v2 = sub_2284D050C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharableModelVersion.encode(to:)(void *a1)
{
  sub_2284D0560(0, &qword_280DE9008, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D050C();
  sub_22855E31C();
  v12 = 0;
  sub_22855E0BC();
  if (!v2)
  {
    v11 = 1;
    sub_22855E0BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SharableModelVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x22AABA2B0](*v0);
  return MEMORY[0x22AABA2B0](v1);
}

uint64_t SharableModelVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t SharableModelVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2284D0560(0, &qword_27D83FEF8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D050C();
  sub_22855E30C();
  if (!v2)
  {
    v15 = 0;
    v10 = sub_22855E02C();
    v14 = 1;
    v12 = sub_22855E02C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2284CF6E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t sub_2284CF73C()
{
  v1 = v0[1];
  MEMORY[0x22AABA2B0](*v0);
  return MEMORY[0x22AABA2B0](v1);
}

uint64_t sub_2284CF778(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v2);
  MEMORY[0x22AABA2B0](v3);
  return sub_22855E27C();
}

unint64_t sub_2284CF860()
{
  result = qword_27D83FEF0;
  if (!qword_27D83FEF0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D83FEF0);
  }

  return result;
}

uint64_t type metadata accessor for PluginSharableModel(uint64_t a1)
{
  result = qword_280DEE5A0;
  if (!qword_280DEE5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2284CF8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284CF958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2284CF8F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2284CF9C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284CF8F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2284CFA48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284CF8F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s14HealthPlatform25PluginSharableModelChangeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          sub_2284D0B58(*a2, 1u);
          sub_2284D0B58(v2, 1u);
          LOBYTE(v6) = sub_2284BC94C(v2, v4);
          sub_2284D0B6C(v2, 1u);
          v7 = v4;
          v8 = 1;
LABEL_16:
          sub_2284D0B6C(v7, v8);
          return v6 & 1;
        }
      }

      else if (v5 == 2)
      {
        LOBYTE(v6) = _s14HealthPlatform22SharableModelPredicateO2eeoiySbAC_ACtFZ_0(*a1, *a2);
        sub_2284D0B58(v4, 2u);
        sub_2284D0B58(v2, 2u);
        sub_2284D0B6C(v2, 2u);
        v7 = v4;
        v8 = 2;
        goto LABEL_16;
      }
    }

    else if (!*(a2 + 8))
    {
      sub_2284D0B58(*a2, 0);
      sub_2284D0B58(v2, 0);
      v6 = sub_2284BC94C(v2, v4);
      sub_2284D0B6C(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v3 == 3)
  {
    if (v5 == 3)
    {
      sub_2284D0B58(*a2, 3u);
      sub_2284D0B58(v2, 3u);
      LOBYTE(v6) = sub_2284BCB6C(v2, v4);
      sub_2284D0B6C(v2, 3u);
      v7 = v4;
      v8 = 3;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v3 == 4)
  {
    if (v5 == 4)
    {
      sub_2284D0B58(*a2, 4u);
      sub_2284D0B58(v2, 4u);
      LOBYTE(v6) = sub_2284BC94C(v2, v4);
      sub_2284D0B6C(v2, 4u);
      v7 = v4;
      v8 = 4;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v5 != 5 || v4 != 0)
  {
LABEL_21:
    sub_2284D0B58(*a2, *(a2 + 8));
    sub_2284D0B58(v2, v3);
    sub_2284D0B6C(v2, v3);
    sub_2284D0B6C(v4, v5);
    return 0;
  }

  sub_2284D0B6C(*a1, 5u);
  sub_2284D0B6C(0, 5u);
  return 1;
}

BOOL _s14HealthPlatform19PluginSharableModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22855C29C();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC9788];
  v7 = MEMORY[0x277D83D88];
  sub_2284CF8F4(0, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  sub_2284D0B80(0, &qword_280DECD50, &qword_280DECD58, v6);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v56 = &v52 - v13;
  v14 = sub_22855C30C();
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277CC9A70];
  sub_2284CF8F4(0, &qword_280DEE788, MEMORY[0x277CC9A70], v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v52 - v19;
  sub_2284D0B80(0, &qword_280DECD40, &qword_280DEE788, v17);
  v22 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  if (*a1 != *a2 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    if ((sub_2284BCB80(a1[4], a2[4]) & 1) == 0 || (sub_2284BCBC8(a1[5], a2[5]) & 1) == 0 || !sub_22845BED4(a1[6], a1[7], a2[6], a2[7]))
    {
      return 0;
    }

    v26 = a2[8];
    if (a1[8])
    {
      if (!v26)
      {
        return 0;
      }

      v53 = a1[8];
      v54 = sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
      v52 = v26;
      v53 = v53;
      v27 = sub_22855D9AC();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    v28 = type metadata accessor for PluginSharableModel(0);
    v29 = v28[10];
    v53 = v28;
    v54 = v29;
    v30 = *(v22 + 48);
    v31 = MEMORY[0x277CC9A70];
    sub_2284CF9C8(a1 + v29, v24, &qword_280DEE788, MEMORY[0x277CC9A70]);
    v32 = a2 + v54;
    v54 = v30;
    sub_2284CF9C8(v32, &v24[v30], &qword_280DEE788, v31);
    v33 = *(v59 + 48);
    if (v33(v24, 1, v14) == 1)
    {
      if (v33(&v24[v54], 1, v14) == 1)
      {
        sub_2284CF958(v24, &qword_280DEE788, MEMORY[0x277CC9A70]);
LABEL_20:
        v40 = v53[11];
        v41 = *(v12 + 48);
        v42 = MEMORY[0x277CC9788];
        v43 = a1 + v40;
        v44 = v56;
        sub_2284CF9C8(v43, v56, &qword_280DECD58, MEMORY[0x277CC9788]);
        sub_2284CF9C8(a2 + v40, v44 + v41, &qword_280DECD58, v42);
        v46 = v57;
        v45 = v58;
        v47 = *(v57 + 48);
        if (v47(v44, 1, v58) == 1)
        {
          if (v47(v44 + v41, 1, v45) == 1)
          {
            sub_2284CF958(v44, &qword_280DECD58, MEMORY[0x277CC9788]);
            return 1;
          }

          goto LABEL_25;
        }

        sub_2284CF9C8(v44, v10, &qword_280DECD58, MEMORY[0x277CC9788]);
        if (v47(v44 + v41, 1, v45) == 1)
        {
          (*(v46 + 8))(v10, v45);
LABEL_25:
          v34 = &qword_280DECD50;
          v35 = &qword_280DECD58;
          v36 = MEMORY[0x277CC9788];
          v37 = v44;
          goto LABEL_26;
        }

        v48 = v44 + v41;
        v49 = v55;
        (*(v46 + 32))(v55, v48, v45);
        sub_2284D0C54(&qword_27D83FF10, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
        v50 = sub_22855D16C();
        v51 = *(v46 + 8);
        v51(v49, v45);
        v51(v10, v45);
        sub_2284CF958(v44, &qword_280DECD58, MEMORY[0x277CC9788]);
        return (v50 & 1) != 0;
      }
    }

    else
    {
      sub_2284CF9C8(v24, v20, &qword_280DEE788, MEMORY[0x277CC9A70]);
      if (v33(&v24[v54], 1, v14) != 1)
      {
        v38 = v59;
        (*(v59 + 32))(v16, &v24[v54], v14);
        sub_2284D0C54(&qword_27D83FF18, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
        LODWORD(v54) = sub_22855D16C();
        v39 = *(v38 + 8);
        v39(v16, v14);
        v39(v20, v14);
        sub_2284CF958(v24, &qword_280DEE788, MEMORY[0x277CC9A70]);
        if ((v54 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_20;
      }

      (*(v59 + 8))(v20, v14);
    }

    v34 = &qword_280DECD40;
    v35 = &qword_280DEE788;
    v36 = MEMORY[0x277CC9A70];
    v37 = v24;
LABEL_26:
    sub_2284D0BF8(v37, v34, v35, v36);
    return 0;
  }

  return result;
}

unint64_t sub_2284D050C()
{
  result = qword_280DEBC58;
  if (!qword_280DEBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC58);
  }

  return result;
}

void sub_2284D0560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284D050C();
    v7 = a3(a1, &type metadata for SharableModelVersion.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2284D0610()
{
  result = qword_27D83FF00;
  if (!qword_27D83FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF00);
  }

  return result;
}

void sub_2284D068C(uint64_t a1)
{
  sub_2284CF8F4(319, &qword_280DE9600, MEMORY[0x277D11300], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2284D0860(319, &qword_280DE95B8, &qword_280DEE7B8, 0x277CCD720, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2284D0860(319, &qword_280DE9488, &qword_280DE9490, 0x277CCD928, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2284CF8F4(319, &qword_280DEE788, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2284CF8F4(319, &qword_280DECD58, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2284D0860(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2283EF310(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharableModelVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharableModelVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform25PluginSharableModelChangeO(uint64_t a1)
{
  if ((*(a1 + 8) & 7u) <= 4)
  {
    return *(a1 + 8) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2284D098C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2284D09D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_2284D0A18(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_2284D0A54()
{
  result = qword_27D83FF08;
  if (!qword_27D83FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF08);
  }

  return result;
}

unint64_t sub_2284D0AAC()
{
  result = qword_280DEBC48;
  if (!qword_280DEBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC48);
  }

  return result;
}

unint64_t sub_2284D0B04()
{
  result = qword_280DEBC50;
  if (!qword_280DEBC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBC50);
  }

  return result;
}

double sub_2284D0B58(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2284D0B6C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return v2;
}

void sub_2284D0B80(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2284CF8F4(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2284D0BF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2284D0B80(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2284D0C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ContentKind.Group.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void sub_2284D0CD4()
{
  qword_280DEE750 = 0x73656369746F6ELL;
  qword_280DEE758 = 0xE700000000000000;
  qword_280DEE760 = &unk_283B7EA68;
}

double static ContentKind.Group.notices.getter@<D0>(void *a1@<X8>)
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE758;
  v3 = qword_280DEE760;
  *a1 = qword_280DEE750;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t static ContentKind.Group.notices.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE750 = v1;
  *&qword_280DEE758 = v3;
}

uint64_t (*static ContentKind.Group.notices.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_2284D0EBC@<D0>(void *a1@<X8>)
{
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE758;
  v3 = qword_280DEE760;
  *a1 = qword_280DEE750;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t sub_2284D0F4C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEE748;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE750 = v2;
  qword_280DEE758 = v1;
  qword_280DEE760 = v3;
}

void sub_2284D0FFC()
{
  qword_280DEEC68 = 0x6867696C68676968;
  qword_280DEEC70 = 0xEA00000000007374;
  qword_280DEEC78 = &unk_283B7EB80;
}

double static ContentKind.Group.highlights.getter@<D0>(void *a1@<X8>)
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEEC70;
  v3 = qword_280DEEC78;
  *a1 = qword_280DEEC68;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t static ContentKind.Group.highlights.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEEC68 = v1;
  *&qword_280DEEC70 = v3;
}

uint64_t (*static ContentKind.Group.highlights.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_2284D11E8@<D0>(void *a1@<X8>)
{
  if (qword_280DEEC60 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEEC70;
  v3 = qword_280DEEC78;
  *a1 = qword_280DEEC68;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t sub_2284D1278(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEEC60;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEEC68 = v2;
  qword_280DEEC70 = v1;
  qword_280DEEC78 = v3;
}

void sub_2284D1328()
{
  qword_280DEE770 = 0x616964656DLL;
  qword_280DEE778 = 0xE500000000000000;
  qword_280DEE780 = &unk_283B7F460;
}

double static ContentKind.Group.media.getter@<D0>(void *a1@<X8>)
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE778;
  v3 = qword_280DEE780;
  *a1 = qword_280DEE770;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t static ContentKind.Group.media.setter(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE770 = v1;
  *&qword_280DEE778 = v3;
}

uint64_t (*static ContentKind.Group.media.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_2284D150C@<D0>(void *a1@<X8>)
{
  if (qword_280DEE768 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280DEE778;
  v3 = qword_280DEE780;
  *a1 = qword_280DEE770;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t sub_2284D159C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = qword_280DEE768;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEE770 = v2;
  qword_280DEE778 = v1;
  qword_280DEE780 = v3;
}

double sub_2284D164C()
{
  sub_22844C284(0, &qword_280DEE3C0, &type metadata for ContentKind.Group, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228560570;
  if (qword_280DEE748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_280DEE758;
  v2 = qword_280DEE760;
  *(v0 + 32) = qword_280DEE750;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280DEE768;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_280DEE778;
  v5 = qword_280DEE780;
  *(v0 + 56) = qword_280DEE770;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  off_280DEE738 = v0;

  return result;
}

double static ContentKind.groups.getter()
{
  if (qword_280DEE730 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t ContentKind.groups.getter()
{
  v1 = *v0;
  if (qword_280DEE730 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = off_280DEE738;
  v3 = *(off_280DEE738 + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = off_280DEE738 + 48;
  v6 = MEMORY[0x277D84F90];
  v18 = off_280DEE738 + 48;
  do
  {
    v19 = v6;
    v7 = &v5[24 * v4];
    for (i = v4; ; ++i)
    {
      if (i >= v2[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      v10 = *(v7 - 2);
      v9 = *(v7 - 1);
      v4 = i + 1;
      v11 = *v7;

      swift_bridgeObjectRetain_n();
      v12 = sub_228425D94(v1, v11);

      if (v12)
      {
        break;
      }

      v7 += 3;
      if (v3 == v4)
      {
        return v19;
      }
    }

    v6 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2284276F0(0, *(v19 + 16) + 1, 1);
      v6 = v19;
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      sub_2284276F0((v13 > 1), v14 + 1, 1);
      v15 = v14 + 1;
      v6 = v19;
    }

    *(v6 + 16) = v15;
    v16 = (v6 + 24 * v14);
    v16[4] = v10;
    v16[5] = v9;
    v16[6] = v11;
    v5 = v18;
  }

  while (v3 - 1 != i);
  return v6;
}

uint64_t sub_2284D19C4()
{
  sub_22855E22C();
  ContentKind.rawValue.getter();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_2284D1A2C(uint64_t a1)
{
  ContentKind.rawValue.getter();
  sub_22855D20C();
}

unint64_t sub_2284D1A9C@<X0>(unint64_t *a1@<X8>)
{
  result = ContentKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2284D1B88()
{
  result = qword_27D83FF20;
  if (!qword_27D83FF20)
  {
    sub_22844C284(255, &qword_27D83FF28, &type metadata for ContentKind, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF20);
  }

  return result;
}

uint64_t sub_2284D1C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2284D1C4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2284D1C9C()
{
  result = qword_27D83FF30;
  if (!qword_27D83FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF30);
  }

  return result;
}

void sub_2284D1CF0(uint64_t a1, void *a2)
{
  sub_228401A70(0, &qword_280DE9F90, MEMORY[0x277D11290], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_22855C37C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    v12 = MEMORY[0x277D11290];
    v13 = MEMORY[0x277D83D88];
    sub_2284D3398(a1, &qword_280DE9F90, MEMORY[0x277D11290], MEMORY[0x277D83D88], sub_228401A70);
    sub_22845A908(a2, v7);

    sub_2284D3398(v7, &qword_280DE9F90, v12, v13, sub_228401A70);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_22845ADB4(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }
}

void sub_2284D1F1C(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2 == -1)
  {
    v8 = sub_2283FB154(a3);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_228448780();
        v12 = v15;
      }

      sub_22845D520(*(*(v12 + 56) + 16 * v10), *(*(v12 + 56) + 16 * v10 + 8));
      sub_2284D2A38(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }

  else
  {
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    sub_22845B074(a1, a2 & 1, a3, v7);

    *v4 = v14;
  }
}

uint64_t sub_2284D203C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 1)
  {
    v6 = sub_2283F6D18(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2284488F8();
        v11 = v15;
      }

      result = sub_2284D2BD0(v6, v11);
      *v4 = v11;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_22845B1D0(a1, a2, a3, v14);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_2284D2138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2283FAB3C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_22845B6EC(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2284D3398(a1, &qword_27D83FC08, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_22846F4D0);
    sub_22845ABB8(a2, a3, v9);

    return sub_2284D3398(v9, &qword_27D83FC08, &qword_27D83F440, &protocol descriptor for CoalescingNotification, sub_22846F4D0);
  }

  return result;
}

uint64_t PinnedContentManagerProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_2284013C0(MEMORY[0x277D84F90]);
  *(v2 + 24) = 0;
  *(v2 + 32) = v3;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t PinnedContentManagerProvider.__deallocating_deinit()
{
  sub_2284D3284(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D22FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();

      sub_22855D20C();
      v10 = sub_22855E27C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2284D24AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();

      sub_22855D20C();
      sub_22855D20C();
      v9 = sub_22855E27C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 32 * v3);
        v13 = (v11 + 32 * v6);
        if (v3 != v6 || v12 >= v13 + 2)
        {
          v14 = v13[1];
          *v12 = *v13;
          v12[1] = v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2684(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_22855D1AC();
      sub_22855E22C();
      v10 = v9;
      sub_22855D20C();
      v11 = sub_22855E27C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v12 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v3);
      v15 = (v13 + 8 * v6);
      if (v3 != v6 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(sub_22855C37C() - 8) + 72);
      v18 = v17 * v3;
      v19 = v16 + v17 * v3;
      v20 = v17 * v6;
      v21 = v16 + v17 * v6 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2888(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();

      sub_22855D20C();
      v9 = sub_22855E27C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2A38(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22855D99C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (16 * v3 != 16 * v6 || (v3 = v6, v18 >= v19 + 1))
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2BD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();

      sub_22855D20C();
      v9 = sub_22855E27C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2284D2D80(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22855D99C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_2284D2F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();
      sub_22855BCDC();
      sub_22855D20C();

      result = sub_22855E27C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2284D30C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22855DABC() + 1) & ~v5;
    do
    {
      sub_22855E22C();

      sub_22855D20C();
      v11 = sub_22855E27C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2284D3284(uint64_t a1)
{
  sub_2284D32E0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284D32E0(uint64_t a1)
{
  if (!qword_280DED2A8)
  {
    sub_2283F9B94(255, qword_280DED6C0, &protocol descriptor for PinnedContentManaging);
    sub_2284034EC();
    v1 = sub_22855D12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DED2A8);
    }
  }
}

uint64_t sub_2284D3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t Profile.hkProfileIdentifier.getter()
{
  v1 = v0;
  sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v2 = [v0 encodedHKProfileIdentifier];
  v3 = sub_22855C09C();
  v5 = v4;

  v6 = sub_22855D78C();
  sub_22842B38C(v3, v5);
  if (v6)
  {
    return v6;
  }

  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000045, 0x80000002285717C0);
  v8 = [v1 encodedHKProfileIdentifier];
  v9 = sub_22855C09C();
  v11 = v10;

  v12 = sub_22855C07C();
  MEMORY[0x22AAB92A0](v12);

  sub_22842B38C(v9, v11);
  result = sub_22855DEDC();
  __break(1u);
  return result;
}

void Profile.hkProfileIdentifier.setter(NSObject *a1)
{
  v2 = a1;
  v24[3] = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v24];
  v4 = v24[0];
  if (v3)
  {
    v5 = sub_22855C09C();
    v7 = v6;

    v8 = sub_22855C08C();
    sub_22842B38C(v5, v7);
    [v1 setEncodedHKProfileIdentifier_];

    v9 = [v1 encodedHKProfileIdentifier];
    v10 = sub_22855C09C();
    v12 = v11;

    v13 = v12;
    v14 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        sub_22842B38C(v10, v13);
        if (v15 != v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_22842B38C(v10, v12);
      }
    }

    else
    {
      if (!v14)
      {
        sub_22842B38C(v10, v12);
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:

        return;
      }

      sub_22842B38C(v10, v12);
      if (v10 != v10 >> 32)
      {
        goto LABEL_17;
      }
    }

LABEL_12:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v17 = sub_22855CABC();
    __swift_project_value_buffer(v17, qword_280DEEC98);
    v18 = v2;
    v2 = sub_22855CA8C();
    v19 = sub_22855D69C();

    if (os_log_type_enabled(v2, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v18;
      *v21 = v18;
      v22 = v18;
      _os_log_impl(&dword_2283ED000, v2, v19, "Profile: received empty encodedHKProfileIdentifier for %@", v20, 0xCu);
      sub_22841DC98(v21);
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);
      v18 = v2;
      v2 = v22;
    }

    goto LABEL_17;
  }

  v23 = v4;
  sub_22855BF3C();

  swift_willThrow();
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000025, 0x8000000228571810);
  sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
  sub_22855DDDC();
  sub_22855DEDC();
  __break(1u);
}

void (*Profile.hkProfileIdentifier.modify(uint64_t *a1))(NSObject **a1, char a2)
{
  a1[1] = v1;
  *a1 = Profile.hkProfileIdentifier.getter();
  return sub_2284D39EC;
}

void sub_2284D39EC(NSObject **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    Profile.hkProfileIdentifier.setter(v3);
  }

  else
  {
    Profile.hkProfileIdentifier.setter(v2);
  }
}

id static Profile.findOrCreate(_:in:)(void *a1, uint64_t a2)
{
  v4 = sub_22855C1DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22840A70C(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560570;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22840A7C8();
  *(v8 + 32) = 0xD000000000000010;
  *(v8 + 40) = 0x800000022856DA90;
  result = [a1 identifier];
  if (result)
  {
    v10 = result;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    *(v8 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v8 + 104) = sub_22840A81C();
    *(v8 + 72) = v10;
    v11 = sub_22855D62C();
    v12 = sub_228549C84(a2, v11);

    v13 = [a1 identifier];
    sub_22855C1BC();

    v14 = sub_22855C19C();
    (*(v5 + 8))(v7, v4);
    [v12 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(a1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Profile.find(_:in:)(void *a1, void *a2)
{
  sub_22840A70C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560570;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_22840A7C8();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = 0x800000022856DA90;
  v5 = [a1 identifier];
  if (v5)
  {
    v6 = v5;
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    *(v4 + 96) = sub_2283EF310(0, &unk_280DED0C0, 0x277CCAD78);
    *(v4 + 104) = sub_22840A81C();
    *(v4 + 72) = v6;
    v7 = sub_22855D62C();
    v8 = sub_22843BE20(a2, v7, 1);

    return v8;
  }

  else
  {
    __break(1u);
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD00000000000001CLL, 0x800000022856DD10);
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

id Profile.__allocating_init(context:profileIdentifier:)(void *a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_22855D17C();
  v12 = [v10 entityForName:v11 inManagedObjectContext:a1];

  if (v12)
  {
    v13 = [objc_allocWithZone(v3) initWithEntity:v12 insertIntoManagedObjectContext:a1];
    v14 = [a2 identifier];
    sub_22855C1BC();

    v15 = sub_22855C19C();
    (*(v7 + 8))(v9, v6);
    [v13 setUniqueIdentifier_];

    Profile.hkProfileIdentifier.setter(a2);
    return v13;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t HealthAppForegroundWorkManager.urgentWorkTimeoutInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v4 = sub_22855CFAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HealthAppForegroundWorkManager.__allocating_init(workRunner:urgentWorkTimeoutInterval:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)(a1, a2);
  return v4;
}

uint64_t HealthAppForegroundWorkManager.init(workRunner:urgentWorkTimeoutInterval:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v20 = a2;
  v18 = sub_22855D81C();
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855D7BC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22855CFEC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState;
  sub_2283FA00C(0, &qword_280DE91B8, &type metadata for HealthAppForegroundWorkManager.State);
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v2 + v9) = v10;
  v17 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_queue;
  v11 = sub_2283FA06C();
  v16[1] = " profile identifier! ";
  v16[2] = v11;
  sub_22855CFDC();
  v21 = MEMORY[0x277D84F90];
  sub_2283FA190(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12 = MEMORY[0x277D85230];
  sub_2283FA468(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_2283FA284(&qword_280DED240, &qword_280DED250, v12);
  sub_22855DA9C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v18);
  *(v2 + v17) = sub_22855D84C();
  sub_2283FAB3C(v19, v2 + 16);
  v13 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v14 = sub_22855CFAC();
  (*(*(v14 - 8) + 32))(v3 + v13, v20, v14);
  return v3;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.start()()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_22855E34C();
    v9 = sub_2283F8938(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%{public}s] Starting", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v10 + 8);
  sub_2284D47E0(&v10[4], v11);

  os_unfair_lock_unlock(v10 + 8);
}

void sub_2284D4638(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_22855CFAC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v12 = 0;
LABEL_8:
    *a3 = v12;
    return;
  }

  *a1 = 1;
  if (*(a1 + 8))
  {
    v13 = *(a1 + 8);
  }

  else
  {
    v14 = v9;
    sub_2283F9B10(a2 + 16, v17);
    (*(v8 + 16))(v11, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v14);
    type metadata accessor for ForegroundTask(0);
    swift_allocObject();
    v13 = sub_2283F9BF0(v17, v11);
    *(a1 + 8) = v13;
  }

  v15 = *(v13 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);

  os_unfair_lock_lock((v15 + 64));
  sub_2283FBBE4((v15 + 16));
  if (!v3)
  {
    os_unfair_lock_unlock((v15 + 64));

    v12 = 1;
    goto LABEL_8;
  }

  os_unfair_lock_unlock((v15 + 64));
  __break(1u);
}

uint64_t sub_2284D47FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
    os_unfair_lock_lock(v3 + 8);
    sub_2284D725C(&v3[4], v12);
    os_unfair_lock_unlock(v3 + 8);
    if (LOBYTE(v12[0]) == 1)
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v4 = sub_22855CABC();
      __swift_project_value_buffer(v4, qword_280DEEC98);
      v5 = sub_22855CA8C();
      v6 = sub_22855D68C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v12[0] = v8;
        *v7 = 136446210;
        v9 = sub_22855E34C();
        v11 = sub_2283F8938(v9, v10, v12);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_2283ED000, v5, v6, "[%{public}s] Start was forcefully triggered since it was unexpectedly not yet started.", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x22AABAD40](v8, -1, -1);
        MEMORY[0x22AABAD40](v7, -1, -1);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.endForeground()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2284D4A18(&v1[4]);

  os_unfair_lock_unlock(v1 + 8);
}

void sub_2284D4A18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);

    os_unfair_lock_lock(v4 + 16);
    sub_2284D71D8(&v4[4]);
    if (v1)
    {
      os_unfair_lock_unlock(v4 + 16);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v4 + 16);

      *(a1 + 8) = 0;
    }
  }
}

uint64_t HealthAppForegroundWorkManager.foregroundWithLegacyGeneration(completion:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock(v1 + 8);
  sub_2284D6E44(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

void sub_2284D4B0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_22855CFAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v15 = *(a1 + 8);
  }

  else
  {
    sub_2283F9B10(a2 + 16, v19);
    (*(v12 + 16))(v14, a2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval, v11);
    type metadata accessor for ForegroundTask(0);
    swift_allocObject();
    v15 = sub_2283F9BF0(v19, v14);
    *(a1 + 8) = v15;
  }

  v16 = sub_2284D4CC0(a3, a4);
  if (*a1 != 1)
  {
    goto LABEL_7;
  }

  v17 = *(v15 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v17 + 64));
  sub_2283FBBAC((v17 + 16));
  if (!v5)
  {
    os_unfair_lock_unlock((v17 + 64));
LABEL_7:

    *a5 = v16;
    return;
  }

  os_unfair_lock_unlock((v17 + 64));
  __break(1u);
}

id sub_2284D4CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_22855C1DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C1CC();
  v9 = sub_22855C17C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v12 = sub_2283FAD3C(6, v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_2283FA468(0, &qword_280DE8EE8, sub_22847F574, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = sub_22855D17C();
  v20 = MEMORY[0x22AAB9260](v12, v14, v16, v18);
  v22 = v21;

  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v20;
  *(inited + 48) = v22;
  sub_22847D860(inited);
  swift_setDeallocating();
  sub_2284D7110(inited + 32);
  v23 = objc_allocWithZone(MEMORY[0x277CCAC48]);
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2283FA190(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey, &unk_228560274);
  v24 = sub_22855D0DC();

  v25 = [v23 initWithParent:0 userInfo:v24];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v26 = sub_22855CABC();
  __swift_project_value_buffer(v26, qword_280DEEC98);

  v27 = v25;
  v28 = sub_22855CA8C();
  v29 = sub_22855D6AC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 136446466;
    v41 = 91;
    v42 = 0xE100000000000000;
    v43[0] = v31;
    v32 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v32);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v33 = sub_2283F8938(v41, v42, v43);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = sub_2284D5F74();
    v36 = sub_2283F8938(v34, v35, v43);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_2283ED000, v28, v29, "%{public}s Requesting legacy generation with created progress %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v31, -1, -1);
    MEMORY[0x22AABAD40](v30, -1, -1);
  }

  v37 = *(v3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  MEMORY[0x28223BE20](v38);
  *(&v40 - 4) = v3;
  *(&v40 - 3) = a1;
  *(&v40 - 2) = v40;
  *(&v40 - 1) = v27;
  os_unfair_lock_lock(v37 + 16);
  sub_2284D716C(&v37[4]);
  os_unfair_lock_unlock(v37 + 16);
  return v27;
}

Swift::Void __swiftcall HealthAppForegroundWorkManager.cancelLegacyGeneration()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_protectedState);
  os_unfair_lock_lock((v1 + 32));
  if (*(v1 + 24))
  {

    sub_2284D51D4();
  }

  os_unfair_lock_unlock((v1 + 32));
}

void sub_2284D51D4()
{
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEC98);

  v2 = sub_22855CA8C();
  v3 = sub_22855D6AC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136446210;
    v9 = v5;
    v6 = sub_22855E34C();
    MEMORY[0x22AAB92A0](v6);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v7 = sub_2283F8938(91, 0xE100000000000000, &v9);

    *(v4 + 4) = v7;
    _os_log_impl(&dword_2283ED000, v2, v3, "%{public}s Request to cancel legacy generation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x22AABAD40](v5, -1, -1);
    MEMORY[0x22AABAD40](v4, -1, -1);
  }

  v8 = *(v0 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
  os_unfair_lock_lock((v8 + 64));
  sub_2284D70AC((v8 + 16));

  os_unfair_lock_unlock((v8 + 64));
}

uint64_t HealthAppForegroundWorkManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t HealthAppForegroundWorkManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC14HealthPlatform30HealthAppForegroundWorkManager_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D553C(uint64_t a1)
{
  v1 = sub_22855CFAC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DEEC98);

    v8 = sub_22855CA8C();
    v9 = sub_22855D68C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446466;
      v12 = sub_228403430();
      v14 = sub_2283F8938(v12, v13, &v18);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      (*(v2 + 16))(v4, v6 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval, v1);
      v15 = sub_22855D1BC();
      v17 = sub_2283F8938(v15, v16, &v18);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_2283ED000, v8, v9, "%{public}s Urgent work completion timed out: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v11, -1, -1);
      MEMORY[0x22AABAD40](v10, -1, -1);
    }

    sub_228402514();
  }

  return result;
}

void sub_2284D57B0(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DEEC98);

    v4 = sub_22855CA8C();
    v5 = sub_22855D6AC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446466;
      v8 = sub_228403430();
      v10 = sub_2283F8938(v8, v9, &v11);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1024;
      *(v6 + 14) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v4, v5, "%{public}s Legacy generation completed: %{BOOL}d", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AABAD40](v7, -1, -1);
      MEMORY[0x22AABAD40](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2284D595C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22855CFBC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22855CFEC();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v7 = sub_22855CABC();
  __swift_project_value_buffer(v7, qword_280DEEC98);

  v8 = sub_22855CA8C();
  v9 = sub_22855D6AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136446210;
    aBlock = 91;
    v38 = 0xE100000000000000;
    v12 = sub_22855E34C();
    v30 = a1;
    MEMORY[0x22AAB92A0](v12);

    MEMORY[0x22AAB92A0](32, 0xE100000000000000);
    MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
    MEMORY[0x22AAB92A0](93, 0xE100000000000000);
    v13 = sub_2283F8938(aBlock, v38, &v43);

    *(v10 + 4) = v13;
    a1 = v30;
    _os_log_impl(&dword_2283ED000, v8, v9, "%{public}s Cancelling", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AABAD40](v11, -1, -1);
    MEMORY[0x22AABAD40](v10, -1, -1);
  }

  v14 = MEMORY[0x277D84F90];
  if ((*(a1 + 3) & 1) == 0)
  {

    v15 = sub_22855CA8C();
    v16 = sub_22855D6AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = v18;
      *v17 = 136446210;
      aBlock = 91;
      v38 = 0xE100000000000000;
      v19 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v19);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v20 = sub_2283F8938(aBlock, v38, &v43);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_2283ED000, v15, v16, "%{public}s Cancelled, but fire once has not completed, calling all the completion with success false", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AABAD40](v18, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v21 = *(a1 + 8);
    v30 = *(a2 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v41 = sub_2284D71F4;
    v42 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_228401F54;
    v40 = &block_descriptor_63_0;
    v23 = _Block_copy(&aBlock);

    v24 = v31;
    sub_22855CFDC();
    v43 = v14;
    sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v25 = MEMORY[0x277D85198];
    sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2283FA284(&qword_280DED260, &qword_280DED270, v25);
    v26 = v33;
    v27 = v36;
    sub_22855DA9C();
    MEMORY[0x22AAB98B0](0, v24, v26, v23);
    _Block_release(v23);
    v28 = v26;
    v14 = MEMORY[0x277D84F90];
    (*(v35 + 8))(v28, v27);
    (*(v32 + 8))(v24, v34);
  }

  *(a1 + 8) = v14;
  result = sub_228406468(a1);
  *(a1 + 1) = 1;
  return result;
}

uint64_t sub_2284D5F74()
{
  v1 = [v0 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_2283FA190(&qword_280DE9310, type metadata accessor for ProgressUserInfoKey, &unk_228560274);
  v2 = sub_22855D0EC();

  v3 = sub_22855D17C();
  v4 = v3;
  if (*(v2 + 16) && (v5 = sub_22844C56C(v3), (v6 & 1) != 0))
  {
    sub_2283F6E48(*(v2 + 56) + 32 * v5, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
  }

  return 0x6E776F6E6B6E753CLL;
}

void sub_2284D60BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_228406468(a1);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);

  sub_228416CF8(v11, v10);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  v12 = *(a1 + 32);
  v13 = a5;

  *(a1 + 32) = a5;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v35[4] = sub_2284D718C;
  v35[5] = v16;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 1107296256;
  v35[2] = sub_228401F54;
  v35[3] = &block_descriptor_49;
  v17 = _Block_copy(v35);

  [v13 setCancellationHandler_];
  _Block_release(v17);
  if (*a1 == 1 && *(a1 + 2) == 1)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v18 = sub_22855CABC();
    __swift_project_value_buffer(v18, qword_280DEEC98);
    v19 = v13;

    v20 = sub_22855CA8C();
    v21 = sub_22855D6AC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v35[0] = v36;
      *v22 = 136446466;
      v23 = sub_228403430();
      v25 = sub_2283F8938(v23, v24, v35);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_2284D5F74();
      v28 = sub_2283F8938(v26, v27, v35);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_2283ED000, v20, v21, "%{public}s Ready, and urgent work already completed, starting legacy generation with progress %s", v22, 0x16u);
      v29 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v29, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }

    v30 = a2[5];
    v31 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v30);
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = *(v31 + 24);

    v34 = v33(sub_2284D728C, v32, v30, v31);

    *(a1 + 40) = v34;
  }
}

uint64_t sub_2284D6450(uint64_t a1, uint64_t a2)
{
  v2 = sub_22855CFBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855CFEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v32 = v7;
      v33 = v6;
      v34 = v3;
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v35 = v2;
      v14 = sub_22855CABC();
      __swift_project_value_buffer(v14, qword_280DEEC98);

      v15 = v13;
      v16 = sub_22855CA8C();
      v17 = sub_22855D6AC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446466;
        v20 = sub_228403430();
        v22 = sub_2283F8938(v20, v21, aBlock);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2080;
        v23 = sub_2284D5F74();
        v25 = sub_2283F8938(v23, v24, aBlock);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_2283ED000, v16, v17, "%{public}s Progress %s cancellation handler called", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v19, -1, -1);
        MEMORY[0x22AABAD40](v18, -1, -1);
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v11;
      *(v26 + 24) = v15;
      aBlock[4] = sub_2284D7194;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_228401F54;
      aBlock[3] = &block_descriptor_57;
      v27 = _Block_copy(aBlock);

      v28 = v15;
      sub_22855CFDC();
      v36 = MEMORY[0x277D84F90];
      sub_2283FA190(&qword_280DED2D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v29 = MEMORY[0x277D85198];
      sub_2283FA468(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2283FA284(&qword_280DED260, &qword_280DED270, v29);
      v30 = v35;
      sub_22855DA9C();
      MEMORY[0x22AAB98B0](0, v9, v5, v27);
      _Block_release(v27);

      (*(v34 + 8))(v5, v30);
      (*(v32 + 8))(v9, v33);
    }
  }

  return result;
}

void sub_2284D6918(uint64_t a1)
{
  v3 = sub_22855D04C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  LOBYTE(v7) = sub_22855D07C();
  v9 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_protectedState);
    MEMORY[0x28223BE20](v9);
    *&v11[-16] = a1;
    *&v11[-8] = v1;
    os_unfair_lock_lock((v10 + 64));
    sub_2284D71BC((v10 + 16));
    os_unfair_lock_unlock((v10 + 64));
  }

  else
  {
    __break(1u);
  }
}

void sub_2284D6A88(void *a1, void *a2, uint64_t *a3)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v24 = v4;
    sub_228406468(a1);
  }

  else
  {
    v7 = qword_280DEEC90;
    v8 = v4;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = v8;

    v11 = a2;
    v12 = sub_22855CA8C();
    v13 = sub_22855D6AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v14 = 136446722;
      v15 = sub_22855E34C();
      MEMORY[0x22AAB92A0](v15);

      MEMORY[0x22AAB92A0](32, 0xE100000000000000);
      MEMORY[0x22AAB92A0](*(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier), *(a3 + OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_identifier + 8));
      MEMORY[0x22AAB92A0](93, 0xE100000000000000);
      v16 = sub_2283F8938(91, 0xE100000000000000, &v27);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      v17 = sub_2284D5F74();
      v19 = sub_2283F8938(v17, v18, &v27);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2080;
      if (v4)
      {
        v20 = sub_2284D5F74();
        v22 = v21;
      }

      else
      {
        v22 = 0xE300000000000000;
        v20 = 7104878;
      }

      v25 = sub_2283F8938(v20, v22, &v27);

      *(v14 + 24) = v25;
      _os_log_impl(&dword_2283ED000, v12, v13, "%{public}s Legacy generation for progress %s cancelled, but already different current progress: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v26, -1, -1);
      MEMORY[0x22AABAD40](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2284D6D6C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC14HealthPlatformP33_5822D1995F2B4EBEEC835C675644E4E314ForegroundTask_urgentWorkTimeoutInterval;
  v2 = sub_22855CFAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2284D6E8C(uint64_t a1)
{
  result = sub_22855CFAC();
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

uint64_t sub_2284D6FB4(uint64_t a1)
{
  result = sub_22855CFAC();
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

uint64_t get_enum_tag_for_layout_string_SbIeghy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2284D7110(uint64_t a1)
{
  sub_22847F574(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static PluginData.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_2284D72FC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2284D7354(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22855C09C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2284D73BC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_22855C08C();
  }

  v4 = v3;
  [v2 setData_];
}

void sub_2284D7434(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 profiles];
  type metadata accessor for Profile();
  sub_2284D7530();
  v4 = sub_22855D51C();

  *a2 = v4;
}

void sub_2284D74A4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for Profile();
  sub_2284D7530();
  v3 = sub_22855D50C();
  [v2 setProfiles_];
}

unint64_t sub_2284D7530()
{
  result = qword_280DED540;
  if (!qword_280DED540)
  {
    type metadata accessor for Profile();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED540);
  }

  return result;
}

void sub_2284D7588()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277CCE3A8];
  v2 = sub_22855D17C();
  v3 = sub_22855D17C();
  v4 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF48 = v4;
}

void sub_2284D7660()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277CCE558];
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF50 = v3;
}

void sub_2284D771C()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF58 = v3;
}

void sub_2284D77EC()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF60 = v3;
}

void sub_2284D78C8()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF68 = v3;
}

void sub_2284D79A0()
{
  v0 = objc_opt_self();
  v1 = sub_22855D17C();
  v2 = sub_22855D17C();
  v3 = [v0 _sourceWithBundleIdentifier_name_productType_options_];

  qword_27D83FF70 = v3;
}

id sub_2284D7A78(void *a1, id *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = *a2;
  v4 = *a2;
  return v3;
}

BOOL static SourceProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !a2;
}

uint64_t SourceProfile.identifier.getter(uint64_t a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 0x636974736F6E6761;
  }

  v7 = [v4 identifier];
  sub_22855C1BC();

  v8 = sub_22855C17C();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_2284D7C78()
{
  if (*v0)
  {
    return 0x656C676E6973;
  }

  else
  {
    return 0x636974736F6E6761;
  }
}

uint64_t sub_2284D7CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636974736F6E6761 && a2 == 0xE800000000000000;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C676E6973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2284D7D88(uint64_t a1)
{
  v2 = sub_2284D80CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284D7DC4(uint64_t a1)
{
  v2 = sub_2284D80CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SourceProfile.encode(to:)(void *a1, void *a2)
{
  sub_2284D8064(0);
  v5 = v4;
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284D8A6C(0, &qword_27D83FF80, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D80CC();
  sub_22855E31C();
  if (a2)
  {
    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v13 = a2;
    sub_22855D0BC();
    v17 = 1;
    sub_2284D8AD0(&qword_27D83FF90, MEMORY[0x277CCB2D0]);
    sub_22855E0CC();
    (*(v15 + 8))(v7, v5);
  }

  else
  {
    v16 = 0;
    sub_22855E0DC();
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_2284D8064(uint64_t a1)
{
  if (!qword_27D83FF78)
  {
    sub_2283EF310(255, &qword_280DEE7B0, 0x277CCD7C8);
    v1 = sub_22855D0AC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FF78);
    }
  }
}

unint64_t sub_2284D80CC()
{
  result = qword_27D83FF88;
  if (!qword_27D83FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF88);
  }

  return result;
}

uint64_t SourceProfile.description.getter(void *a1)
{
  v2 = sub_22855C1DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x636974736F6E6761;
  }

  [a1 type];
  v6 = HKStringFromProfileType();
  v7 = sub_22855D1AC();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v10 = [a1 identifier];
  sub_22855C1BC();

  v11 = sub_22855C17C();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x22AAB92A0](v11, v13);

  return v15[0];
}

uint64_t SourceProfile.hash(into:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x22AABA2B0](0);
  }

  MEMORY[0x22AABA2B0](1);
  return sub_22855D9BC();
}

uint64_t SourceProfile.hashValue.getter(uint64_t a1)
{
  sub_22855E22C();
  if (a1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

BOOL sub_2284D8368(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      return sub_22855D9AC() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_2284D83D8()
{
  v1 = *v0;
  sub_22855E22C();
  if (v1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

uint64_t sub_2284D843C(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x22AABA2B0](0);
  }

  MEMORY[0x22AABA2B0](1);
  return sub_22855D9BC();
}

uint64_t sub_2284D8494(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  return sub_22855E27C();
}

uint64_t sub_2284D84F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2284D8628(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t SourceProfile.debugDescription.getter(void *a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  sub_22855DC6C();

  sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
  v2 = a1;
  v3 = sub_22855D1CC();
  MEMORY[0x22AAB92A0](v3);

  MEMORY[0x22AAB92A0](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_2284D8628(void *a1)
{
  sub_2284D8064(0);
  v4 = v3;
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284D8A6C(0, &qword_27D83FFB0, MEMORY[0x277D844C8]);
  v8 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2284D80CC();
  sub_22855E30C();
  if (v1)
  {
    goto LABEL_6;
  }

  v20 = v4;
  v12 = v22;
  v13 = v8;
  v14 = sub_22855E04C();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = *(v14 + v15 + 31);

    if (v16)
    {
      v23 = 1;
      sub_2284D8AD0(&qword_27D83FFB8, MEMORY[0x277CCB2E0]);
      v17 = v20;
      sub_22855E03C();
      v11 = sub_22855D08C();
      (*(v21 + 8))(v6, v17);
      (*(v12 + 8))(v10, v13);
    }

    else
    {
      (*(v12 + 8))(v10, v8);
      v11 = 0;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_2284D88F0()
{
  result = qword_280DEC168;
  if (!qword_280DEC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEC168);
  }

  return result;
}

unint64_t sub_2284D8968()
{
  result = qword_27D83FF98;
  if (!qword_27D83FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FF98);
  }

  return result;
}

unint64_t sub_2284D89C0()
{
  result = qword_27D83FFA0;
  if (!qword_27D83FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FFA0);
  }

  return result;
}

unint64_t sub_2284D8A18()
{
  result = qword_27D83FFA8;
  if (!qword_27D83FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FFA8);
  }

  return result;
}

void sub_2284D8A6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2284D80CC();
    v7 = a3(a1, &type metadata for SourceProfile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2284D8AD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2284D8064(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2284D8B14(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t Publisher<>.addSummaries(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a1;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  v13 = v12;
  v26 = v12;
  v25 = sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v11, MEMORY[0x277CBCD90]);
  v28 = v13;
  v29 = a4;
  v30 = v25;
  v31 = a5;
  v14 = a5;
  v15 = sub_22855CBEC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  (*(v8 + 16))(v10, v5, a4);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = v14;
  (*(v8 + 32))(v21 + v19, v10, a4);
  *(v21 + v20) = v27;

  sub_22855CCBC();
  sub_2284D8E24(0);
  sub_22855CF2C();

  swift_getWitnessTable();
  v22 = sub_22855CE6C();
  (*(v16 + 8))(v18, v15);
  return v22;
}

void sub_2284D8E24(uint64_t a1)
{
  if (!qword_280DE95B0)
  {
    sub_2283EF310(255, &qword_280DE9490, 0x277CCD928);
    v1 = sub_22855D47C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE95B0);
    }
  }
}

uint64_t sub_2284D8E8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2284DF92C(*(v2 + ((*(*(*(v2 + 16) - 8) + 64) + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), *a1);
  *a2 = result;
  return result;
}

uint64_t Publisher<>.addModels(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a1;
  v28 = a3;
  v25 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = MEMORY[0x277CBCD88];
  sub_2284DFA60(255, &qword_280DE98D8, MEMORY[0x277CBCD88]);
  v13 = v12;
  v27 = v12;
  v26 = sub_2284DFB08(&qword_280DE98E0, &qword_280DE98D8, v11, MEMORY[0x277CBCD90]);
  v29 = v13;
  v30 = a4;
  v31 = v26;
  v32 = a5;
  v23[1] = a5;
  v14 = sub_22855CBEC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v23 - v16;
  (*(v9 + 16))(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v20 = v25;
  *(v19 + 4) = v24;
  *(v19 + 5) = v20;
  *(v19 + 6) = v28;
  (*(v9 + 32))(&v19[v18], v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);

  sub_22855CCBC();
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  sub_22855CF2C();

  swift_getWitnessTable();
  v21 = sub_22855CE6C();
  (*(v15 + 8))(v17, v14);
  return v21;
}

void sub_2284D9214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2284D9278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v46 = a7;
  v47 = a3;
  sub_2284DFA60(0, &qword_280DE9868, MEMORY[0x277CBCE68]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v35 - v13;
  sub_2284DAF10(0);
  v15 = v14;
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v43 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PluginSharableModel(0) - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a1;
  v22 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v23 = *(a2 + 16);
  if (v23)
  {
    v36 = v21;
    v37 = v15;
    v39 = v12;
    v40 = v11;
    v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v25 = *(v18 + 72);
    sub_2283EF310(0, &qword_280DE9490, 0x277CCD928);
    sub_22848DB1C(a2 + v24, v20);

    v26 = HKSharedSummary.init(model:pluginIdentifier:)(v20, v47, a4);
    v38 = a2;
    for (i = a2 + v25 + v24; ; i += v25)
    {
      v29 = v26;
      MEMORY[0x22AAB9400]();
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22855D3EC();
      }

      sub_22855D43C();

      v22 = v49;
      if (!--v23)
      {
        break;
      }

      sub_22848DB1C(i, v20);

      v26 = HKSharedSummary.init(model:pluginIdentifier:)(v20, v47, a4);
    }

    v27 = v46;
    v21 = v36;
    v15 = v37;
  }

  else
  {
    v38 = a2;
    v27 = v46;
  }

  v30 = sub_2284DF92C(v22, v21);

  v48 = v30;
  *(swift_allocObject() + 16) = v38;
  v31 = MEMORY[0x277CBCD88];
  sub_2284DF75C(0, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v31, MEMORY[0x277CBCD90]);

  v32 = v43;
  sub_22855CE8C();

  sub_2284DF478(&qword_280DE9BC0, sub_2284DAF10, MEMORY[0x277CBCC08]);
  v33 = sub_22855CE6C();
  result = (*(v44 + 8))(v32, v15);
  *v27 = v33;
  return result;
}

uint64_t Publisher<>.getSummaries(pluginIdentifier:modelIdentifiers:modelObjectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v22 = a1;
  v11 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  v24 = v12;
  v25 = a5;
  v26 = sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v11, MEMORY[0x277CBCD90]);
  v27 = a6;
  v13 = sub_22855CBEC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = a3;
  v17[3] = v18;
  v17[4] = a2;
  v17[5] = a4;

  sub_22855CCBC();
  sub_2284D8E24(0);
  sub_22855CF2C();

  swift_getWitnessTable();
  v19 = sub_22855CE6C();
  (*(v14 + 8))(v16, v13);
  return v19;
}

uint64_t sub_2284D9A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v22 = a6;
  sub_2284DF694(0);
  v21 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = v15;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v17 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v17, MEMORY[0x277CBCEB0]);

  sub_22855CE2C();
  sub_2284DF478(&qword_280DE9718, sub_2284DF694, MEMORY[0x277CBCEB8]);
  v18 = v21;
  v19 = sub_22855CE6C();
  result = (*(v12 + 8))(v14, v18);
  *v22 = v19;
  return result;
}

uint64_t sub_2284D9CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  result = sub_22855CE0C();
  *a6 = result;
  return result;
}

uint64_t sub_2284D9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  if (a3)
  {
    v15 = *(a3 + 16);
    if (v15)
    {
      v21 = a5;
      v16 = sub_22840770C(v15, 0);
      v17 = sub_2284077A8(&v23, v16 + 4, v15, a3);
      v18 = v23;
      v22 = v17;

      result = sub_228407958(v18);
      if (v22 != v15)
      {
        __break(1u);
        return result;
      }

      a5 = v21;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    v16 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a3;
  v20[6] = sub_2284AEB88;
  v20[7] = v14;
  v20[8] = a7;

  sub_2284305B8(a5, a6, v16, sub_2284DF8A4, v20);
}

uint64_t sub_2284D9F60(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v125 = a4;
  v126 = a3;
  v15 = sub_22855C1DC();
  v123 = *(v15 - 8);
  v124 = v15;
  MEMORY[0x28223BE20](v15);
  v122 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a1;
  if (a2)
  {
    v17 = sub_22855BF2C();
    v18 = [v17 hk_isObjectNotFoundError];

    if (v18)
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v19 = sub_22855CABC();
      __swift_project_value_buffer(v19, qword_280DEEBF0);

      v20 = v126;

      v21 = v20;
      v22 = sub_22855CA8C();
      v23 = sub_22855D6AC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v135[0] = v132;
        *v24 = 136315650;
        v25 = [*(v21 + 16) transactionUUID];
        v26 = v122;
        sub_22855C1BC();

        v27 = sub_22855C17C();
        v28 = a7;
        v30 = v29;
        (*(v123 + 8))(v26, v124);
        v31 = sub_2283F8938(v27, v30, v135);

        *(v24 + 4) = v31;
        *(v24 + 12) = 2080;
        v133 = v125;
        v134 = a5;
        sub_2284DF8DC();

        v32 = sub_22855D1BC();
        v34 = sub_2283F8938(v32, v33, v135);

        *(v24 + 14) = v34;
        a7 = v28;
        *(v24 + 22) = 2080;
        v133 = a6;
        sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

        v35 = sub_22855D1BC();
        v37 = sub_2283F8938(v35, v36, v135);

        *(v24 + 24) = v37;
        _os_log_impl(&dword_2283ED000, v22, v23, "[Transaction] No summaries were found for transaction %s with identifier %s and names %s", v24, 0x20u);
        v38 = v132;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v38, -1, -1);
        MEMORY[0x22AABAD40](v24, -1, -1);
      }

      v39 = MEMORY[0x277D84F90];
      v40 = 0;
    }

    else
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v43 = sub_22855CABC();
      __swift_project_value_buffer(v43, qword_280DEEBF0);

      v44 = v126;

      v45 = v127;
      sub_2284A6588(v127, 1);
      v46 = v44;
      v47 = sub_22855CA8C();
      v48 = sub_22855D68C();

      sub_2284A6534(v45, 1);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        LODWORD(v131) = v48;
        v50 = v49;
        v132 = swift_slowAlloc();
        v135[0] = v132;
        *v50 = 136315906;
        v51 = [*(v46 + 16) transactionUUID];
        v52 = v122;
        sub_22855C1BC();

        v53 = sub_22855C17C();
        v54 = a7;
        v56 = v55;
        (*(v123 + 8))(v52, v124);
        v57 = sub_2283F8938(v53, v56, v135);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        v133 = v125;
        v134 = a5;
        sub_2284DF8DC();

        v58 = sub_22855D1BC();
        v60 = sub_2283F8938(v58, v59, v135);

        *(v50 + 14) = v60;
        a7 = v54;
        *(v50 + 22) = 2080;
        v133 = a6;
        sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

        v61 = sub_22855D1BC();
        v63 = sub_2283F8938(v61, v62, v135);

        *(v50 + 24) = v63;
        *(v50 + 32) = 2082;
        v133 = v45;
        v64 = v45;
        sub_228418D44();
        v65 = sub_22855D1CC();
        v67 = sub_2283F8938(v65, v66, v135);

        *(v50 + 34) = v67;
        _os_log_impl(&dword_2283ED000, v47, v131, "[Transaction] Could not get summaries for transaction %s with identifier %s and names %s. %{public}s", v50, 0x2Au);
        v68 = v132;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v68, -1, -1);
        MEMORY[0x22AABAD40](v50, -1, -1);
      }

      v39 = v45;
      v40 = 1;
    }

    return (a7)(v39, v40);
  }

  v41 = a9;
  v42 = MEMORY[0x277D84F90];
  if (a9)
  {
    v132 = a9;
  }

  else if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_22855DB4C())
    {
      sub_22845FC94(MEMORY[0x277D84F90]);
      v132 = v117;
    }

    else
    {
      v132 = MEMORY[0x277D84FA0];
    }

    v41 = a9;
  }

  else
  {
    v132 = MEMORY[0x277D84FA0];
  }

  v121 = a5;
  v135[0] = v42;
  v70 = v127 & 0xFFFFFFFFFFFFFF8;
  if (v127 >> 62)
  {
    goto LABEL_65;
  }

  v71 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v120 = v41;

  v119 = a7;
  v118 = a8;
  if (v71)
  {
    a7 = 0;
    a8 = a6 + 56;
    v130 = v132 & 0xC000000000000001;
    v131 = v127 & 0xC000000000000001;
    v72 = v132 & 0xFFFFFFFFFFFFFF8;
    if (v132 < 0)
    {
      v72 = v132;
    }

    v128 = v72;
    v129 = (v127 + 32);
    while (1)
    {
      while (1)
      {
        if (v131)
        {
          v41 = MEMORY[0x22AAB9D20](a7, v127);
        }

        else
        {
          if (a7 >= *(v70 + 16))
          {
            goto LABEL_64;
          }

          v41 = *&v129[8 * a7];
        }

        v73 = v41;
        if (__OFADD__(a7++, 1))
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          v116 = v41;
          v71 = sub_22855DB4C();
          v41 = v116;
          goto LABEL_20;
        }

        if (a6)
        {
          break;
        }

        v86 = 1;
        if (v130)
        {
          goto LABEL_46;
        }

LABEL_41:
        if (!*(v132 + 16))
        {
          goto LABEL_42;
        }

LABEL_47:
        v87 = [v73 objectTypes];
        sub_2283EF310(0, &qword_280DEE7B8, 0x277CCD720);
        sub_22845D238();
        v88 = sub_22855D51C();

        sub_22850DF48(v132, v88);
        v90 = v89;

        if (v86 & 1) != 0 && (v90)
        {
          goto LABEL_49;
        }

LABEL_24:

        if (a7 == v71)
        {
          goto LABEL_52;
        }
      }

      v75 = v70;
      v76 = [v41 name];
      v77 = sub_22855D1AC();
      v79 = v78;

      if (*(a6 + 16) && (sub_22855E22C(), sub_22855D20C(), v80 = sub_22855E27C(), v81 = -1 << *(a6 + 32), v82 = v80 & ~v81, ((*(a8 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) != 0))
      {
        v83 = ~v81;
        while (1)
        {
          v84 = (*(a6 + 48) + 16 * v82);
          v85 = *v84 == v77 && v84[1] == v79;
          if (v85 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v82 = (v82 + 1) & v83;
          if (((*(a8 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v86 = 1;
      }

      else
      {
LABEL_39:
        v86 = 0;
      }

      v70 = v75;
      if (!v130)
      {
        goto LABEL_41;
      }

LABEL_46:
      if (sub_22855DB4C())
      {
        goto LABEL_47;
      }

LABEL_42:
      if ((v86 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_49:
      sub_22855DD1C();
      sub_22855DD5C();
      sub_22855DD6C();
      v41 = sub_22855DD2C();
      if (a7 == v71)
      {
LABEL_52:
        v91 = v135[0];
        a7 = v119;
        goto LABEL_54;
      }
    }
  }

  v91 = MEMORY[0x277D84F90];
LABEL_54:

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v92 = sub_22855CABC();
  __swift_project_value_buffer(v92, qword_280DEEBF0);

  v93 = v126;

  v94 = v93;
  v95 = sub_22855CA8C();
  v96 = sub_22855D6AC();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v135[0] = v98;
    *v97 = 134219010;
    if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
    {
      v99 = sub_22855DB4C();
    }

    else
    {
      v99 = *(v91 + 16);
    }

    *(v97 + 4) = v99;

    *(v97 + 12) = 2080;
    v100 = [*(v94 + 16) transactionUUID];
    v101 = v122;
    sub_22855C1BC();

    v102 = sub_22855C17C();
    v104 = v103;
    (*(v123 + 8))(v101, v124);
    v105 = sub_2283F8938(v102, v104, v135);

    *(v97 + 14) = v105;
    *(v97 + 22) = 2080;
    v133 = v125;
    v134 = v121;
    sub_2284DF8DC();

    v106 = sub_22855D1BC();
    v108 = sub_2283F8938(v106, v107, v135);

    *(v97 + 24) = v108;
    *(v97 + 32) = 2080;
    v133 = a6;
    v109 = MEMORY[0x277D83D88];
    sub_2284D9214(0, &qword_280DE9550, sub_22845D390, MEMORY[0x277D83D88]);

    v110 = sub_22855D1BC();
    v112 = sub_2283F8938(v110, v111, v135);

    *(v97 + 34) = v112;
    *(v97 + 42) = 2080;
    v133 = v120;
    sub_2284D9214(0, &qword_280DE9548, sub_22845D1C4, v109);

    v113 = sub_22855D1BC();
    v115 = sub_2283F8938(v113, v114, v135);

    *(v97 + 44) = v115;
    _os_log_impl(&dword_2283ED000, v95, v96, "[Transaction] Retrieved %ld summaries for transaction %s with identifier %s and filters %s %s", v97, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v98, -1, -1);
    MEMORY[0x22AABAD40](v97, -1, -1);

    v119(v91, 0);
  }

  else
  {

    (a7)(v91, 0);
  }
}

uint64_t Publisher<>.getModels(pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2284DAF10(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Publisher<>.getSummaries(pluginIdentifier:modelIdentifiers:modelObjectTypes:)(a1, a2, 0, 0, a3, a4);
  v13 = MEMORY[0x277CBCD88];
  sub_2284DF75C(0, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
  sub_2284D9214(0, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
  v14 = MEMORY[0x277CBCD90];
  sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v13, MEMORY[0x277CBCD90]);
  sub_22855CE8C();
  sub_2284DF478(&qword_280DE9BC0, sub_2284DAF10, MEMORY[0x277CBCC08]);
  v15 = sub_22855CE6C();

  (*(v10 + 8))(v12, v9);
  v20 = v15;
  v16 = MEMORY[0x277CBCD88];
  sub_2284DFA60(0, &qword_280DE98D8, MEMORY[0x277CBCD88]);
  sub_2284DFB08(&qword_280DE98E0, &qword_280DE98D8, v16, v14);
  v17 = sub_22855CE6C();

  return v17;
}

void sub_2284DAF10(uint64_t a1)
{
  if (!qword_280DE9BB8)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2284DF75C(255, &qword_280DE98C8, sub_2284D8E24, MEMORY[0x277CBCD88]);
    sub_2284D9214(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    sub_2284DF7D8(&qword_280DE98D0, &qword_280DE98C8, v1, MEMORY[0x277CBCD90]);
    v2 = sub_22855CB6C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9BB8);
    }
  }
}

uint64_t Publisher<>.reuse(summaries:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(255, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  v14[0] = v7;
  v14[1] = a2;
  v14[2] = sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v6, MEMORY[0x277CBCEB0]);
  v14[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  *(swift_allocObject() + 16) = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v12 = sub_22855CE6C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2284DB220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  result = sub_22855CE0C();
  *a3 = result;
  return result;
}

uint64_t sub_2284DB2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = sub_2284AEB88;
  v9[5] = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DF67C;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF67C;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], v16);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v16[0];
  if (v16[0])
  {
    v14 = v16[1];
    v16[0]();
    sub_228416CF8(v13, v14);
  }
}

void sub_2284DB48C(void *a1, unint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_22855C1DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v12;
    v15 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEBF0);
    v17 = a1;

    v18 = sub_22855CA8C();
    v19 = sub_22855D68C();

    if (os_log_type_enabled(v18, v19))
    {
      v48 = a5;
      v46 = a4;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v50 = v21;
      *v20 = 134218498;
      if (a2 >> 62)
      {
        v22 = sub_22855DB4C();
      }

      else
      {
        v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 4) = v22;

      *(v20 + 12) = 2080;
      v23 = [*(a3 + 16) transactionUUID];
      sub_22855C1BC();

      v24 = sub_22855C17C();
      v26 = v25;
      (*(v11 + 8))(v14, v47);
      v27 = sub_2283F8938(v24, v26, &v50);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2082;
      v49 = a1;
      v28 = a1;
      sub_228418D44();
      v29 = sub_22855D1CC();
      v31 = sub_2283F8938(v29, v30, &v50);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_2283ED000, v18, v19, "[Transaction] Could not reuse %ld summaries for transaction %s. %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v21, -1, -1);
      MEMORY[0x22AABAD40](v20, -1, -1);

      a4 = v46;
    }

    else
    {
    }

    v44 = a1;
    a4(a1, 1);
  }

  else
  {
    v32 = v12;
    v48 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v33 = sub_22855CABC();
    __swift_project_value_buffer(v33, qword_280DEEBF0);

    v34 = sub_22855CA8C();
    v35 = sub_22855D6AC();

    if (os_log_type_enabled(v34, v35))
    {
      v47 = v32;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 134218242;
      if (a2 >> 62)
      {
        v38 = sub_22855DB4C();
      }

      else
      {
        v38 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 4) = v38;

      *(v36 + 12) = 2080;
      v39 = [*(a3 + 16) transactionUUID];
      sub_22855C1BC();

      v40 = sub_22855C17C();
      v42 = v41;
      (*(v11 + 8))(v14, v47);
      v43 = sub_2283F8938(v40, v42, &v50);

      *(v36 + 14) = v43;
      _os_log_impl(&dword_2283ED000, v34, v35, "[Transaction] Reusing %ld summaries for transaction %s", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AABAD40](v37, -1, -1);
      MEMORY[0x22AABAD40](v36, -1, -1);
    }

    else
    {
    }

    a4(a3, 0);
  }
}

uint64_t Publisher<>.removeSummaries(_:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a5;
  v10 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v19[2] = v11;
  v19[3] = a4;
  v19[4] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v10, MEMORY[0x277CBCD90]);
  v19[5] = a5;
  v12 = sub_22855CBEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v17 = sub_22855CE6C();
  (*(v13 + 8))(v15, v12);
  return v17;
}

uint64_t sub_2284DBBB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v11, MEMORY[0x277CBCEB0]);
  v12 = sub_22855CE6C();

  *a5 = v12;
  return result;
}

uint64_t sub_2284DBD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = sub_2284AEB88;
  v13[4] = v12;
  v13[5] = a6;
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = sub_2284DF668;
  v14[7] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2284DF668;
  *(v15 + 24) = v13;
  v16 = *(a3 + 40);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  os_unfair_lock_lock(v16 + 16);
  sub_228435484(&v16[4], v20);
  os_unfair_lock_unlock(v16 + 16);
  v17 = v20[0];
  if (v20[0])
  {
    v18 = v20[1];
    v20[0]();
    sub_228416CF8(v17, v18);
  }
}

void sub_2284DBEB8(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v9 = sub_22855C1DC();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = sub_22855BF2C();
    if ([v13 hk_isObjectNotFoundError])
    {
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v14 = sub_22855CABC();
      __swift_project_value_buffer(v14, qword_280DEEBF0);

      v15 = sub_22855CA8C();
      v16 = sub_22855D6AC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58 = v55;
        *v17 = 136315138;
        v18 = [*(a2 + 16) transactionUUID];
        sub_22855C1BC();

        v19 = sub_22855C17C();
        v20 = v10;
        v21 = a3;
        v23 = v22;
        (*(v20 + 8))(v12, v9);
        v24 = sub_2283F8938(v19, v23, &v58);
        a3 = v21;

        *(v17 + 4) = v24;
        _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Some summaries were not found and could not be removed in transaction %s", v17, 0xCu);
        v25 = v55;
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x22AABAD40](v25, -1, -1);
        MEMORY[0x22AABAD40](v17, -1, -1);
      }

      a3(a2, 0);
    }

    else
    {
      v54 = a3;
      v55 = v9;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v37 = sub_22855CABC();
      __swift_project_value_buffer(v37, qword_280DEEBF0);

      v38 = v13;
      v39 = sub_22855CA8C();
      v40 = sub_22855D68C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v58 = v42;
        *v41 = 134349570;
        *(v41 + 4) = *(a5 + 16);

        *(v41 + 12) = 2080;
        v43 = [*(a2 + 16) transactionUUID];
        sub_22855C1BC();

        v44 = sub_22855C17C();
        v46 = v45;
        (*(v10 + 8))(v12, v55);
        v47 = sub_2283F8938(v44, v46, &v58);

        *(v41 + 14) = v47;
        *(v41 + 22) = 2082;
        v57 = v38;
        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
        v48 = v38;
        v49 = sub_22855D1CC();
        v51 = sub_2283F8938(v49, v50, &v58);

        *(v41 + 24) = v51;
        _os_log_impl(&dword_2283ED000, v39, v40, "[Transaction] Could not remove %{public}ld summaries from transaction %s. %{public}s", v41, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v42, -1, -1);
        MEMORY[0x22AABAD40](v41, -1, -1);
      }

      else
      {
      }

      v52 = v38;
      v54(v38, 1);
    }
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v26 = sub_22855CABC();
    __swift_project_value_buffer(v26, qword_280DEEBF0);

    v27 = sub_22855CA8C();
    v28 = sub_22855D6AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v9;
      v31 = v30;
      v58 = v30;
      *v29 = 134349314;
      *(v29 + 4) = *(a5 + 16);

      *(v29 + 12) = 2080;
      v32 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v33 = sub_22855C17C();
      v35 = v34;
      (*(v10 + 8))(v12, v55);
      v36 = sub_2283F8938(v33, v35, &v58);

      *(v29 + 14) = v36;
      _os_log_impl(&dword_2283ED000, v27, v28, "[Transaction] Removed %{public}ld existing summaries from transaction %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AABAD40](v31, -1, -1);
      MEMORY[0x22AABAD40](v29, -1, -1);
    }

    else
    {
    }

    a3(a2, 0);
  }
}

uint64_t Publisher<>.removeAllSummaries(pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v17[2] = v9;
  v17[3] = a3;
  v17[4] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v8, MEMORY[0x277CBCD90]);
  v17[5] = a4;
  v10 = sub_22855CBEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v15 = sub_22855CE6C();
  (*(v11 + 8))(v13, v10);
  return v15;
}

uint64_t sub_2284DC728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v9, MEMORY[0x277CBCEB0]);
  v10 = sub_22855CE6C();

  *a4 = v10;
  return result;
}

uint64_t sub_2284DC868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a3;
  v11[5] = sub_2284AEB88;
  v11[6] = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = sub_2284DF5EC;
  v12[6] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2284DF5EC;
  *(v13 + 24) = v11;
  v14 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v14 + 16);
  sub_228435484(&v14[4], v18);
  os_unfair_lock_unlock(v14 + 16);
  v15 = v18[0];
  if (v18[0])
  {
    v16 = v18[1];
    v18[0]();
    sub_228416CF8(v15, v16);
  }
}

void sub_2284DCA10(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void (*a5)(void, void), void *a6)
{
  v12 = sub_22855C1DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v60 = v13;
    v16 = sub_22855BF2C();
    if ([v16 hk_isObjectNotFoundError])
    {
      v59 = a2;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v17 = sub_22855CABC();
      __swift_project_value_buffer(v17, qword_280DEEBF0);

      v18 = sub_22855CA8C();
      v19 = sub_22855D6AC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v61 = a6;
        v21 = v20;
        v22 = swift_slowAlloc();
        v58 = a5;
        v23 = v22;
        v63 = v22;
        *v21 = 136446466;
        *(v21 + 4) = sub_2283F8938(v59, a3, &v63);
        *(v21 + 12) = 2080;
        v24 = [*(a4 + 16) transactionUUID];
        sub_22855C1BC();

        v25 = sub_22855C17C();
        v27 = v26;
        (*(v60 + 8))(v15, v12);
        v28 = sub_2283F8938(v25, v27, &v63);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_2283ED000, v18, v19, "[Transaction] No summaries to remove for package %{public}s in transaction %s", v21, 0x16u);
        swift_arrayDestroy();
        v29 = v23;
        a5 = v58;
        MEMORY[0x22AABAD40](v29, -1, -1);
        MEMORY[0x22AABAD40](v21, -1, -1);
      }

      a5(a4, 0);
    }

    else
    {
      v61 = a6;
      if (qword_280DEEBE8 != -1)
      {
        swift_once();
      }

      v41 = sub_22855CABC();
      __swift_project_value_buffer(v41, qword_280DEEBF0);

      v42 = v16;
      v43 = sub_22855CA8C();
      v44 = sub_22855D68C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = a2;
        v46 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v63 = v59;
        *v46 = 136446722;
        *(v46 + 4) = sub_2283F8938(v45, a3, &v63);
        *(v46 + 12) = 2080;
        v47 = [*(a4 + 16) transactionUUID];
        sub_22855C1BC();

        v48 = sub_22855C17C();
        v50 = v49;
        (*(v60 + 8))(v15, v12);
        v51 = sub_2283F8938(v48, v50, &v63);

        *(v46 + 14) = v51;
        *(v46 + 22) = 2082;
        v62 = v42;
        sub_2283EF310(0, &qword_280DED0B0, 0x277CCA9B8);
        v52 = v42;
        v53 = sub_22855D1CC();
        v55 = sub_2283F8938(v53, v54, &v63);

        *(v46 + 24) = v55;
        _os_log_impl(&dword_2283ED000, v43, v44, "[Transaction] Could not remove all summaries in %{public}s for transaction %s. %{public}s", v46, 0x20u);
        v56 = v59;
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v56, -1, -1);
        MEMORY[0x22AABAD40](v46, -1, -1);
      }

      v57 = v42;
      a5(v42, 1);
    }
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEBF0);

    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v33 = 136315138;
      v34 = [*(a4 + 16) transactionUUID];
      sub_22855C1BC();

      v35 = sub_22855C17C();
      v36 = a5;
      v38 = v37;
      (*(v13 + 8))(v15, v12);
      v39 = sub_2283F8938(v35, v38, &v63);
      a5 = v36;

      *(v33 + 4) = v39;
      _os_log_impl(&dword_2283ED000, v31, v32, "[Transaction] Removed all summaries from transaction %s", v33, 0xCu);
      v40 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x22AABAD40](v40, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    a5(a4, 0);
  }
}

uint64_t Publisher<>.addMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v14[0] = v7;
  v14[1] = a2;
  v14[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v6, MEMORY[0x277CBCD90]);
  v14[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  *(swift_allocObject() + 16) = a1;

  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v12 = sub_22855CE6C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2284DD2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v7, MEMORY[0x277CBCEB0]);
  v8 = sub_22855CE6C();

  *a3 = v8;
  return result;
}

uint64_t sub_2284DD3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_2284AEB88;
  v9[4] = v8;
  v9[5] = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DF584;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF584;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], v16);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v16[0];
  if (v16[0])
  {
    v14 = v16[1];
    v16[0]();
    sub_228416CF8(v13, v14);
  }
}

void sub_2284DD57C(void *a1, id *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v8 = sub_22855C1DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBF0);
    v14 = a1;

    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47 = a4;
      v19 = v18;
      v50 = v18;
      *v17 = 136315394;
      v20 = [a2[2] transactionUUID];
      sub_22855C1BC();

      v21 = sub_22855C17C();
      v23 = v22;
      (*(v9 + 8))(v11, v8);
      v24 = sub_2283F8938(v21, v23, &v50);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2082;
      v49 = a1;
      v25 = a1;
      sub_228418D44();
      v26 = sub_22855D1CC();
      v28 = sub_2283F8938(v26, v27, &v50);

      *(v17 + 14) = v28;
      _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Could not add metadata to transaction %s. %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v19, -1, -1);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v29 = a1;
    v48(a1, 1);
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v30 = sub_22855CABC();
    __swift_project_value_buffer(v30, qword_280DEEBF0);

    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = v8;
      v34 = v33;
      v35 = swift_slowAlloc();
      v47 = a4;
      v36 = v35;
      v50 = v35;
      *v34 = 136315395;
      v37 = [a2[2] transactionUUID];
      sub_22855C1BC();

      v38 = sub_22855C17C();
      v40 = v39;
      (*(v9 + 8))(v11, v46);
      v41 = sub_2283F8938(v38, v40, &v50);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2081;
      v42 = sub_22855D0FC();
      v44 = sub_2283F8938(v42, v43, &v50);

      *(v34 + 14) = v44;
      _os_log_impl(&dword_2283ED000, v31, v32, "[Transaction] Transaction %s metadata successfully added: %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v36, -1, -1);
      MEMORY[0x22AABAD40](v34, -1, -1);
    }

    v48(a2, 0);
  }
}

uint64_t Publisher<>.commit(asUrgent:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v14[0] = v7;
  v14[1] = a2;
  v14[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v6, MEMORY[0x277CBCD90]);
  v14[3] = a3;
  v8 = sub_22855CBEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  *(swift_allocObject() + 16) = a1;
  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();

  swift_getWitnessTable();
  v12 = sub_22855CE6C();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_2284DDC44@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a2;
  v7 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v7, MEMORY[0x277CBCEB0]);
  v8 = sub_22855CE6C();

  *a3 = v8;
  return result;
}

uint64_t sub_2284DDD74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = sub_2284AEB88;
  *(v9 + 32) = v8;
  *(v9 + 40) = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  *(v10 + 32) = sub_2284DF568;
  *(v10 + 40) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DF568;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], v16);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v16[0];
  if (v16[0])
  {
    v14 = v16[1];
    v16[0]();
    sub_228416CF8(v13, v14);
  }
}

uint64_t sub_2284DDF04(void *a1, char a2, int a3, uint64_t (*a4)(void, void), uint64_t a5, id *a6)
{
  v53 = a3;
  v11 = sub_22855C1DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v52 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    __swift_project_value_buffer(v15, qword_280DEEBF0);
    sub_228476E38(a1);

    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();

    sub_228476E44(a1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v51 = a4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136315650;
      v21 = [a6[2] transactionUUID];
      sub_22855C1BC();

      v22 = sub_22855C17C();
      v24 = v23;
      (*(v12 + 8))(v14, v11);
      v25 = sub_2283F8938(v22, v24, &v55);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2082;
      if (v53)
      {
        v26 = 0x6E65677275207361;
      }

      else
      {
        v26 = 0;
      }

      if (v53)
      {
        v27 = 0xE900000000000074;
      }

      else
      {
        v27 = 0xE000000000000000;
      }

      v28 = sub_2283F8938(v26, v27, &v55);

      *(v19 + 14) = v28;
      *(v19 + 22) = 2082;
      v54 = a1;
      v29 = a1;
      sub_228418D44();
      v30 = sub_22855D1CC();
      v32 = sub_2283F8938(v30, v31, &v55);

      *(v19 + 24) = v32;
      _os_log_impl(&dword_2283ED000, v16, v17, "[Transaction] Could not commit transaction %s %{public}s. %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v20, -1, -1);
      v33 = v19;
      a4 = v51;
      MEMORY[0x22AABAD40](v33, -1, -1);
    }

    v34 = a1;
    v35 = 1;
  }

  else
  {
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v36 = sub_22855CABC();
    __swift_project_value_buffer(v36, qword_280DEEBF0);
    v37 = a1;
    v38 = sub_22855CA8C();
    v39 = sub_22855D6AC();
    sub_228476E44(a1);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v37;
      v55 = v41;
      *v40 = 136446466;
      sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
      v42 = v37;
      v43 = sub_22855D1CC();
      v45 = sub_2283F8938(v43, v44, &v55);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      if (v53)
      {
        v46 = 0x6E65677275207361;
      }

      else
      {
        v46 = 0;
      }

      if (v53)
      {
        v47 = 0xE900000000000074;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v48 = sub_2283F8938(v46, v47, &v55);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_2283ED000, v38, v39, "[Transaction] Transaction %{public}s successfully committed %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v40, -1, -1);
    }

    v34 = a6;
    v35 = 0;
  }

  return a4(v34, v35);
}

uint64_t Publisher<>.discard()(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CBCD88];
  sub_2284DF75C(255, &qword_280DE9928, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCD88]);
  v12[0] = v5;
  v12[1] = a1;
  v12[2] = sub_2284DF4C8(&qword_280DE9930, &qword_280DE9928, v4, MEMORY[0x277CBCD90]);
  v12[3] = a2;
  v6 = sub_22855CBEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  sub_22855CCBC();
  type metadata accessor for CachingSharedSummaryTransactionBuilder();
  sub_22855CF2C();
  swift_getWitnessTable();
  v10 = sub_22855CE6C();
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_2284DE5A0@<X0>(uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE97C8, type metadata accessor for CachingSharedSummaryTransactionBuilder, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF4C8(&qword_280DE97D0, &qword_280DE97C8, v3, MEMORY[0x277CBCEB0]);
  v4 = sub_22855CE6C();

  *a2 = v4;
  return result;
}

uint64_t sub_2284DE6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = sub_2284AE8FC;
  v7[4] = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = sub_2284DF550;
  v8[4] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2284DF550;
  *(v9 + 24) = v7;
  v10 = *(a3 + 40);
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v10 + 16);
  sub_228434624(&v10[4], v14);
  os_unfair_lock_unlock(v10 + 16);
  v11 = v14[0];
  if (v14[0])
  {
    v12 = v14[1];
    v14[0]();
    sub_228416CF8(v11, v12);
  }
}

void sub_2284DE82C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_22855C1DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBF0);
    v14 = a1;

    v15 = sub_22855CA8C();
    v16 = sub_22855D68C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v43 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v44 = a4;
      v20 = v19;
      v46 = v19;
      *v18 = 136315394;
      v21 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v22 = sub_22855C17C();
      v24 = v23;
      (*(v9 + 8))(v11, v8);
      v25 = sub_2283F8938(v22, v24, &v46);

      *(v18 + 4) = v25;
      *(v18 + 12) = 2082;
      v45 = a1;
      v26 = a1;
      sub_228418D44();
      v27 = sub_22855D1CC();
      v29 = sub_2283F8938(v27, v28, &v46);

      *(v18 + 14) = v29;
      _os_log_impl(&dword_2283ED000, v15, v16, "[Transaction] Could not discard failed transaction %s. %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v20, -1, -1);
      v30 = v18;
      a3 = v43;
      MEMORY[0x22AABAD40](v30, -1, -1);
    }

    v31 = a1;
    (a3)(a1, 1);
  }

  else
  {
    v44 = a4;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v32 = sub_22855CABC();
    __swift_project_value_buffer(v32, qword_280DEEBF0);

    v33 = sub_22855CA8C();
    v34 = sub_22855D6AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v35 = 136315138;
      v36 = [*(a2 + 16) transactionUUID];
      sub_22855C1BC();

      v37 = sub_22855C17C();
      v38 = a3;
      v40 = v39;
      (*(v9 + 8))(v11, v8);
      v41 = sub_2283F8938(v37, v40, &v46);
      a3 = v38;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2283ED000, v33, v34, "[Transaction] Transaction %s successfully discarded", v35, 0xCu);
      v42 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AABAD40](v42, -1, -1);
      MEMORY[0x22AABAD40](v35, -1, -1);
    }

    (a3)(a2, 0);
  }
}

uint64_t sub_2284DEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a3;
  v9[4] = sub_2284AEB88;
  v9[5] = v8;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = sub_2284DFB60;
  v10[5] = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2284DFB60;
  *(v11 + 24) = v9;
  v12 = *(a3 + 40);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();

  os_unfair_lock_lock(v12 + 16);
  sub_228435484(&v12[4], v16);
  os_unfair_lock_unlock(v12 + 16);
  v13 = v16[0];
  if (v16[0])
  {
    v14 = v16[1];
    v16[0]();
    sub_228416CF8(v13, v14);
  }
}

void sub_2284DEE38(void *a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = sub_22855C1DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v59 = a5;
    if (qword_280DEEBE8 != -1)
    {
      swift_once();
    }

    v31 = sub_22855CABC();
    __swift_project_value_buffer(v31, qword_280DEEBF0);

    v32 = sub_22855CA8C();
    v33 = sub_22855D66C();

    if (!os_log_type_enabled(v32, v33))
    {

LABEL_25:
      a4(a2, 0);
      return;
    }

    v58 = v11;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v61 = v35;
    *v34 = 134218499;
    if (a2 >> 62)
    {
      v36 = sub_22855DB4C();
    }

    else
    {
      v36 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v34 + 4) = v36;

    *(v34 + 12) = 2081;
    if (a2 >> 62)
    {
      v45 = sub_22855DB4C();
      v56 = v35;
      if (v45)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v35;
      if (v37)
      {
LABEL_15:
        v57 = a4;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x22AAB9D20](0, a2);
        }

        else
        {
          if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v38 = *(a2 + 32);
        }

        v39 = v38;
        v40 = [v38 package];

        v41 = sub_22855D1AC();
        v43 = v42;

        a4 = v57;
        goto LABEL_24;
      }
    }

    v41 = 0;
    v43 = 0;
LABEL_24:
    v60[0] = v41;
    v60[1] = v43;
    sub_2284DF8DC();
    v46 = sub_22855D1BC();
    v48 = sub_2283F8938(v46, v47, &v61);

    *(v34 + 14) = v48;
    *(v34 + 22) = 2080;
    v49 = [*(a3 + 16) transactionUUID];
    sub_22855C1BC();

    sub_2284DF478(&qword_280DECD70, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v50 = sub_22855E11C();
    v52 = v51;
    (*(v58 + 8))(v13, v10);
    v53 = sub_2283F8938(v50, v52, &v61);

    *(v34 + 24) = v53;
    _os_log_impl(&dword_2283ED000, v32, v33, "[Transaction] %ld sharable model(s) from %{private}s added to transaction %s", v34, 0x20u);
    v54 = v56;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v54, -1, -1);
    MEMORY[0x22AABAD40](v34, -1, -1);

    goto LABEL_25;
  }

  v58 = v11;
  v14 = a1;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v15 = sub_22855CABC();
  __swift_project_value_buffer(v15, qword_280DEEBF0);
  v16 = a1;

  v17 = sub_22855CA8C();
  v18 = sub_22855D68C();

  if (os_log_type_enabled(v17, v18))
  {
    v59 = a5;
    v57 = a4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60[0] = v20;
    *v19 = 134349570;
    if (a2 >> 62)
    {
      v21 = sub_22855DB4C();
    }

    else
    {
      v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v21;

    *(v19 + 12) = 2080;
    v22 = [*(a3 + 16) transactionUUID];
    sub_22855C1BC();

    v23 = sub_22855C17C();
    v25 = v24;
    (*(v58 + 8))(v13, v10);
    v26 = sub_2283F8938(v23, v25, v60);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2082;
    v61 = a1;
    v27 = a1;
    sub_228418D44();
    v28 = sub_22855D1CC();
    v30 = sub_2283F8938(v28, v29, v60);

    *(v19 + 24) = v30;
    _os_log_impl(&dword_2283ED000, v17, v18, "[Transaction] Could not add %{public}ld summaries to transaction %s. %{public}s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v19, -1, -1);

    a4 = v57;
  }

  else
  {
  }

  v44 = a1;
  a4(a1, 1);
}

uint64_t sub_2284DF478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2284DF4C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284DF75C(255, a2, type metadata accessor for CachingSharedSummaryTransactionBuilder, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_26Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

void sub_2284DF694(uint64_t a1)
{
  if (!qword_280DE9710)
  {
    v1 = MEMORY[0x277CBCEA8];
    sub_2284DF75C(255, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
    sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v1, MEMORY[0x277CBCEB0]);
    v2 = sub_22855CE3C();
    if (!v3)
    {
      atomic_store(v2, &qword_280DE9710);
    }
  }
}

void sub_2284DF75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_228418D44();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284DF7D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284DF75C(255, a2, sub_2284D8E24, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_120Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_2284DF8DC()
{
  if (!qword_280DEE7D0)
  {
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEE7D0);
    }
  }
}

uint64_t sub_2284DF92C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = MEMORY[0x277CBCEA8];
  sub_2284DF75C(0, &qword_280DE9798, sub_2284D8E24, MEMORY[0x277CBCEA8]);
  swift_allocObject();

  sub_22855CE0C();
  sub_2284DF7D8(&qword_280DE97A0, &qword_280DE9798, v5, MEMORY[0x277CBCEB0]);
  v6 = sub_22855CE6C();

  return v6;
}

void sub_2284DFA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_2284D9214(255, &qword_280DE9628, type metadata accessor for PluginSharableModel, MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_228418D44();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2284DFB08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2284DFA60(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_2284DFB4C@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t objectdestroy_62Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t static InputSignalSet.LookupKey.preferredSummaryTransaction.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for PreferredSummaryTransactionInputSignal(0);
  return sub_22855C61C();
}

uint64_t type metadata accessor for PreferredSummaryTransactionInputSignal(uint64_t a1)
{
  result = qword_27D840008;
  if (!qword_27D840008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2284DFCE0()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22855C83C();
  __swift_allocate_value_buffer(v1, qword_27D83FFC8);
  __swift_project_value_buffer(v1, qword_27D83FFC8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t static PreferredSummaryTransactionInputSignal.identityConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D83F008 != -1)
  {
    swift_once();
  }

  v2 = sub_22855C83C();
  v3 = __swift_project_value_buffer(v2, qword_27D83FFC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PreferredSummaryTransactionInputSignal.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL PreferredSummaryTransactionInputSignal.isIdle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16) == 0;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t PreferredSummaryTransactionInputSignal.__allocating_init(observer:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();

  return sub_2284E153C(a1, a2, sub_2284EEB70, 0, v4);
}

uint64_t PreferredSummaryTransactionInputSignal.__allocating_init(observer:transactionSelector:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2284E1704(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v10;
}

uint64_t PreferredSummaryTransactionInputSignal.init(observer:transactionSelector:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_2284E1608(a1, a2, v11, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v13;
}

uint64_t PreferredSummaryTransactionInputSignal.dependencyConfigurations(for:)()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2284E1F1C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228560580;
  *(v1 + 56) = sub_22855C83C();
  *(v1 + 64) = sub_2284E1A58(&qword_280DE9F08, MEMORY[0x277D11C38], MEMORY[0x277D11C30]);
  __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v1;
}

uint64_t PreferredSummaryTransactionInputSignal.dependencyDidUpdate(anchors:)(uint64_t a1)
{
  v2 = v1;
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DE9DF8);
  v4 = sub_22855CA8C();
  v5 = sub_22855D6AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    v8 = sub_22855E34C();
    v10 = sub_2283F8938(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "[%{public}s] Received anchors from dependencies", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  sub_2284E0470();
  v12 = v11;
  v13 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_protectedState);
  MEMORY[0x28223BE20](v11);
  os_unfair_lock_lock((v13 + 24));
  sub_2284E1808((v13 + 16), v15);
  os_unfair_lock_unlock((v13 + 24));
  if (LOBYTE(v15[0]) == 1)
  {
    sub_2284E0990(v12);
  }
}

void sub_2284E0470()
{
  v23 = *v0;
  sub_2284E1F1C(0, &qword_27D840028, sub_2284E1E10, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_22855C85C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_2284E1F1C(0, &qword_27D840030, type metadata accessor for SummaryTransactionInputSignal, MEMORY[0x277D11BC0]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  sub_2284E1E10(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855C84C();
  type metadata accessor for SummaryTransactionInputSignal(0);
  sub_22855C61C();
  sub_2284E1A58(qword_280DEAC68, type metadata accessor for SummaryTransactionInputSignal, &protocol conformance descriptor for SummaryTransactionInputSignal);
  sub_22855C81C();
  (*(v7 + 8))(v9, v6);
  if ((*(v12 + 48))(v3, 1, v11) == 1)
  {
    sub_2284E1F80(v3);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    __swift_project_value_buffer(v15, qword_280DE9DF8);
    v16 = sub_22855CA8C();
    v17 = sub_22855D68C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      v20 = sub_22855E34C();
      v22 = sub_2283F8938(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2283ED000, v16, v17, "[%{public}s] No transactions anchor received", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AABAD40](v19, -1, -1);
      MEMORY[0x22AABAD40](v18, -1, -1);
    }

    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_22855DB4C())
      {
        sub_22845FCB8(MEMORY[0x277D84F90]);
      }
    }
  }

  else
  {
    (*(v12 + 32))(v14, v3, v11);
    sub_22855C8EC();
    (*(v12 + 8))(v14, v11);
  }
}

double sub_2284E0914@<D0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*a1 == 1)
  {
    *a3 = 1;
  }

  else
  {
    if (*a1)
    {
      sub_228434D9C(*a1);
      *a1 = a2;
      *a3 = 0;
    }

    else
    {
      *a1 = a2;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_2284E0990(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v30 = sub_22855C85C();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284E1AE8(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DE9DF8);
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();
  v14 = os_log_type_enabled(v12, v13);
  v29[1] = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    v17 = sub_22855E34C();
    v29[0] = v2;
    v19 = sub_2283F8938(v17, v18, &v33);
    v2 = v29[0];

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%{public}s] Updating observer with preferred transaction", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AABAD40](v16, -1, -1);
    MEMORY[0x22AABAD40](v15, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector + 24);
  v21 = *(v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_transactionSelector), v20);
  v33 = a1;
  v22 = *(v21 + 8);
  sub_2284E1D3C(0);
  v24 = v23;
  v25 = sub_2284E1A58(&qword_27D840020, sub_2284E1D3C, MEMORY[0x277D83B78]);
  v26 = v22(&v33, v24, v25, v20, v21);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14HealthPlatform38PreferredSummaryTransactionInputSignal_identifier, v30);
  sub_2284E1B24();
  sub_2284E1A58(&unk_280DE9288, sub_2284E1B24, &protocol conformance descriptor for HKSharedSummaryTransaction);
  v27 = v26;
  sub_22855C9BC();
  swift_getObjectType();
  v33 = v2;
  sub_2284E1A58(&qword_27D840018, type metadata accessor for PreferredSummaryTransactionInputSignal, &protocol conformance descriptor for PreferredSummaryTransactionInputSignal);
  sub_22855C78C();

  return (*(v31 + 8))(v10, v32);
}

double sub_2284E0DD0@<D0>(unint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4 == 1)
  {
    v6 = a3;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v7 = sub_22855CABC();
    __swift_project_value_buffer(v7, qword_280DE9DF8);
    v8 = sub_22855CA8C();
    v9 = sub_22855D68C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      v12 = sub_22855E34C();
      v14 = sub_2283F8938(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2283ED000, v8, v9, "[%{public}s] Observation started multiple times", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AABAD40](v11, -1, -1);
      MEMORY[0x22AABAD40](v10, -1, -1);
    }

    v5 = 0;
    v4 = 1;
    a3 = v6;
  }

  else
  {
    v5 = v4;
    if (!v4)
    {
      *a1 = 1;
    }
  }

  *a3 = v5;
  return sub_2284E1D2C(v4);
}